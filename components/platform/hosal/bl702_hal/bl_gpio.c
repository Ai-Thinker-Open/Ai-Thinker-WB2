#include <stdint.h>

#include <bl702_glb.h>
#include <bl702_gpio.h>
#include <bl702_romdriver.h>
#include <bl702.h>
#include "bl_gpio.h"
#include "bl_irq.h"

#define GPIO_FUNC_NUM_IN_BL702   (11)
#define GPIP_INT_STATE_OFFSET    (0x1a8)
int bl_gpio_enable_output(uint8_t pin, uint8_t pullup, uint8_t pulldown)
{
    GLB_GPIO_Cfg_Type cfg;

    cfg.drive=0;
    cfg.smtCtrl=1;
    cfg.gpioPin = pin;
    cfg.gpioFun = GPIO_FUNC_NUM_IN_BL702;//all the function number of GPIO is the same, we use def from GPIO0 here
    cfg.gpioMode = GPIO_MODE_OUTPUT;
    cfg.pullType = GPIO_PULL_NONE;
    if (pullup) {
        cfg.pullType = GPIO_PULL_UP;
    }
    if (pulldown) {
        cfg.pullType = GPIO_PULL_DOWN;
    }
#if defined(CFG_PDS_OPTIMIZE) || defined(CFG_HBN_OPTIMIZE)
    RomDriver_GLB_GPIO_Init(&cfg);
#else
    GLB_GPIO_Init(&cfg);
#endif

    return 0;
}

int bl_gpio_enable_input(uint8_t pin, uint8_t pullup, uint8_t pulldown)
{
    GLB_GPIO_Cfg_Type cfg;

    cfg.drive=0;
    cfg.smtCtrl=1;
    cfg.gpioPin = pin;
    cfg.gpioFun = GPIO_FUNC_NUM_IN_BL702;//all the function number of GPIO is the same, we use def from GPIO0 here
    cfg.gpioMode = GPIO_MODE_INPUT;
    cfg.pullType = GPIO_PULL_NONE;
    if (pullup) {
        cfg.pullType = GPIO_PULL_UP;
    }
    if (pulldown) {
        cfg.pullType = GPIO_PULL_DOWN;
    }
#if defined(CFG_PDS_OPTIMIZE) || defined(CFG_HBN_OPTIMIZE)
    RomDriver_GLB_GPIO_Init(&cfg);
#else
    GLB_GPIO_Init(&cfg);
#endif

    return 0;
}

int bl_gpio_output_set(uint8_t pin, uint8_t value)
{
    GLB_GPIO_Write((GLB_GPIO_Type)pin, value ? 1 : 0);
    return 0;
}

int bl_gpio_input_get(uint8_t pin, uint8_t *value)
{
    *value = GLB_GPIO_Read((GLB_GPIO_Type)pin);
    return 0;
}

int bl_gpio_input_get_value(uint8_t pin)
{
    return GLB_GPIO_Read((GLB_GPIO_Type)pin);
}

void bl_gpio_intmask(uint8_t gpioPin, uint8_t mask)
{
    GLB_GPIO_IntMask(gpioPin, mask ? MASK : UNMASK);
}

void bl_set_gpio_intmod(uint8_t gpioPin, uint8_t intCtrlMod, uint8_t intTrgMod)
{
    GLB_Set_GPIO_IntMod(gpioPin, intCtrlMod, intTrgMod);
}

int bl_gpio_int_clear(uint8_t gpioPin, uint8_t intClear)
{
    uint32_t tmpVal;
    if (gpioPin < 32) {
        /*GPIO0 ~ GPIO31*/
        tmpVal = BL_RD_REG(GLB_BASE, GLB_GPIO_INT_CLR1);
        if(intClear==SET){
            tmpVal = tmpVal|(1<<gpioPin);
        }else{
            tmpVal = tmpVal&~(1<<gpioPin);
        }
        BL_WR_REG(GLB_BASE,GLB_GPIO_INT_CLR1,tmpVal);
    }
    return 0;
}

static int check_gpio_is_interrupt(int gpioPin)
{
    int bitcount = 0;
    int reg_val = 0;

    bitcount = 1 << gpioPin;
    reg_val = *(int32_t *)(GLB_BASE + GPIP_INT_STATE_OFFSET);

    if ((bitcount & reg_val) == bitcount) {
        return 0;
    }
    return -1;
}

static int exec_gpio_handler(gpio_ctx_t *pstnode)
{
    bl_gpio_intmask(pstnode->gpioPin, 1);

    if (pstnode->gpio_handler) {
        pstnode->gpio_handler(pstnode);
        return 0;
    }

    return -1;
}

static void gpio_interrupt_entry(gpio_ctx_t *pstnode)
{
    int ret;

    while (pstnode) {
        ret = check_gpio_is_interrupt(pstnode->gpioPin);
        if (ret == 0) {
            exec_gpio_handler(pstnode);
        }

        pstnode = pstnode->next;
    }
    return;
}

void bl_gpio_register(gpio_ctx_t *pstnode)
{
    bl_gpio_intmask(pstnode->gpioPin, 1);
    bl_set_gpio_intmod(pstnode->gpioPin, pstnode->intCtrlMod, pstnode->intTrgMod);
    bl_irq_register_with_ctx(GPIO_INT0_IRQn, gpio_interrupt_entry, pstnode);
    bl_gpio_intmask(pstnode->gpioPin, 0);
    bl_irq_enable(GPIO_INT0_IRQn);
}

