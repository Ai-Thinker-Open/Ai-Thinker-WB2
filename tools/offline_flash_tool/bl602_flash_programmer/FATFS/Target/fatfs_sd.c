#define TRUE  1
#define FALSE 0
#define bool BYTE

#include "stm32f1xx_hal.h"
#include "main.h"
#include "diskio.h"
#include "fatfs_sd.h"

extern SPI_HandleTypeDef hspi1;
volatile uint8_t Timer1, Timer2; /* 10ms tick, decremented in SysTick */

static void SD_SPI_SetPrescaler(uint32_t prescaler)
{
  if (hspi1.Init.BaudRatePrescaler == prescaler) {
    return;
  }
  hspi1.Init.BaudRatePrescaler = prescaler;
  (void)HAL_SPI_Init(&hspi1);
}

static volatile DSTATUS Stat = STA_NOINIT;              /* Disk status flag */
static uint8_t CardType;                                /* Card type: 0=MMC, 1=SDC, 2=block addressing */
static uint8_t PowerFlag = 0;                           /* Power status flag */

/* SPI Chip Select */
static void SELECT(void)
{
  HAL_GPIO_WritePin(SD_CS_GPIO_Port, SD_CS_Pin, GPIO_PIN_RESET);
}

/* SPI Chip Deselect */
static void DESELECT(void)
{
  HAL_GPIO_WritePin(SD_CS_GPIO_Port, SD_CS_Pin, GPIO_PIN_SET);
}

/* SPI transmit one byte */
static void SPI_TxByte(BYTE data)
{
  while (HAL_SPI_GetState(&hspi1) != HAL_SPI_STATE_READY);
  HAL_SPI_Transmit(&hspi1, &data, 1, SPI_TIMEOUT);
}

/* SPI transfer one byte, return received data */
static uint8_t SPI_RxByte(void)
{
  uint8_t dummy, data;
  dummy = 0xFF;
  data = 0;
  
  while ((HAL_SPI_GetState(&hspi1) != HAL_SPI_STATE_READY));
  HAL_SPI_TransmitReceive(&hspi1, &dummy, &data, 1, SPI_TIMEOUT);
  
  return data;
}

/* SPI receive one byte into *buff */
static void SPI_RxBytePtr(uint8_t *buff) 
{
  *buff = SPI_RxByte();
}

/* Wait until the card is ready (0xFF) */
static uint8_t SD_ReadyWait(void) 
{
  uint8_t res;
  
  /* 500 ms timeout */
  Timer2 = 50;
  SPI_RxByte();
  
  do
  {
    /* Clock until 0xFF is received */
    res = SPI_RxByte();
  } while ((res != 0xFF) && Timer2);
  
  return res;
}

/* Power on */
static void SD_PowerOn(void) 
{
  uint8_t cmd_arg[6];
  uint32_t Count = 0x1FFF;
  
  /* Dummy clocks while deselected to idle the bus */
  DESELECT();
  
  for(int i = 0; i < 10; i++)
  {
    SPI_TxByte(0xFF);
  }
  
  /* SPI Chips Select */
  SELECT();
  
  /* Enter GO_IDLE_STATE */
  cmd_arg[0] = (CMD0 | 0x40);
  cmd_arg[1] = 0;
  cmd_arg[2] = 0;
  cmd_arg[3] = 0;
  cmd_arg[4] = 0;
  cmd_arg[5] = 0x95;
  
  /* Send command bytes */
  for (int i = 0; i < 6; i++)
  {
    SPI_TxByte(cmd_arg[i]);
  }
  
  /* Wait for response */
  while ((SPI_RxByte() != 0x01) && Count)
  {
    Count--;
  }
  
  DESELECT();
  SPI_TxByte(0XFF);
  
  PowerFlag = 1;
}

/* Power off */
static void SD_PowerOff(void) 
{
  PowerFlag = 0;
}

/* Return power flag */
static uint8_t SD_CheckPower(void) 
{
  /*  0=off, 1=on */
  return PowerFlag;
}

