/**
  ******************************************************************************
  * @file    bl602_sf_cfg_ext.c
  * @version V1.0
  * @date
  * @brief   This file is the standard driver c file
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2020 Bouffalo Lab</center></h2>
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of Bouffalo Lab nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

#include "bl602_glb.h"
#include "bl602_sf_cfg.h"
#include "bl602_sf_cfg_ext.h"
#include "bl602_xip_sflash.h"
#include "bl602_romdriver.h"

/** @addtogroup  BL602_Peripheral_Driver
 *  @{
 */

/** @addtogroup  SF_CFG_EXT
 *  @{
 */

/** @defgroup  SF_CFG_EXT_Private_Macros
 *  @{
 */
#define BFLB_FLASH_CFG_MAGIC                    "FCFG"

/*@} end of group SF_CFG_EXT_Private_Macros */

/** @defgroup  SF_CFG_EXT_Private_Types
 *  @{
 */
typedef struct {
    uint32_t jedecID;
    char *name;
    const SPI_Flash_Cfg_Type *cfg;
}Flash_Info_t;

/*@} end of group SF_CFG_EXT_Private_Types */

/** @defgroup  SF_CFG_EXT_Private_Variables
 *  @{
 */
static const ATTR_TCM_CONST_SECTION SPI_Flash_Cfg_Type flashCfg_FM_25Q08={
        .resetCreadCmd=0xff,
        .resetCreadCmdSize=3,
        .mid=0xc8,

        .deBurstWrapCmd=0x77,
        .deBurstWrapCmdDmyClk=0x3,
        .deBurstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .deBurstWrapData=0xF0,

        /*reg*/
        .writeEnableCmd=0x06,
        .wrEnableIndex=0x00,
        .wrEnableBit=0x01,
        .wrEnableReadRegLen=0x01,

        .qeIndex=1,
        .qeBit=0x01,
        .qeWriteRegLen=0x02,
        .qeReadRegLen=0x1,

        .busyIndex=0,
        .busyBit=0x00,
        .busyReadRegLen=0x1,
        .releasePowerDown=0xab,

        .readRegCmd[0]=0x05,
        .readRegCmd[1]=0x35,
        .writeRegCmd[0]=0x01,
        .writeRegCmd[1]=0x01,

        .fastReadQioCmd=0xeb,
        .frQioDmyClk=16/8,
        .cReadSupport=1,
        .cReadMode=0xa0,

        .burstWrapCmd=0x77,
        .burstWrapCmdDmyClk=0x3,
        .burstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .burstWrapData=0x40,
         /*erase*/
        .chipEraseCmd=0xc7,
        .sectorEraseCmd=0x20,
        .blk32EraseCmd=0x52,
        .blk64EraseCmd=0xd8,
        /*write*/
        .pageProgramCmd=0x02,
        .qpageProgramCmd=0x32,
        .qppAddrMode=SF_CTRL_ADDR_1_LINE,

        .ioMode=SF_CTRL_QIO_MODE,
        .clkDelay=1,
        .clkInvert=0x01,

        .resetEnCmd=0x66,
        .resetCmd=0x99,
        .cRExit=0xff,
        .wrEnableWriteRegLen=0x00,

        /*id*/
        .jedecIdCmd=0x9f,
        .jedecIdCmdDmyClk=0,
        .qpiJedecIdCmd=0x9f,
        .qpiJedecIdCmdDmyClk=0x00,
        .sectorSize=4,
        .pageSize=256,

        /*read*/
        .fastReadCmd=0x0b,
        .frDmyClk=8/8,
        .qpiFastReadCmd =0x0b,
        .qpiFrDmyClk=8/8,
        .fastReadDoCmd=0x3b,
        .frDoDmyClk=8/8,
        .fastReadDioCmd=0xbb,
        .frDioDmyClk=0,
        .fastReadQoCmd=0x6b,
        .frQoDmyClk=8/8,

        .qpiFastReadQioCmd=0xeb,
        .qpiFrQioDmyClk=16/8,
        .qpiPageProgramCmd=0x02,
        .writeVregEnableCmd=0x50,

        /* qpi mode */
        .enterQpi=0x38,
        .exitQpi=0xff,

         /*AC*/
        .timeEsector=300,
        .timeE32k=1200,
        .timeE64k=1200,
        .timePagePgm=5,
        .timeCe=33000,
        .pdDelay=20,
        .qeData=0,
};

