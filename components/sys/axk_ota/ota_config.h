#ifndef OTA_CONFIG_H_
#define OTA_CONFIG_H_


/*mbedtls日志调试等级
 * 0: No debug
 * 1: Error
 * 2: State change
 * 3: Infomational
 * 4: Verbose    
*/
#define MBEDTLS_DEBUG_LEVEL       0


/*硬件随机数发生器配置，定义该宏使用硬件随机数发生器，禁用该宏，使用mbedtls组件中的API生产随机数*/
// #define MBEDTLS_RANDOM_CONFIG


#endif