/* Receive a data block */
static bool SD_RxDataBlock(BYTE *buff, UINT btr) 
{
  uint8_t token;
  
  /* 100 ms timeout */
  Timer1 = 10;
  
  /* Wait for token */
  do 
  {    
    token = SPI_RxByte();
  } while((token == 0xFF) && Timer1);
  
  /* Reject any token other than 0xFE */
  if(token != 0xFE)
    return FALSE;
  
  /* Read payload into buffer */
  while(btr--) 
  {     
    SPI_RxBytePtr(buff++);
  }
  
  SPI_RxByte(); /* Discard CRC */
  SPI_RxByte();
  
  return TRUE;
}

/* Transmit a data block */
#if _READONLY == 0
static bool SD_TxDataBlock(const BYTE *buff, BYTE token)
{
  uint8_t resp = 0xFF, i = 0;
  uint16_t wc;
    
  /* Wait until the card is ready */
  if (SD_ReadyWait() != 0xFF)
    return FALSE;
  
  /* Send token */
  SPI_TxByte(token);      
  
  /* Data token (not STOP) */
  if (token != 0xFD) 
  { 
    wc = 512;
    
    /* Send 512-byte payload */
    while(wc--) 
    { 
      SPI_TxByte(*buff++);
    }
    
    SPI_RxByte();       /* Discard CRC */
    SPI_RxByte();
    
    /* Read data response */
    while (i <= 64) 
    {			
      resp = SPI_RxByte();
      
      /* Accept Data Accepted (0x05) */
      if ((resp & 0x1F) == 0x05) 
        break;
      
      i++;
    }
    
    /* Drain SPI until busy clears */
    Timer1 = 20; /* 200 ms timeout */
    while (SPI_RxByte() == 0 && Timer1);
  }
  
  if ((resp & 0x1F) == 0x05)
    return TRUE;
  else
    return FALSE;
}
#endif /* _READONLY */

/* Send a command packet */
static BYTE SD_SendCmd(BYTE cmd, DWORD arg) 
{
  uint8_t crc, res;
  
  /* Wait until the card is ready */
  if (SD_ReadyWait() != 0xFF)
    return 0xFF;
  
  /* Command index and argument */
  SPI_TxByte(cmd); 			/* Command */
  SPI_TxByte((BYTE) (arg >> 24)); 	/* Argument[31..24] */
  SPI_TxByte((BYTE) (arg >> 16)); 	/* Argument[23..16] */
  SPI_TxByte((BYTE) (arg >> 8)); 	/* Argument[15..8] */
  SPI_TxByte((BYTE) arg); 		/* Argument[7..0] */
  
  /* CRC (only CMD0/CMD8 require a valid CRC) */
  crc = 0;  
  if (cmd == CMD0)
    crc = 0x95; /* CRC for CMD0(0) */
  
  if (cmd == CMD8)
    crc = 0x87; /* CRC for CMD8(0x1AA) */
  
  /* Send CRC */
  SPI_TxByte(crc);
  
  /* CMD12: discard stuff byte before the response */
  if (cmd == CMD12)
    SPI_RxByte();
  
  /* Response arrives within 10 clocks */
  uint8_t n = 10; 
  do
  {
    res = SPI_RxByte();
  } while ((res & 0x80) && --n);
  
  return res;
}

/*-----------------------------------------------------------------------
  FatFs disk I/O entry points (called from user_diskio.c).
-----------------------------------------------------------------------*/

