
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <bl602_hbn.h>
#include <bl602_glb.h>
#include <bl_hbn.h>
#include <bl_gpio.h>
#include <bl_flash.h>
#include <utils_log.h>
#include <blog.h>

int bl_hbn_enter(hbn_type_t *hbn, uint32_t *time)
{
#if 0
    SPI_Flash_Cfg_Type Gd_Q80E_Q16E = {
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

            .ioMode=SF_CTRL_QIO_MODE,
            .clkDelay=1,
            .clkInvert=0x3f,

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
            .timeCe=20*1000,
            .pdDelay=20,
            .qeData=0,
    };
#endif
    HBN_APP_CFG_Type cfg = {
        .useXtal32k =0,                                        /*!< Wheather use xtal 32K as 32K clock source,otherwise use rc32k */
        .sleepTime =0,                                         /*!< HBN sleep time */
        .gpioWakeupSrc=HBN_WAKEUP_GPIO_NONE,                   /*!< GPIO Wakeup source */
        .gpioTrigType=HBN_GPIO_INT_TRIGGER_ASYNC_FALLING_EDGE, /*!< GPIO Triger type */
        .flashCfg= NULL,                                      /*!< Flash config pointer, used when power down flash */
        .hbnLevel=HBN_LEVEL_0,                                /*!< HBN level */
        .ldoLevel=HBN_LDO_LEVEL_1P10V,                        /*!< LDO level */
    };

    /*if (hbn) {
        blog_info("hbn.buflen = %d\r\n", hbn->buflen);
        blog_info("hbn.active = %d\r\n", hbn->active);
        blog_buf(hbn->buf, hbn->buflen);
    }*/

    cfg.sleepTime = (*time + 999) / 1000; 
   /* if ((!hbn->buf) || (hbn->buflen > 2)) {
        blog_error("not support arg.\r\n");
        return -1;
    }*/

    int i;
    for (i=0; i<hbn->buflen; i++) {
        if ((hbn->buf[i]&0x7F) == 7) {
            cfg.gpioWakeupSrc |= HBN_WAKEUP_GPIO_7;
            if (hbn->buf[i]&0x80)
                cfg.gpioTrigType = HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE;
        } else if ((hbn->buf[i]&0x7F) == 8) {
            cfg.gpioWakeupSrc |= HBN_WAKEUP_GPIO_8;
            if (hbn->buf[i]&0x80)
                cfg.gpioTrigType=HBN_GPIO_INT_TRIGGER_ASYNC_RISING_EDGE;
        } else if (hbn->buf[i] == 0xFF) {
            ;
        } else {
            printf("invalid arg.\r\n");
            return -1;
        }
    }

    if (hbn->buflen > 0) {
        printf("hbn");
        for (i=0; i<hbn->buflen; i++) {
            printf(" gpio%d", hbn->buf[i]);
        }
        printf(".\r\n");
    }

    cfg.flashCfg = bl_flash_get_flashCfg();

    HBN_Clear_IRQ(HBN_INT_GPIO7);
    HBN_Clear_IRQ(HBN_INT_GPIO8);

    HBN_Mode_Enter(&cfg);
    return -1;
}