static const ATTR_TCM_CONST_SECTION SPI_Flash_Cfg_Type flashCfg_Gd_Md_40D={
        .resetCreadCmd=0xff,
        .resetCreadCmdSize=3,
        .mid=0x51,

        .deBurstWrapCmd=0x77,
        .deBurstWrapCmdDmyClk=0x3,
        .deBurstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .deBurstWrapData=0xF0,

        /*reg*/
        .writeEnableCmd=0x06,
        .wrEnableIndex=0x00,
        .wrEnableBit=0x01,
        .wrEnableReadRegLen=0x01,

        .qeIndex=1,
        .qeBit=0x01,
        .qeWriteRegLen=0x02,
        .qeReadRegLen=0x1,

        .busyIndex=0,
        .busyBit=0x00,
        .busyReadRegLen=0x1,
        .releasePowerDown=0xab,

        .readRegCmd[0]=0x05,
        .readRegCmd[1]=0x35,
        .writeRegCmd[0]=0x01,
        .writeRegCmd[1]=0x01,

        .fastReadQioCmd=0xeb,
        .frQioDmyClk=16/8,
        .cReadSupport=0,
        .cReadMode=0xA0,

        .burstWrapCmd=0x77,
        .burstWrapCmdDmyClk=0x3,
        .burstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .burstWrapData=0x40,
         /*erase*/
        .chipEraseCmd=0xc7,
        .sectorEraseCmd=0x20,
        .blk32EraseCmd=0x52,
        .blk64EraseCmd=0xd8,
        /*write*/
        .pageProgramCmd=0x02,
        .qpageProgramCmd=0x32,
        .qppAddrMode=SF_CTRL_ADDR_1_LINE,

        .ioMode=0x11,
        .clkDelay=1,
        .clkInvert=0x01,

        .resetEnCmd=0x66,
        .resetCmd=0x99,
        .cRExit=0xff,
        .wrEnableWriteRegLen=0x00,

        /*id*/
        .jedecIdCmd=0x9f,
        .jedecIdCmdDmyClk=0,
        .qpiJedecIdCmd=0x9f,
        .qpiJedecIdCmdDmyClk=0x00,
        .sectorSize=4,
        .pageSize=256,

        /*read*/
        .fastReadCmd=0x0b,
        .frDmyClk=8/8,
        .qpiFastReadCmd =0x0b,
        .qpiFrDmyClk=8/8,
        .fastReadDoCmd=0x3b,
        .frDoDmyClk=8/8,
        .fastReadDioCmd=0xbb,
        .frDioDmyClk=0,
        .fastReadQoCmd=0x6b,
        .frQoDmyClk=8/8,

        .qpiFastReadQioCmd=0xeb,
        .qpiFrQioDmyClk=16/8,
        .qpiPageProgramCmd=0x02,
        .writeVregEnableCmd=0x50,

        /* qpi mode */
        .enterQpi=0x38,
        .exitQpi=0xff,

         /*AC*/
        .timeEsector=300,
        .timeE32k=1200,
        .timeE64k=1200,
        .timePagePgm=5,
        .timeCe=33000,
        .pdDelay=20,
        .qeData=0,
};

