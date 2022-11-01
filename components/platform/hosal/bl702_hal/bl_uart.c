#include <bl702_uart.h>
#include <bl702_glb.h>

#include "bl_uart.h"
#include "bl_irq.h"

#ifdef BFLB_USE_HAL_DRIVER
void UART0_IRQHandler(void);
void UART1_IRQHandler(void);
#endif

//TODO Do in std driver
#define UART_NUMBER_SUPPORTED   2
#define UART_FIFO_TX_CNT        (128)
#define FIFO_TX_SIZE_BURST      (32)
static const uint32_t uartAddr[2] = {UART0_BASE, UART1_BASE};

typedef struct bl_uart_notify {
    cb_uart_notify_t rx_cb;
    void            *rx_cb_arg;

    cb_uart_notify_t tx_cb;
    void            *tx_cb_arg;
} bl_uart_notify_t;

static bl_uart_notify_t g_uart_notify_arg[UART_NUMBER_SUPPORTED];

static void gpio_init(uint8_t id, uint8_t tx_pin, uint8_t rx_pin, uint8_t cts_pin, uint8_t rts_pin)
{
    GLB_GPIO_Cfg_Type cfg;
    GLB_UART_SIG_FUN_Type tx_sigfun, rx_sigfun;

    cfg.drive = 1;
    cfg.smtCtrl = 1;
    cfg.gpioFun = 7;

    cfg.gpioPin = rx_pin;
    cfg.gpioMode = GPIO_MODE_AF;
    cfg.pullType = GPIO_PULL_UP;
    GLB_GPIO_Init(&cfg);

    cfg.gpioPin = tx_pin;
    cfg.gpioMode = GPIO_MODE_AF;
    cfg.pullType = GPIO_PULL_UP;
    GLB_GPIO_Init(&cfg);

    /* select uart gpio function */
    if (id == 0) {
        tx_sigfun = GLB_UART_SIG_FUN_UART0_TXD;
        rx_sigfun = GLB_UART_SIG_FUN_UART0_RXD;
    } else {
        tx_sigfun = GLB_UART_SIG_FUN_UART1_TXD;
        rx_sigfun = GLB_UART_SIG_FUN_UART1_RXD;
    }

    // clk
    //GLB_Set_UART_CLK(1, HBN_UART_CLK_FCLK, 0);

    GLB_UART_Fun_Sel(tx_pin%8, tx_sigfun);
    GLB_UART_Fun_Sel(rx_pin%8, rx_sigfun);
}

int g_uart_ready = 0;

int bl_uart_init(uint8_t id, uint8_t tx_pin, uint8_t rx_pin, uint8_t cts_pin, uint8_t rts_pin, uint32_t baudrate)
{
    static uint8_t uart_clk_init = 0;
    const uint8_t uart_div = 0;

    UART_CFG_Type uartCfg =
    {
        32*1000*1000,                                        /* UART clock */
        115200,                                              /* UART Baudrate */
        UART_DATABITS_8,                                     /* UART data bits length */
        UART_STOPBITS_1,                                     /* UART data stop bits length */
        UART_PARITY_NONE,                                    /* UART no parity */
        DISABLE,                                             /* Disable auto flow control */
        DISABLE,                                             /* Disable rx input de-glitch function */
        DISABLE,                                             /* Disable RTS output SW control mode */
        DISABLE,                                             /* Disable tx output SW control mode */
        DISABLE,                                             /* Disable tx lin mode */
        DISABLE,                                             /* Disable rx lin mode */
        0,                                                   /* Tx break bit count for lin mode */
        UART_LSB_FIRST                                       /* UART each data byte is send out LSB-first */
    };
    UART_FifoCfg_Type fifoCfg =
    {
        .txFifoDmaThreshold     = 0x10,
        .rxFifoDmaThreshold     = 0x10,
        .txFifoDmaEnable        = DISABLE,
        .rxFifoDmaEnable        = DISABLE,
    };

    /* enable clk */
    if (0 == uart_clk_init) {
        GLB_Set_UART_CLK(1, HBN_UART_CLK_FCLK, uart_div);
//        uart_clk_init = 1;
    }

    /* gpio init */
    gpio_init(id, tx_pin, rx_pin, cts_pin, rts_pin);

    uartCfg.baudRate = baudrate;
    uartCfg.uartClk = SystemCoreClockGet() / (uart_div + 1);

    /* Disable all interrupt */
    UART_IntMask(id, UART_INT_ALL, MASK);

    /* Disable uart before config */
    UART_Disable(id, UART_TXRX);

    /* UART init */
    UART_Init(id, &uartCfg);

    /* Enable tx free run mode */
    UART_TxFreeRun(id, ENABLE);

    /* FIFO Config*/
    UART_FifoConfig(id, &fifoCfg);

    /* Enable uart */
    UART_Enable(id, UART_TXRX);

    g_uart_ready = 1;

    return 0;
}

