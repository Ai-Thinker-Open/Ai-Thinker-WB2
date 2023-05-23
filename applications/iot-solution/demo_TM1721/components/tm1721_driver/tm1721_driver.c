#include "tm1721_driver.h"

#define TM1721_OPERAT_CMD 0x04
#define TM1721_DATA_CMD 0x42

static hosal_gpio_dev_t gpio;
/**
 * @brief 设置GPIO为输出模式
 *
 * @param gpio_num 要设置的引脚号
 * @return none
 */
static void HAL_GPIO_OUTPUT_INIT(uint8_t gpio_num)
{
    gpio.port = gpio_num;
    gpio.config = OUTPUT_PUSH_PULL;
    hosal_gpio_init(&gpio);
}

/**
 * @brief 设置GPIO为输入模式
 *
 * @param gpio_num 要设置的引脚号
 * @param gpio_config 设置引脚为上拉模式、下拉模式还是  1：上拉；0：下拉
 * @return void 无返回值
 */
static void HAL_GPIO_INPUT_INIT(uint8_t gpio_num, uint8_t gpio_config)
{
    gpio.port = gpio_num;
    if (gpio_config)
    {
        gpio.config = INPUT_PULL_UP;
    }
    else
    {
        gpio.config = INPUT_PULL_DOWN;
    }
    hosal_gpio_init(&gpio);
}

static void HAL_GPIO_DEINIT(void)
{
    hosal_gpio_finalize(&gpio);
}

/**
 * @brief TM1721引脚电平设置
 *
 * @param gpio_num 要设置的引脚号
 * @param gpio_level 要设置的引脚电平
 */
static void HAL_GPIO_SET(uint8_t gpio_num, uint8_t gpio_level)
{

    bl_gpio_output_set(gpio_num, gpio_level); /* 写引脚 */
}

/**
 * @brief TM1721引脚读取电平
 *
 * @param gpio_num 要设置的引脚号
 * @param gpio_level 要设置的引脚电平
 */
static uint8_t HAL_GPIO_READ(uint8_t gpio_num)
{
    return bl_gpio_input_get_value(gpio_num);
}

/**
 * @brief TM1721时序延时
 *
 * @param us 时长
 */
static void HAL_TM1721_delay_us(uint32_t us)
{
    bl_timer_delay_us(us);
}

/**
 * @brief 设置TM1721启动信号
 * @param none
 */
static void TM1721_set_startup_mode(void)
{
    HAL_GPIO_SET(CSPIN, 0);
}

/**
 * @brief 设置TM1721空闲信号
 * @param none
 */
static void TM1721_set_idle_mode(void)
{
    HAL_GPIO_SET(CSPIN, 1);
    HAL_TM1721_delay_us(1);
}

/**
 * @brief 设置位数据
 * @param des_data: 目标数据, data: 数据内容, bit: 配置的位(range: 0~7)
 */
static void TM1721_data_set_bit(uint8_t *des_data, uint8_t data, uint8_t bit)
{
    uint8_t temp = 0;
    temp = *des_data & (~(0x01 << bit));
    temp = temp + (data << bit);
    memcpy(des_data, &temp, 1);
}

/**
 * @brief TM1721 数据线
 * @param params 显示参数
 */
static int8_t TM1721_write_bit(uint8_t data)
{
    switch (data)
    {
    case 0:
        HAL_GPIO_SET(CLKPIN, 0);  // CLK = 0;
        HAL_GPIO_SET(DATAPIN, 0); // DA = 0;
        HAL_GPIO_SET(CLKPIN, 1);  // CLK = 1;
        break;
    case 1:
        HAL_GPIO_SET(CLKPIN, 0);  // CLK = 0;
        HAL_GPIO_SET(DATAPIN, 1); // DA = 1;
        HAL_GPIO_SET(CLKPIN, 1);  // CLK = 1;
        break;
    default:
        return -1;
    }
    return 0;
}

/**
 * @brief TM1721 数据线
 * @param params 显示参数
 */
static int8_t TM1721_read_byte(void)
{
    uint8_t level = 0;
    uint8_t byte = 0;
    for (int i = 0; i < 8; i++)
    {
        HAL_GPIO_SET(CLKPIN, 0); // CLK = 0;
        HAL_TM1721_delay_us(1);
        level = HAL_GPIO_READ(DATAPIN);
        HAL_GPIO_SET(CLKPIN, 1); // CLK = 0;
        byte = byte + (level << i);
    }
    return byte;
}