static const ATTR_TCM_CONST_SECTION SPI_Flash_Cfg_Type flashCfg_XM25QH16={
        .resetCreadCmd=0xff,
        .resetCreadCmdSize=3,
        .mid=0x20,

        .deBurstWrapCmd=0x77,
        .deBurstWrapCmdDmyClk=0x3,
        .deBurstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .deBurstWrapData=0xF0,

        /*reg*/
        .writeEnableCmd=0x06,
        .wrEnableIndex=0x00,
        .wrEnableBit=0x01,
        .wrEnableReadRegLen=0x01,

        .qeIndex=1,
        .qeBit=0x01,
        .qeWriteRegLen=0x01,
        .qeReadRegLen=0x1,

        .busyIndex=0,
        .busyBit=0x00,
        .busyReadRegLen=0x1,
        .releasePowerDown=0xab,

        .readRegCmd[0]=0x05,
        .readRegCmd[1]=0x35,
        .writeRegCmd[0]=0x01,
        .writeRegCmd[1]=0x31,

        .fastReadQioCmd=0xeb,
        .frQioDmyClk=16/8,
        .cReadSupport=1,
        .cReadMode=0x20,

        .burstWrapCmd=0x77,
        .burstWrapCmdDmyClk=0x3,
        .burstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .burstWrapData=0x40,
         /*erase*/
        .chipEraseCmd=0xc7,
        .sectorEraseCmd=0x20,
        .blk32EraseCmd=0x52,
        .blk64EraseCmd=0xd8,
        /*write*/
        .pageProgramCmd=0x02,
        .qpageProgramCmd=0x32,
        .qppAddrMode=SF_CTRL_ADDR_1_LINE,

        .ioMode=SF_CTRL_QIO_MODE,
        .clkDelay=1,
        .clkInvert=0x01,

        .resetEnCmd=0x66,
        .resetCmd=0x99,
        .cRExit=0xff,
        .wrEnableWriteRegLen=0x00,

        /*id*/
        .jedecIdCmd=0x9f,
        .jedecIdCmdDmyClk=0,
        .qpiJedecIdCmd=0x9f,
        .qpiJedecIdCmdDmyClk=0x00,
        .sectorSize=4,
        .pageSize=256,

        /*read*/
        .fastReadCmd=0x0b,
        .frDmyClk=8/8,
        .qpiFastReadCmd =0x0b,
        .qpiFrDmyClk=8/8,
        .fastReadDoCmd=0x3b,
        .frDoDmyClk=8/8,
        .fastReadDioCmd=0xbb,
        .frDioDmyClk=0,
        .fastReadQoCmd=0x6b,
        .frQoDmyClk=8/8,

        .qpiFastReadQioCmd=0xeb,
        .qpiFrQioDmyClk=16/8,
        .qpiPageProgramCmd=0x02,
        .writeVregEnableCmd=0x50,

        /* qpi mode */
        .enterQpi=0x38,
        .exitQpi=0xff,

         /*AC*/
        .timeEsector=400,
        .timeE32k=1600,
        .timeE64k=2000,
        .timePagePgm=5,
        .timeCe=33000,
        .pdDelay=3,
        .qeData=0,
};