/*This function is NOT thread safe*/
int bl_uart_data_send(uint8_t id, uint8_t data)
{
    uint32_t UARTx = uartAddr[id];

    /* Wait for FIFO */
    while (UART_GetTxFifoCount(id) == 0) {
    }

    BL_WR_BYTE(UARTx + UART_FIFO_WDATA_OFFSET, data);

    return 0;
}

int bl_uart_data_recv(uint8_t id)
{
    int ret;
    uint32_t UARTx = uartAddr[id];

    /* Receive data */
    if (UART_GetRxFifoCount(id) > 0) {
        ret  = BL_RD_BYTE(UARTx + UART_FIFO_RDATA_OFFSET);
    } else {
        ret = -1;
    }

    return ret;
}

int bl_uart_int_rx_enable(uint8_t id)
{
    UART_SetRxTimeoutValue((UART_ID_Type)id, 24);
    UART_IntMask((UART_ID_Type)id, UART_INT_RX_FIFO_REQ, UNMASK);
    UART_IntMask((UART_ID_Type)id, UART_INT_RX_END, UNMASK);
    UART_IntMask((UART_ID_Type)id, UART_INT_RTO, UNMASK);
    return 0;
}

int bl_uart_int_rx_disable(uint8_t id)
{
    UART_IntMask((UART_ID_Type)id, UART_INT_RX_FIFO_REQ, MASK);
    UART_IntMask((UART_ID_Type)id, UART_INT_RX_END, MASK);
    UART_IntMask((UART_ID_Type)id, UART_INT_RTO, MASK);
    return 0;
}

int bl_uart_int_tx_enable(uint8_t id)
{
    UART_IntMask((UART_ID_Type)id, UART_INT_TX_FIFO_REQ, UNMASK);
    return 0;
}

int bl_uart_int_tx_disable(uint8_t id)
{
    UART_IntMask((UART_ID_Type)id, UART_INT_TX_FIFO_REQ, MASK);
    return 0;
}

int bl_uart_flush(uint8_t id)
{
    /* Wait for FIFO */
    while (UART_FIFO_TX_CNT != UART_GetTxFifoCount(id)) {
    }

    while(UART_GetTxBusBusyStatus(id) == SET){}
    
    return 0;
}

void bl_uart_getdefconfig(uint8_t id, uint8_t *parity)
{
    if (NULL == parity) {
        return;
    }

    //*baudrate = 115200;/* not support set no baud */
    *parity = (uint8_t)UART_PARITY_NONE;
}

void bl_uart_setconfig(uint8_t id, uint32_t baudrate, UART_Parity_Type parity)
{
    UART_CFG_Type UartCfg =
    {
        32*1000*1000,                                        /* UART clock */
        115200,                                              /* UART Baudrate */
        UART_DATABITS_8,                                     /* UART data bits length */
        UART_STOPBITS_1,                                     /* UART data stop bits length */
        UART_PARITY_NONE,                                    /* UART no parity */
        DISABLE,                                             /* Disable auto flow control */
        DISABLE,                                             /* Disable rx input de-glitch function */
        DISABLE,                                             /* Disable RTS output SW control mode */
		DISABLE,                                             /* Disable tx output SW control mode */
        DISABLE,                                             /* Disable tx lin mode */
        DISABLE,                                             /* Disable rx lin mode */
        0,                                                   /* Tx break bit count for lin mode */
        UART_LSB_FIRST                                       /* UART each data byte is send out LSB-first */
    };

    UartCfg.baudRate = baudrate;
    UartCfg.parity = parity;             //UART_PARITY_NONE

    /* Disable uart before config */
    UART_Disable(id, UART_TXRX);
    /* UART init */
    UART_Init(id, &UartCfg);
    /* Enable tx free run mode */
    UART_TxFreeRun(id, ENABLE);
    /* Enable uart */
    UART_Enable(id, UART_TXRX);
}

void bl_uart_setbaud(uint8_t id, uint32_t baud)
{
    bl_uart_setconfig(id, baud, UART_PARITY_NONE);
}

int bl_uart_int_enable(uint8_t id)
{
    switch (id) {
        case 0:
        {
            bl_uart_int_rx_enable(0);
            bl_uart_int_tx_enable(0);
            bl_irq_register(UART0_IRQn, UART0_IRQHandler);
            bl_irq_enable(UART0_IRQn);
        }
        break;
        case 1:
        {
            bl_uart_int_rx_enable(1);
            bl_uart_int_tx_enable(1);
            bl_irq_register(UART1_IRQn, UART1_IRQHandler);
            bl_irq_enable(UART1_IRQn);
        }
        break;
        default:
        {
            return -1;
        }
    }

    return 0;
}