/**
 * @brief TM1721芯片写1个byte数据
 * @param byte 写入的数据
 */
static void TM1721_write_byte(uint8_t byte)
{
    // uint8_t temp = 0;
    for (int i = 0; i < 8; i++)
    {
        TM1721_write_bit((byte >> i) & 0x01);
    }
}

/**
 * @brief TM1721引脚初始化
 *
 */
static void TM1721_write_init(void)
{
    HAL_GPIO_OUTPUT_INIT(CSPIN);
    HAL_GPIO_OUTPUT_INIT(CLKPIN);
    HAL_GPIO_OUTPUT_INIT(DATAPIN);
}

/**
 * @brief TM1721
 *
 */
static void TM1721_read_init(void)
{
    HAL_GPIO_INPUT_INIT(DATAPIN, 1);
    HAL_TM1721_delay_us(1);
}

/**
 * @brief TM1721芯片初始化
 */
void TM1721_init(void)
{
    /* 写模式初始化 */
    TM1721_write_init();
}

/**
 * @brief TM1721芯片数据命令设置
 * @param params 设置各项参数
 */
static void TM1721_set_data_cmd(void *params, uint8_t *des_data)
{
    data_params_t data_params = {0};
    memcpy(&data_params, params, sizeof(data_params_t));
    // 设置测试模式（普通 or 测试）
    if (data_params.test_mode == GENERAL_MODE)
    {
        TM1721_data_set_bit(des_data, 0, 3);
    }
    else if (data_params.test_mode == FACTORY_MODE)
    {
        TM1721_data_set_bit(des_data, 1, 3);
    }
    else
    {
        TM1721_data_set_bit(des_data, 0, 3);
        printf("test_mode invalid \r\n");
    }

    // 设置读写模式（写（配置）,显示 or PWM， 读， 按键 or SW引脚）
    switch (data_params.write_mode)
    {
    case WRITE_MODE:
        TM1721_data_set_bit(des_data, 0, 1);
        TM1721_data_set_bit(des_data, 0, 0);
        break;
    case WRITE_PWM_MODE:
        TM1721_data_set_bit(des_data, 0, 1);
        TM1721_data_set_bit(des_data, 1, 0);
        break;
    case READ_KEY_MODE:
        TM1721_data_set_bit(des_data, 1, 1);
        TM1721_data_set_bit(des_data, 0, 0);
        break;
    case READ_SW_MODE:
        TM1721_data_set_bit(des_data, 1, 1);
        TM1721_data_set_bit(des_data, 1, 0);
        break;
    default:
        TM1721_data_set_bit(des_data, 0, 1);
        TM1721_data_set_bit(des_data, 0, 0);
        printf("write_mode invalid \r\n");
        break;
    }

    if (data_params.addr_type == ADDR_CONTINU)
    {
        TM1721_data_set_bit(des_data, 0, 2);
    }
    else if (data_params.addr_type == ADDR_FIX)
    {
        TM1721_data_set_bit(des_data, 1, 2);
    }
    else
    {
        TM1721_data_set_bit(des_data, 0, 2);
        printf("addr_type invalid \r\n");
    }
}

/**
 * @brief TM1721芯片显示地址设置
 * @param params 地址（4位地址，00~0F）
 */