static const ATTR_TCM_CONST_SECTION SPI_Flash_Cfg_Type flashCfg_MX_KH25={
        .resetCreadCmd=0xff,
        .resetCreadCmdSize=3,
        .mid=0xc2,

        .deBurstWrapCmd=0x77,
        .deBurstWrapCmdDmyClk=0x3,
        .deBurstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .deBurstWrapData=0xF0,

        /*reg*/
        .writeEnableCmd=0x06,
        .wrEnableIndex=0x00,
        .wrEnableBit=0x01,
        .wrEnableReadRegLen=0x01,

        .qeIndex=1,
        .qeBit=0x01,
        .qeWriteRegLen=0x01,
        .qeReadRegLen=0x1,

        .busyIndex=0,
        .busyBit=0x00,
        .busyReadRegLen=0x1,
        .releasePowerDown=0xab,

        .readRegCmd[0]=0x05,
        .readRegCmd[1]=0x00,
        .writeRegCmd[0]=0x01,
        .writeRegCmd[1]=0x00,

        .fastReadQioCmd=0xeb,
        .frQioDmyClk=16/8,
        .cReadSupport=0,
        .cReadMode=0x20,

        .burstWrapCmd=0x77,
        .burstWrapCmdDmyClk=0x3,
        .burstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .burstWrapData=0x40,
         /*erase*/
        .chipEraseCmd=0xc7,
        .sectorEraseCmd=0x20,
        .blk32EraseCmd=0x52,
        .blk64EraseCmd=0xd8,
        /*write*/
        .pageProgramCmd=0x02,
        .qpageProgramCmd=0x32,
        .qppAddrMode=SF_CTRL_ADDR_1_LINE,

        .ioMode=0x11,
        .clkDelay=1,
        .clkInvert=0x01,

        .resetEnCmd=0x66,
        .resetCmd=0x99,
        .cRExit=0xff,
        .wrEnableWriteRegLen=0x00,

        /*id*/
        .jedecIdCmd=0x9f,
        .jedecIdCmdDmyClk=0,
        .qpiJedecIdCmd=0x9f,
        .qpiJedecIdCmdDmyClk=0x00,
        .sectorSize=4,
        .pageSize=256,

        /*read*/
        .fastReadCmd=0x0b,
        .frDmyClk=8/8,
        .qpiFastReadCmd =0x0b,
        .qpiFrDmyClk=8/8,
        .fastReadDoCmd=0x3b,
        .frDoDmyClk=8/8,
        .fastReadDioCmd=0xbb,
        .frDioDmyClk=0,
        .fastReadQoCmd=0x6b,
        .frQoDmyClk=8/8,

        .qpiFastReadQioCmd=0xeb,
        .qpiFrQioDmyClk=16/8,
        .qpiPageProgramCmd=0x02,
        .writeVregEnableCmd=0x50,

        /* qpi mode */
        .enterQpi=0x38,
        .exitQpi=0xff,

         /*AC*/
        .timeEsector=300,
        .timeE32k=1200,
        .timeE64k=1200,
        .timePagePgm=5,
        .timeCe=33000,
        .pdDelay=20,
        .qeData=0,
};

static const ATTR_TCM_CONST_SECTION SPI_Flash_Cfg_Type flashCfg_ZD_25Q16B={
        .resetCreadCmd=0xff,
        .resetCreadCmdSize=3,
        .mid=0xba,

        .deBurstWrapCmd=0x77,
        .deBurstWrapCmdDmyClk=0x3,
        .deBurstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .deBurstWrapData=0xF0,

        /*reg*/
        .writeEnableCmd=0x06,
        .wrEnableIndex=0x00,
        .wrEnableBit=0x01,
        .wrEnableReadRegLen=0x01,

        .qeIndex=1,
        .qeBit=0x01,
        .qeWriteRegLen=0x02,
        .qeReadRegLen=0x1,

        .busyIndex=0,
        .busyBit=0x00,
        .busyReadRegLen=0x1,
        .releasePowerDown=0xab,

        .readRegCmd[0]=0x05,
        .readRegCmd[1]=0x35,
        .writeRegCmd[0]=0x01,
        .writeRegCmd[1]=0x01,

        .fastReadQioCmd=0xeb,
        .frQioDmyClk=16/8,
        .cReadSupport=1,
        .cReadMode=0xa0,

        .burstWrapCmd=0x77,
        .burstWrapCmdDmyClk=0x3,
        .burstWrapDataMode=SF_CTRL_DATA_4_LINES,
        .burstWrapData=0x40,
         /*erase*/
        .chipEraseCmd=0xc7,
        .sectorEraseCmd=0x20,
        .blk32EraseCmd=0x52,
        .blk64EraseCmd=0xd8,
        /*write*/
        .pageProgramCmd=0x02,
        .qpageProgramCmd=0x32,
        .qppAddrMode=SF_CTRL_ADDR_1_LINE,

        .ioMode=0x14,
        .clkDelay=1,
        .clkInvert=0x01,

        .resetEnCmd=0x66,
        .resetCmd=0x99,
        .cRExit=0xff,
        .wrEnableWriteRegLen=0x00,

        /*id*/
        .jedecIdCmd=0x9f,
        .jedecIdCmdDmyClk=0,
        .qpiJedecIdCmd=0x9f,
        .qpiJedecIdCmdDmyClk=0x00,
        .sectorSize=4,
        .pageSize=256,

        /*read*/
        .fastReadCmd=0x0b,
        .frDmyClk=8/8,
        .qpiFastReadCmd =0x0b,
        .qpiFrDmyClk=8/8,
        .fastReadDoCmd=0x3b,
        .frDoDmyClk=8/8,
        .fastReadDioCmd=0xbb,
        .frDioDmyClk=0,
        .fastReadQoCmd=0x6b,
        .frQoDmyClk=8/8,

        .qpiFastReadQioCmd=0xeb,
        .qpiFrQioDmyClk=16/8,
        .qpiPageProgramCmd=0x02,
        .writeVregEnableCmd=0x50,

        /* qpi mode */
        .enterQpi=0x38,
        .exitQpi=0xff,

         /*AC*/
        .timeEsector=300,
        .timeE32k=1200,
        .timeE64k=1200,
        .timePagePgm=5,
        .timeCe=33000,
        .pdDelay=20,
        .qeData=0,
};

