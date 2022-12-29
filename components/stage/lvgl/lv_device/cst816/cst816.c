#include "cst816.h"
#include "hosal_i2c.h"
#include "hosal_gpio.h"
#include "lv_conf.h"
#include "lv_port_indev.h"
QueueHandle_t touch_point_queue;

static hosal_i2c_dev_t i2c0 = {
    .config = {
        .address_width = HOSAL_I2C_ADDRESS_WIDTH_7BIT,
        .freq = 400000,
        .mode = HOSAL_I2C_MODE_MASTER,
        .scl = CST816_SCL,
        .sda = CST816_SDA,
    },
    .port = 0,
};

static void touch_irq_handler(void* arg)
{
    touch_point_t point;
    static touch_point_t prev;

    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x02, 1, &point.fingers, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x04, 1, &point.y, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x06, 1, &point.x, 1, 10);

    point.x = 240 - point.x;

    if (prev.x != point.x || prev.y != point.y || prev.fingers != point.fingers) {
        xQueueSendFromISR(touch_point_queue, &point, NULL);
        prev = point;
    }
}

void cst816_init()
{
    touch_point_queue = xQueueCreate(10, 3);

    hosal_i2c_init(&i2c0);

    static hosal_gpio_dev_t touch_gpio = {
        .config = INPUT_PULL_UP,
        .port = CST816_INT,
    };

    hosal_gpio_init(&touch_gpio);

    hosal_gpio_irq_set(&touch_gpio, HOSAL_IRQ_TRIG_NEG_PULSE, touch_irq_handler, NULL);
}

void cst826_read(void* indev_data)
{

    lv_indev_data_t* data = (lv_indev_data_t*)indev_data;
#if (CONFIG_LV_DISPLAY_ORIENTATION==0)
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x02, 1, &data->state, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x04, 1, &data->point.y, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x06, 1, &data->point.x, 1, 10);
    data->point.x = 240 - data->point.x;
#elif (CONFIG_LV_DISPLAY_ORIENTATION==1)
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x02, 1, &data->state, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x04, 1, &data->point.y, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x06, 1, &data->point.x, 1, 10);
    data->point.y = 240-data->point.y;
#elif (CONFIG_LV_DISPLAY_ORIENTATION==2)
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x02, 1, &data->state, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x04, 1, &data->point.x, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x06, 1, &data->point.y, 1, 10);

#elif (CONFIG_LV_DISPLAY_ORIENTATION==3)
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x02, 1, &data->state, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x04, 1, &data->point.y, 1, 10);
    hosal_i2c_mem_read(&i2c0, CST816_DEFAULT_ADDR, 0x06, 1, &data->point.x, 1, 10);
#endif
}