static void TM1721_set_operation_mode_cmd(void *params, uint8_t *des_data)
{
    operation_params_t operation_params = {0};
    memcpy(&operation_params, params, sizeof(operation_params_t));

    switch (operation_params.pwm_seg)
    {
    case FOUR_PSEG:
        TM1721_data_set_bit(des_data, 0, 5);
        TM1721_data_set_bit(des_data, 0, 4);
        break;
    case THREE_SEG_ONE_PWM:
        TM1721_data_set_bit(des_data, 0, 5);
        TM1721_data_set_bit(des_data, 1, 4);
        break;
    case TWO_SEG_TWO_PWM:
        TM1721_data_set_bit(des_data, 1, 5);
        TM1721_data_set_bit(des_data, 0, 4);
        break;
    case FOUR_PWM:
        TM1721_data_set_bit(des_data, 1, 5);
        TM1721_data_set_bit(des_data, 1, 4);
        break;
    default:
        TM1721_data_set_bit(des_data, 0, 5);
        TM1721_data_set_bit(des_data, 0, 4);
        printf("pwm_seg invalid, set default\r\n");
        break;
    }

    switch (operation_params.key_seg)
    {
    case FOUR_KSEG:
        TM1721_data_set_bit(des_data, 0, 3);
        TM1721_data_set_bit(des_data, 0, 2);
        break;
    case THREE_SEG_ONE_KEY:
        TM1721_data_set_bit(des_data, 0, 3);
        TM1721_data_set_bit(des_data, 1, 2);
        break;
    case TWO_SEG_TWO_KEY:
        TM1721_data_set_bit(des_data, 1, 3);
        TM1721_data_set_bit(des_data, 0, 2);
        break;
    case FOUR_KEY:
        TM1721_data_set_bit(des_data, 1, 3);
        TM1721_data_set_bit(des_data, 1, 2);
        break;
    default:
        TM1721_data_set_bit(des_data, 0, 3);
        TM1721_data_set_bit(des_data, 0, 2);
        printf("key_seg invalid, set default\r\n");
        break;
    }

    switch (operation_params.gpio_seg)
    {
    case FOUR_GSEG:
        TM1721_data_set_bit(des_data, 0, 1);
        TM1721_data_set_bit(des_data, 0, 0);
        break;
    case THREE_SEG_ONE_SW:
        TM1721_data_set_bit(des_data, 0, 1);
        TM1721_data_set_bit(des_data, 1, 0);
        break;
    case TWO_SEG_TWO_SW:
        TM1721_data_set_bit(des_data, 1, 1);
        TM1721_data_set_bit(des_data, 0, 0);
        break;
    case FOUR_SW:
        TM1721_data_set_bit(des_data, 1, 1);
        TM1721_data_set_bit(des_data, 1, 0);
        break;
    default:
        TM1721_data_set_bit(des_data, 0, 1);
        TM1721_data_set_bit(des_data, 0, 0);
        printf("gpio_seg invalid, set default\r\n");
        break;
    }
}

/**
 * @brief TM1721芯片显示地址设置
 * @param params 地址（4位地址，00~0F）
 */
static void TM1721_set_addr_cmd(void *params, uint8_t *des_data)
{
    uint8_t addr = 0;
    memcpy(&addr, params, sizeof(uint8_t));
    for (int i = 0; i < 4; i++)
    {
        TM1721_data_set_bit(des_data, ((addr >> i) & 0x01), i);
    }
}

/**
 * @brief TM1721芯片显示控制参数设置
 * @param params 显示控制参数
 */
static void TM1721_set_light_ctrl_cmd(void *params, uint8_t *des_data)
{
    light_ctrl_params_t light_ctrl_params = {0};
    memcpy(&light_ctrl_params, params, sizeof(light_ctrl_params_t));
    if (LIGHT_ON == light_ctrl_params.light_switch)
    {
        TM1721_data_set_bit(des_data, 1, 4);
        if (TWO_PART == light_ctrl_params.duty_cycle)
        {
            TM1721_data_set_bit(des_data, 1, 3);
        }
        else
        {
            TM1721_data_set_bit(des_data, 0, 3);
        }

        for (int i = 0; i < 3; i++)
        {
            TM1721_data_set_bit(des_data, 1, i);
        }
    }
    else
    {
        for (int i = 0; i > 5; i++)
        {
            TM1721_data_set_bit(des_data, 0, i);
        }
    }
}

/**
 * @brief 设置TM1721模式
 *
 * @param type  设置配置模式
 * @param params 模式配置参数
 */
static void TM1721_set_cmd(CMD_type_t type, void *params) // 写入模式,数据or命令
{
    uint8_t dest_data = 0;
    switch (type)
    {
    case OPERAT_CMD:
    {
        TM1721_data_set_bit(&dest_data, 0, 7);
        TM1721_data_set_bit(&dest_data, 0, 6);
        TM1721_set_operation_mode_cmd(params, &dest_data);
    }
    break;
    case DATA_CMD:
    {
        TM1721_data_set_bit(&dest_data, 0, 7);
        TM1721_data_set_bit(&dest_data, 1, 6);
        TM1721_data_set_bit(&dest_data, 0, 5);
        TM1721_data_set_bit(&dest_data, 0, 4);
        TM1721_set_data_cmd(params, &dest_data);
    }
    break;
    case ADDR_CMD:
    {
        TM1721_data_set_bit(&dest_data, 1, 7);
        TM1721_data_set_bit(&dest_data, 1, 6);
        TM1721_data_set_bit(&dest_data, 0, 5);
        TM1721_data_set_bit(&dest_data, 0, 4);
        TM1721_set_addr_cmd(params, &dest_data);
    }
    break;
    case SHOW_CMD:
    {
        TM1721_data_set_bit(&dest_data, 1, 7);
        TM1721_data_set_bit(&dest_data, 0, 6);
        TM1721_data_set_bit(&dest_data, 0, 5);
        TM1721_set_light_ctrl_cmd(params, &dest_data);
    }
    break;
    default:
        break;
    }
    TM1721_write_byte(dest_data);
}