static const ATTR_TCM_CONST_SECTION Flash_Info_t flashInfos[]={
    {
        .jedecID=0x1440A1,
        //.name="FM_25Q08",
        .cfg=&flashCfg_FM_25Q08,
    },
    {
        .jedecID=0x134051,
        //.name="GD_MD04D_04_33",
        .cfg=&flashCfg_Gd_Md_40D,
    },
    {
        .jedecID=0x144020,
        //.name="XM_25QH80_80_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x154020,
        //.name="XM_25QH16_16_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x164020,
        //.name="XM_25QH32_32_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x174020,
        //.name="XM_25QH64_64_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x1320C2,
        //.name="MX_KH40_04_33",
        .cfg=&flashCfg_MX_KH25,
    },
    {
        .jedecID=0x1420C2,
        //.name="MX_KH80_08_33",
        .cfg=&flashCfg_MX_KH25,
    },
    {
        .jedecID=0x1520C2,
        //.name="MX_KH16_16_33",
        .cfg=&flashCfg_MX_KH25,
    },
    {
        .jedecID=0x13325E,
        //.name="ZB_D40B_80_33",
        .cfg=&flashCfg_MX_KH25,
    },
    {
        .jedecID=0x14325E,
        //.name="ZB_D80B_80_33",
        .cfg=&flashCfg_MX_KH25,
    },
    {
        .jedecID=0x15405E,
        //.name="ZB_25Q16B_15_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x16405E,
        //.name="ZB_25Q32B_16_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x17405E,
        //.name="ZB_25VQ64_64_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x15605E,
        //.name="ZB_25VQ16_16_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x15345E,
        //.name="ZB_25WQ16_16_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x1560EB,
        //.name="TH_25Q16",
        .cfg=&flashCfg_FM_25Q08,
    },
    {
        .jedecID=0x1740C8,
        //.name="GD_25Q64E_64_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x1840C8,
        //.name="GD_25Q127C_128_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x176085,
        //.name="Puya_P25Q64H_64_33",
        .cfg=&flashCfg_XM25QH16,
    },
    {
        .jedecID=0x17400B,
        //.name="XT_25F64B",
        .cfg=&flashCfg_FM_25Q08,
    },
    {
        .jedecID=0x1560BA,
        //.name="ZD_25Q16B",
        .cfg=&flashCfg_ZD_25Q16B,
    },
    {
        .jedecID=0x1460CD,
        //.name="TH_25Q80HB",
        .cfg=&flashCfg_FM_25Q08,
    },
    {
        .jedecID=0x1870EF,
        //.name="W25Q128JV_128_33",
        .cfg=&flashCfg_XM25QH16,
    },
};

/*@} end of group SF_CFG_EXT_Private_Variables */

/** @defgroup  SF_CFG_EXT_Global_Variables
 *  @{
 */

/*@} end of group SF_CFG_EXT_Global_Variables */

/** @defgroup  SF_CFG_EXT_Private_Fun_Declaration
 *  @{
 */

/*@} end of group SF_CFG_EXT_Private_Fun_Declaration */