/* Initialize the SD card */
DSTATUS SD_disk_initialize(BYTE drv) 
{
  uint8_t n, type, ocr[4];
  
  /* Single drive only */
  if(drv)
    return STA_NOINIT;  
  
  /* No card */
  if(Stat & STA_NODISK)
    return Stat;        
  
  /* Init clock must be <= 400 kHz */
  SD_SPI_SetPrescaler(SPI_BAUDRATEPRESCALER_256);

  /* Power on */
  SD_PowerOn();         
  
  /* Select the card */
  SELECT();             
  
  /* Detect card type */
  type = 0;
  
  /* Enter idle */
  if (SD_SendCmd(CMD0, 0) == 1) 
  { 
    /* 1 s timeout */
    Timer1 = 100;
    
    /* Check interface condition (CMD8) */
    if (SD_SendCmd(CMD8, 0x1AA) == 1) 
    { 
      /* SDC Ver2+ */
      for (n = 0; n < 4; n++)
      {
        ocr[n] = SPI_RxByte();
      }
      
      if (ocr[2] == 0x01 && ocr[3] == 0xAA) 
      { 
        /* Voltage 2.7-3.6 V accepted */
        do {
          if (SD_SendCmd(CMD55, 0) <= 1 && SD_SendCmd(CMD41, 1UL << 30) == 0)
            break; /* ACMD41 with HCS bit */
        } while (Timer1);
        
        if (Timer1 && SD_SendCmd(CMD58, 0) == 0) 
        { 
          /* Check CCS bit */
          for (n = 0; n < 4; n++)
          {
            ocr[n] = SPI_RxByte();
          }
          
          type = (ocr[0] & 0x40) ? 6 : 2;
        }
      }
    } 
    else 
    { 
      /* SDC Ver1 or MMC */
      type = (SD_SendCmd(CMD55, 0) <= 1 && SD_SendCmd(CMD41, 0) <= 1) ? 2 : 1; /* SDC : MMC */
      
      do {
        if (type == 2) 
        {
          if (SD_SendCmd(CMD55, 0) <= 1 && SD_SendCmd(CMD41, 0) == 0)
            break; /* ACMD41 */
        } 
        else 
        {
          if (SD_SendCmd(CMD1, 0) == 0)
            break; /* CMD1 */
        }
      } while (Timer1);
      
      if (!Timer1 || SD_SendCmd(CMD16, 512) != 0) 
      {
        /* SET_BLOCKLEN failed */
        type = 0;
      }
    }
  }
  
  CardType = type;
  
  DESELECT();
  
  SPI_RxByte(); /* Release DO */
  
  if (type) 
  {
    /* Clear STA_NOINIT */
    Stat &= ~STA_NOINIT;
    /* After init: ~9 MHz at 72 MHz SYSCLK (UART dump is the bottleneck). */
    SD_SPI_SetPrescaler(SPI_BAUDRATEPRESCALER_8);
  }
  else
  {
    /* Initialization failed */
    SD_PowerOff();
  }
  
  return Stat;
}

/* Return disk status */
DSTATUS SD_disk_status(BYTE drv) 
{
  if (drv)
    return STA_NOINIT; 
  
  return Stat;
}

/* Read sectors */
DRESULT SD_disk_read(BYTE pdrv, BYTE* buff, DWORD sector, UINT count) 
{
  if (pdrv || !count)
    return RES_PARERR;
  
  if (Stat & STA_NOINIT)
    return RES_NOTRDY;
  
  if (!(CardType & 4))
    sector *= 512;      /* Byte addressing */
  
  SELECT();
  
  if (count == 1) 
  { 
    /* Single-block read */
    if ((SD_SendCmd(CMD17, sector) == 0) && SD_RxDataBlock(buff, 512))
      count = 0;
  } 
  else 
  { 
    /* Multi-block read */
    if (SD_SendCmd(CMD18, sector) == 0) 
    {       
      do {
        if (!SD_RxDataBlock(buff, 512))
          break;
        
        buff += 512;
      } while (--count);
      
      /* STOP_TRANSMISSION after the last block */
      SD_SendCmd(CMD12, 0); 
    }
  }
  
  DESELECT();
  SPI_RxByte(); /* Release DO */
  
  return count ? RES_ERROR : RES_OK;
}