/**
 * @brief TM1721芯片写数据初始化
 */
static void TM1721_write_cmd_init(void)
{
    operation_params_t operation_params = {
        .gpio_seg = FOUR_GSEG,
        .key_seg = THREE_SEG_ONE_KEY,
        .pwm_seg = FOUR_PSEG,
    };
    data_params_t data_params = {
        .addr_type = ADDR_CONTINU,
        .test_mode = GENERAL_MODE,
        .write_mode = WRITE_MODE,
    };

    TM1721_set_idle_mode();
    TM1721_set_startup_mode(); // 使能通讯;
    TM1721_set_cmd(OPERAT_CMD, &operation_params);

    TM1721_set_idle_mode();
    TM1721_set_startup_mode(); // 使能通讯;
    TM1721_set_cmd(DATA_CMD, &data_params);

    TM1721_set_idle_mode();
    TM1721_set_startup_mode(); // 使能通讯;
}

/**
 * @brief TM1721芯片设置显示控制
 */
static void TM1721_set_show_ctrl(void)
{
    light_ctrl_params_t light_ctrl_params = {
        .duty_cycle = TWO_PART,
        .light_switch = LIGHT_ON,
    };
    TM1721_set_cmd(SHOW_CMD, &light_ctrl_params);
    TM1721_set_idle_mode();
}

/**
 * @brief 连续写数据
 *
 * @param first_addr 开始地址
 * @param Dbyte 数据内容
 * @param dataLen 数据长度
 */
uint8_t TM1721_write_data_conytinous(uint8_t first_addr, uint8_t *Dbyte, uint8_t addr_num)
{
    if ((first_addr + addr_num - 1) > 0x0F)
    {
        printf("invalid addr \r\n");
        return 0;
    }

    if (addr_num > 14)
    {
        printf("addr_number is out of range \r\n");
        return 0;
    }

    TM1721_write_cmd_init();
    TM1721_set_cmd(ADDR_CMD, &first_addr);

    for (int i = 0; i < addr_num; i++)
    {
        TM1721_write_byte(Dbyte[i]);
    }
    TM1721_set_idle_mode();
    TM1721_set_startup_mode();
    TM1721_set_show_ctrl();
    return 1;
}

/**
 * @brief 指定多个地址写数据
 *
 * @param addr_group 要写如数据的所有地址
 * @param Dbyte 数据
 * @param dataLen 所有要设置数据的地址个数
 */
uint8_t TM1721_write_data_multiaddr(uint8_t *addr_group, uint8_t *Dbyte, uint8_t num)
{
    if (num > 14)
    {
        printf("addr num is out of range \r\n");
        return 0;
    }

    TM1721_write_cmd_init();
    for (int i = 0; i < num; i++)
    {
        if (addr_group[i] > 0xF)
        {
            printf("invalid addr \r\n");
            return 0;
        }
        TM1721_set_cmd(ADDR_CMD, &(addr_group[i]));
        TM1721_write_byte(Dbyte[i]);
        TM1721_set_idle_mode();
        TM1721_set_startup_mode();
    }
    TM1721_set_show_ctrl();
    return 1;
}

/**
 * @brief 读取按键值
 *
 * @param addr_group 要写如数据的所有地址
 */
uint8_t TM1721_read_key_status(uint8_t *data)
{
    uint8_t byte[4] = {0};

    TM1721_set_idle_mode();
    TM1721_set_startup_mode(); // 使能通讯;
    TM1721_write_byte(TM1721_DATA_CMD);

    // HAL_GPIO_DEINIT();
    TM1721_read_init();
    for (int i = 0; i < 4; i++)
    {
        byte[i] = TM1721_read_byte();
    }
    memcpy(data, byte, sizeof(uint8_t) * 4);
    HAL_GPIO_OUTPUT_INIT(DATAPIN);
    return 1;
}