/** @defgroup  SF_CFG_EXT_Public_Functions
 *  @{
 */

/****************************************************************************//**
 * @brief  Get flash config according to flash ID
 *
 * @param  flashID: Flash ID
 * @param  pFlashCfg: Flash config pointer
 *
 * @return SUCCESS or ERROR
 *
*******************************************************************************/
BL_Err_Type ATTR_TCM_SECTION SF_Cfg_Get_Flash_Cfg_Need_Lock_Ext(uint32_t flashID,SPI_Flash_Cfg_Type * pFlashCfg)
{
    uint32_t i;
    uint8_t buf[sizeof(SPI_Flash_Cfg_Type)+8];
    uint32_t crc,*pCrc;
    char flashCfgMagic[] = "FCFG";

    if(flashID==0){
        XIP_SFlash_Read_Via_Cache_Need_Lock(8+BL602_FLASH_XIP_BASE,buf,sizeof(SPI_Flash_Cfg_Type)+8);
        if(BL602_MemCmp(buf,flashCfgMagic,4)==0){
            crc=BFLB_Soft_CRC32((uint8_t *)buf+4,sizeof(SPI_Flash_Cfg_Type));
            pCrc=(uint32_t *)(buf+4+sizeof(SPI_Flash_Cfg_Type));
            if(*pCrc==crc){
                BL602_MemCpy_Fast(pFlashCfg,(uint8_t *)buf+4,sizeof(SPI_Flash_Cfg_Type));
                return SUCCESS ;
            }
        }
    }else{
        if(SF_Cfg_Get_Flash_Cfg_Need_Lock(flashID, pFlashCfg) == SUCCESS){
            return SUCCESS;
        }
        for(i=0;i<sizeof(flashInfos)/sizeof(flashInfos[0]);i++){
            if(flashInfos[i].jedecID==flashID){
                BL602_MemCpy_Fast(pFlashCfg,flashInfos[i].cfg,sizeof(SPI_Flash_Cfg_Type));
                return SUCCESS;
            }
        }
    }

    return ERROR;
}

/****************************************************************************//**
 * @brief  Identify one flash
 *
 * @param  callFromFlash: code run at flash or ram
 * @param  autoScan: Auto scan all GPIO pin
 * @param  flashPinCfg: Specify flash GPIO config, not auto scan
 * @param  restoreDefault: Wether restore default flash GPIO config
 * @param  pFlashCfg: Flash config pointer
 *
 * @return Flash ID
 *
*******************************************************************************/
uint32_t ATTR_TCM_SECTION SF_Cfg_Flash_Identify_Ext(uint8_t callFromFlash,
    uint32_t autoScan,uint32_t flashPinCfg,uint8_t restoreDefault,SPI_Flash_Cfg_Type * pFlashCfg)
{
    uint32_t jdecId=0;
    uint32_t i=0;
    uint32_t ret=0;

    ret=SF_Cfg_Flash_Identify(callFromFlash,autoScan,flashPinCfg,restoreDefault,pFlashCfg);
    if(callFromFlash){
        SFlash_Set_IDbus_Cfg(pFlashCfg,pFlashCfg->ioMode&0xf,1,0,32);
    }
    if((ret&BFLB_FLASH_ID_VALID_FLAG)!=0){
        return ret;
    }

    jdecId=(ret&0xffffff);
    for(i=0;i<sizeof(flashInfos)/sizeof(flashInfos[0]);i++){
        if(flashInfos[i].jedecID==jdecId){
            BL602_MemCpy_Fast(pFlashCfg,flashInfos[i].cfg,sizeof(SPI_Flash_Cfg_Type));
            break;
        }
    }
    if(i==sizeof(flashInfos)/sizeof(flashInfos[0])){
        return jdecId;
    }else{
        return (jdecId|BFLB_FLASH_ID_VALID_FLAG);
    }
}

/*@} end of group SF_CFG_EXT_Public_Functions */

/*@} end of group SF_CFG_EXT */

/*@} end of group BL602_Peripheral_Driver */