/* Write sectors */
#if _READONLY == 0
DRESULT SD_disk_write(BYTE pdrv, const BYTE* buff, DWORD sector, UINT count) 
{
  if (pdrv || !count)
    return RES_PARERR;
  
  if (Stat & STA_NOINIT)
    return RES_NOTRDY;
  
  if (Stat & STA_PROTECT)
    return RES_WRPRT;
  
  if (!(CardType & 4))
    sector *= 512; /* Byte addressing */
  
  SELECT();
  
  if (count == 1) 
  { 
    /* Single-block write */
    if ((SD_SendCmd(CMD24, sector) == 0) && SD_TxDataBlock(buff, 0xFE))
      count = 0;
  } 
  else 
  { 
    /* Multi-block write */
    if (CardType & 2) 
    {
      SD_SendCmd(CMD55, 0);
      SD_SendCmd(CMD23, count); /* ACMD23 */
    }
    
    if (SD_SendCmd(CMD25, sector) == 0) 
    {       
      do {
        if(!SD_TxDataBlock(buff, 0xFC))
          break;
        
        buff += 512;
      } while (--count);
      
      if(!SD_TxDataBlock(0, 0xFD))
      {        
        count = 1;
      }
    }
  }
  
  DESELECT();
  SPI_RxByte();
  
  return count ? RES_ERROR : RES_OK;
}
#endif /* _READONLY */

/* ioctl */
DRESULT SD_disk_ioctl(BYTE drv, BYTE ctrl, void *buff) 
{
  DRESULT res;
  BYTE n, csd[16], *ptr = buff;
  DWORD csize;
  
  if (drv)
    return RES_PARERR;
  
  res = RES_ERROR;
  
  if (ctrl == CTRL_POWER) 
  {
    switch (*ptr) 
    {
    case 0:
      if (SD_CheckPower())
        SD_PowerOff();          /* Power Off */
      res = RES_OK;
      break;
    case 1:
      SD_PowerOn();             /* Power On */
      res = RES_OK;
      break;
    case 2:
      *(ptr + 1) = (BYTE) SD_CheckPower();
      res = RES_OK;             /* Power Check */
      break;
    default:
      res = RES_PARERR;
    }
  } 
  else 
  {
    if (Stat & STA_NOINIT)
      return RES_NOTRDY;
    
    SELECT();
    
    switch (ctrl) 
    {
    case GET_SECTOR_COUNT: 
      /* Number of sectors (DWORD) */
      if ((SD_SendCmd(CMD9, 0) == 0) && SD_RxDataBlock(csd, 16)) 
      {
        if ((csd[0] >> 6) == 1) 
        { 
          /* SDC v2: parse C_SIZE */
          csize = ((DWORD)(csd[7] & 0x3F) << 16) | ((DWORD)csd[8] << 8) | csd[9];
          *(DWORD*) buff = (csize + 1) << 10;
        } 
        else 
        { 
          /* MMC or SDC ver 1.XX */
          n = (csd[5] & 15) + ((csd[10] & 128) >> 7) + ((csd[9] & 3) << 1) + 2;
          csize = (csd[8] >> 6) + ((WORD) csd[7] << 2) + ((WORD) (csd[6] & 3) << 10) + 1;
          *(DWORD*) buff = (DWORD) csize << (n - 9);
        }
        
        res = RES_OK;
      }
      break;
      
    case GET_SECTOR_SIZE: 
      /* Sector size (WORD) */
      *(WORD*) buff = 512;
      res = RES_OK;
      break;

    case GET_BLOCK_SIZE:
      *(DWORD *)buff = 1;
      res = RES_OK;
      break;
      
    case CTRL_SYNC: 
      /* Flush write */
      if (SD_ReadyWait() == 0xFF)
        res = RES_OK;
      break;
      
    case MMC_GET_CSD: 
      /* Read CSD (16 bytes) */
      if (SD_SendCmd(CMD9, 0) == 0 && SD_RxDataBlock(ptr, 16))
        res = RES_OK;
      break;
      
    case MMC_GET_CID: 
      /* Read CID (16 bytes) */
      if (SD_SendCmd(CMD10, 0) == 0 && SD_RxDataBlock(ptr, 16))
        res = RES_OK;
      break;
      
    case MMC_GET_OCR: 
      /* Read OCR (4 bytes) */
      if (SD_SendCmd(CMD58, 0) == 0) 
      {         
        for (n = 0; n < 4; n++)
        {
          *ptr++ = SPI_RxByte();
        }
        
        res = RES_OK;
      }
      break;     
      
    default:
      res = RES_PARERR;
    }
    
    DESELECT();
    SPI_RxByte();
  }
  
  return res;
}
