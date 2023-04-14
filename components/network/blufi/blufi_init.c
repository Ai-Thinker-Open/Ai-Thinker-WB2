#include "blufi_api.h"
#include "axk_blufi.h"
#include "blufi_init.h"
#include <stdio.h>
#include "ble_interface.h"
#include "blufi_hal.h"
#include "blog.h"

int _blufi_host_init(void)
{

    axk_hal_ble_role_set(BLE_ROLE_SERVER);
    axk_hal_blufi_server_create_start();
    return 0;
}


int _blufi_gap_register_callback(void)
{
    return axk_blufi_profile_init();
}

int _blufi_host_and_cb_init(_blufi_callbacks_t* example_callbacks)
{
    int ret = 0;

    ret = axk_blufi_register_callbacks(example_callbacks);
    if (ret)
    {
        blog_info("[BLUFI] %s blufi register failed, error code = %x", __func__, ret);
        return ret;
    }

    ret = _blufi_host_init();
    if (ret)
    {
        blog_info("[BLUFI] %s initialise host failed: %d", __func__, ret);
        return ret;
    }

    ret = _blufi_gap_register_callback();
    if (ret)
    {
        blog_info("[BLUFI] %s gap register failed, error code = %x", __func__, ret);
        return ret;
    }

    return ret;
}