int bl_uart_int_disable(uint8_t id)
{
    switch (id) {
        case 0:
        {
            bl_uart_int_rx_disable(0);
            bl_uart_int_tx_disable(0);
            bl_irq_unregister(UART0_IRQn, UART0_IRQHandler);
            bl_irq_disable(UART0_IRQn);
        }
        break;
        case 1:
        {
            bl_uart_int_rx_disable(1);
            bl_uart_int_tx_disable(1);
            bl_irq_unregister(UART1_IRQn, UART1_IRQHandler);
            bl_irq_disable(UART1_IRQn);
        }
        break;
        default:
        {
            return -1;
        }
    }

    return 0;
}

int bl_uart_int_rx_notify_register(uint8_t id, cb_uart_notify_t cb, void *arg)
{
    if (!(id < UART_NUMBER_SUPPORTED)) {
        /*UART ID overflow*/
        return -1;
    }

    g_uart_notify_arg[id].rx_cb = cb;
    g_uart_notify_arg[id].rx_cb_arg = arg;

    return 0;
}

int bl_uart_int_tx_notify_register(uint8_t id, cb_uart_notify_t cb, void *arg)
{
    if (!(id < UART_NUMBER_SUPPORTED)) {
        /*UART ID overflow*/
        return -1;
    }

    g_uart_notify_arg[id].tx_cb = cb;
    g_uart_notify_arg[id].tx_cb_arg = arg;

    return 0;
}

int bl_uart_int_rx_notify_unregister(uint8_t id, cb_uart_notify_t cb, void *arg)
{
    if (!(id < UART_NUMBER_SUPPORTED)) {
        /*UART ID overflow*/
        return -1;
    }
    g_uart_notify_arg[id].rx_cb = NULL;
    g_uart_notify_arg[id].rx_cb_arg = NULL;

    return 0;
}

int bl_uart_int_tx_notify_unregister(uint8_t id, cb_uart_notify_t cb, void *arg)
{
    if (!(id < UART_NUMBER_SUPPORTED)) {
        /*UART ID overflow*/
        return -1;
    }
    g_uart_notify_arg[id].tx_cb = NULL;
    g_uart_notify_arg[id].tx_cb_arg = NULL;

    return 0;
}

static inline void uart_generic_notify_handler(uint8_t id)
{
    cb_uart_notify_t cb;
    void *arg;
    uint32_t tmpVal = 0;
    uint32_t maskVal = 0;
    uint32_t UARTx = uartAddr[id];

    tmpVal = BL_RD_REG(UARTx,UART_INT_STS);
    maskVal = BL_RD_REG(UARTx,UART_INT_MASK);


    /* Length of uart tx data transfer arrived interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_UTX_END_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_UTX_END_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x1);
    }

    /* Length of uart rx data transfer arrived interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_END_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_END_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x2);

        /*Receive Data ready*/
        cb = g_uart_notify_arg[id].rx_cb;
        arg = g_uart_notify_arg[id].rx_cb_arg;

        if (cb) {
            /*notify up layer*/
            cb(arg);
        }
    }

    /* Tx fifo ready interrupt,auto-cleared when data is pushed */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_UTX_FIFO_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_UTX_FIFO_MASK)){
        /* Transmit data request interrupt */
        cb = g_uart_notify_arg[id].tx_cb;
        arg = g_uart_notify_arg[id].tx_cb_arg;

        if (cb) {
            /*notify up layer*/
            cb(arg);
        }
    }

    /* Rx fifo ready interrupt,auto-cleared when data is popped */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_FIFO_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_FIFO_MASK)){
        /*Receive Data ready*/

        cb = g_uart_notify_arg[id].rx_cb;
        arg = g_uart_notify_arg[id].rx_cb_arg;

        if (cb) {
            /*notify up layer*/
            cb(arg);
        }
    }

    /* Rx time-out interrupt */
    if (BL_IS_REG_BIT_SET(tmpVal,UART_URX_RTO_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_RTO_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x10);

        /*Receive Data ready*/
        cb = g_uart_notify_arg[id].rx_cb;
        arg = g_uart_notify_arg[id].rx_cb_arg;

        if (cb) {
            /*notify up layer*/
            cb(arg);
        }
    }

    /* Rx parity check error interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_PCE_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_PCE_MASK)){
        BL_WR_REG(UARTx,UART_INT_CLEAR,0x20);
    }

    /* Tx fifo overflow/underflow error interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_UTX_FER_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_UTX_FER_MASK)){
    }

    /* Rx fifo overflow/underflow error interrupt */
    if(BL_IS_REG_BIT_SET(tmpVal,UART_URX_FER_INT) && !BL_IS_REG_BIT_SET(maskVal,UART_CR_URX_FER_MASK)){
    }

    return;
}
#ifdef BFLB_USE_HAL_DRIVER
void UART0_IRQHandler(void)
{
    uart_generic_notify_handler(0);
}

void UART1_IRQHandler(void)
{
    uart_generic_notify_handler(1);
}
#endif
