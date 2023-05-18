#include <bl602.h>
#include <bl_i2c.h>
#include <bl602_i2c.h>
#include <bl602_glb.h>
#include <blog.h>

#define PUT_UINT32_LE(n,b,i)                      \
{                                                 \
    (b)[(i)    ] = (uint8_t) ( (n)       );       \
    (b)[(i) + 1] = (uint8_t) ( (n) >>  8 );       \
    (b)[(i) + 2] = (uint8_t) ( (n) >> 16 );       \
    (b)[(i) + 3] = (uint8_t) ( (n) >> 24 );       \
}
#define I2C0            0

void i2c_set_freq(int freq, int i2cx)
{
    I2C_SetSclSync(i2cx, 0);
    I2C_ClockSet(i2cx, freq);
    return;
}

void i2c_gpio_init(int i2cx)
{
    GLB_GPIO_Type gpiopins[2];
    if (i2cx == I2C0) {
        gpiopins[0] = GLB_GPIO_PIN_4;
        gpiopins[1] = GLB_GPIO_PIN_3;
    } else {
    }
    
    GLB_GPIO_Func_Init(GPIO_FUN_I2C, gpiopins, sizeof(gpiopins) / sizeof(gpiopins[0]));
    return;
}

void i2c_clear_status(int i2cx)
{
    uint32_t tmpval;
    
    if (i2cx == I2C0) {
        tmpval = BL_RD_REG(I2C_BASE, I2C_INT_STS);
        tmpval = BL_SET_REG_BIT(tmpval, I2C_CR_I2C_END_CLR);
        tmpval = BL_SET_REG_BIT(tmpval, I2C_CR_I2C_NAK_CLR);
        tmpval = BL_SET_REG_BIT(tmpval, I2C_CR_I2C_ARB_CLR);
        BL_WR_REG(I2C_BASE, I2C_INT_STS, tmpval);
    } else {
    }

        return;
}

void do_write_data(i2c_msg_t *pstmsg) 
{
    uint32_t temp = 0;
    uint32_t val = 0;
    int i;
    int count;
    
    count = pstmsg->len - pstmsg->idex;
    if (count >= 4) {
        count = 4;
    }

    for (i = 0; i < count; i++) {
        val = *(pstmsg->buf + pstmsg->idex + i);
        temp += val << i * 8;
    }
    BL_WR_REG(I2C_BASE, I2C_FIFO_WDATA, temp);
    pstmsg->idex = pstmsg->idex + count;

    return;
}

void do_read_data(i2c_msg_t *pstmsg)
{
    uint32_t temp = 0;
    int i = 0;
    int count;

    count = pstmsg->len - pstmsg->idex;
    temp = BL_RD_REG(I2C_BASE, I2C_FIFO_RDATA);
    if (count >= 4) {
        PUT_UINT32_LE(temp, pstmsg->buf, pstmsg->idex);
        count = 4;
    } else if (count < 4) {
        for (i = 0; i < count; i++) {
            pstmsg->buf[pstmsg->idex + i] = (temp & 0xff);
            temp = (temp >> 8);
        }
    }
    pstmsg->idex = pstmsg->idex + count;

    return;
}

static void i2c_transfer_enable(i2c_msg_t *pstmsg)
{
    if (pstmsg->direct == I2C_M_WRITE) {
        I2C_IntMask(pstmsg->i2cx, I2C_TX_FIFO_READY_INT, UNMASK);
    } else if (pstmsg->direct == I2C_M_READ) {
        I2C_IntMask(pstmsg->i2cx, I2C_RX_FIFO_READY_INT, UNMASK); 
    }

    I2C_IntMask(pstmsg->i2cx, I2C_TRANS_END_INT, UNMASK);
    I2C_IntMask(pstmsg->i2cx, I2C_FIFO_ERR_INT, UNMASK);
    I2C_IntMask(pstmsg->i2cx, I2C_ARB_LOST_INT, UNMASK);
    I2C_IntMask(pstmsg->i2cx, I2C_NACK_RECV_INT, UNMASK);

    I2C_Enable(pstmsg->i2cx);

    return;
}

static void i2c_config_para(i2c_msg_t *pstmsg)
{
    uint32_t tmpval;

    if (pstmsg->i2cx == I2C0) {
        tmpval = BL_RD_REG(I2C_BASE, I2C_CONFIG);
        if(pstmsg->direct == I2C_WRITE){
            tmpval = BL_CLR_REG_BIT(tmpval, I2C_CR_I2C_PKT_DIR);
        } else {
            tmpval = BL_SET_REG_BIT(tmpval, I2C_CR_I2C_PKT_DIR);
        }

        tmpval = BL_SET_REG_BITS_VAL(tmpval, I2C_CR_I2C_SLV_ADDR, pstmsg->addr);
        if(pstmsg->subflag > 0){
            tmpval = BL_SET_REG_BIT(tmpval, I2C_CR_I2C_SUB_ADDR_EN);
            tmpval = BL_SET_REG_BITS_VAL(tmpval, I2C_CR_I2C_SUB_ADDR_BC, pstmsg->sublen-1);
        } else {
            tmpval = BL_CLR_REG_BIT(tmpval, I2C_CR_I2C_SUB_ADDR_EN);
        }

        tmpval = BL_SET_REG_BITS_VAL(tmpval, I2C_CR_I2C_PKT_LEN, pstmsg->len-1);
        BL_WR_REG(I2C_BASE, I2C_CONFIG, tmpval);

        if(pstmsg->subflag > 0){
            BL_WR_REG(I2C_BASE, I2C_SUB_ADDR, pstmsg->subaddr);
        }
    } else {
    }

    return;
}

void i2c_transfer_start(i2c_msg_t *pstmsg)
{
    i2c_clear_status(pstmsg->i2cx);
    i2c_config_para(pstmsg);
    i2c_transfer_enable(pstmsg);

    return;
}
