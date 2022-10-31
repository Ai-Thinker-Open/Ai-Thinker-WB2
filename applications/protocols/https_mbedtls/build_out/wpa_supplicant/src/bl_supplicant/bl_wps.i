# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/wpa_supplicant//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/bl_supplicant/bl_wps.h" 1



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4

# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 2 3 4
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/bl_supplicant/bl_wps.h" 2


# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/bl_supplicant/bl_wps.h"
typedef enum {
    BL_WPS_EVENT_COMPLETE,
    BL_WPS_EVENT_PIN,
    BL_WPS_EVENT_FAILURE,
    BL_WPS_EVENT_TIMEOUT,
    BL_WPS_EVENT_SESSION_OVERLAP,
    BL_WPS_EVENT_SCAN_ERROR,
} bl_wps_event_t;

typedef struct {
    uint8_t ssid[32];
    uint8_t ssid_len;
    uint8_t bssid[6];
    char passphrase[64];
} bl_wps_ap_credential_t;

typedef struct {
    char pin[8 + 1];
} bl_wps_pin_t;

typedef void (*wps_event_callback_t)(bl_wps_event_t event, void *payload, void *cb_arg);

typedef enum wps_type {
    WPS_TYPE_DISABLE = 0,
    WPS_TYPE_PBC,
    WPS_TYPE_PIN,
    WPS_TYPE_MAX,
} wps_type_t;






typedef struct {
    char manufacturer[65];
    char model_number[33];
    char model_name[33];
    char device_name[33];
} wps_factory_information_t;

typedef struct bl_wps_config {
    wps_type_t type;
    wps_factory_information_t factory_info;
    wps_event_callback_t event_cb;
    void *event_cb_arg;
} bl_wps_config_t;

typedef enum {
    BL_WPS_ERR_OK,
    BL_WPS_ERR_DUPLICATE_INSTANCE,
    BL_WPS_ERR_MEMORY,
    BL_WPS_ERR_WIFI_STATE,
} bl_wps_err_t;

bl_wps_err_t bl_wifi_wps_start(const struct bl_wps_config *config);
# 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 1
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"

# 127 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 57 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskSwitchContext( void );
extern void vEnvironmentCall( uint32_t exception );
# 97 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 152 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
BaseType_t xPortIsInsideInterrupt( void );
# 53 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void *pvPortCalloc(size_t numElements, size_t sizeOfElement); ;
void *pvPortRealloc(void *pv, size_t xSize) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



 UBaseType_t uxDummy2;
 void *pvDummy3;
 StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1095 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];




  UBaseType_t uxDummy9;


  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];
# 1130 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1159 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];


  uint8_t ucDummy6;







  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1203 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1232 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 void *pvDummy5;
 TaskFunction_t pvDummy6;

  UBaseType_t uxDummy7;

 uint8_t ucDummy8;

} StaticTimer_t;
# 1260 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 330 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1529 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1538 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1637 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
UBaseType_t xAddTasksToAllList( void ) ;
List_t * pxTaskGetAllList( void ) ;
# 1686 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1740 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1770 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1851 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1942 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2019 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2120 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2189 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2205 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2259 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2273 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2299 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2310 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2366 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2387 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2404 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 2






struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;
# 650 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1295 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;
# 1458 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1505 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;
# 1556 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 1
# 76 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
struct tmrTimerControl;
typedef struct tmrTimerControl * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 228 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreate( const char * const pcTimerName,
        const TickType_t xTimerPeriodInTicks,
        const UBaseType_t uxAutoReload,
        void * const pvTimerID,
        TimerCallbackFunction_t pxCallbackFunction ) ;
# 358 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreateStatic( const char * const pcTimerName,
          const TickType_t xTimerPeriodInTicks,
          const UBaseType_t uxAutoReload,
          void * const pvTimerID,
          TimerCallbackFunction_t pxCallbackFunction,
          StaticTimer_t *pxTimerBuffer ) ;
# 386 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 407 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 444 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;







TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;
# 1187 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1221 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;
# 1232 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
const char * pcTimerGetName( TimerHandle_t xTimer ) ;
# 1249 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetReloadMode( TimerHandle_t xTimer, const UBaseType_t uxAutoReload ) ;
# 1260 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;
# 1275 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;


 void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber ) ;
 UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_defs.h" 1
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_defs.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/supplicant_opt.h" 1
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_defs.h" 2
# 53 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_defs.h"
enum wps_attribute {
 ATTR_AP_CHANNEL = 0x1001,
 ATTR_ASSOC_STATE = 0x1002,
 ATTR_AUTH_TYPE = 0x1003,
 ATTR_AUTH_TYPE_FLAGS = 0x1004,
 ATTR_AUTHENTICATOR = 0x1005,
 ATTR_CONFIG_METHODS = 0x1008,
 ATTR_CONFIG_ERROR = 0x1009,
 ATTR_CONFIRM_URL4 = 0x100a,
 ATTR_CONFIRM_URL6 = 0x100b,
 ATTR_CONN_TYPE = 0x100c,
 ATTR_CONN_TYPE_FLAGS = 0x100d,
 ATTR_CRED = 0x100e,
 ATTR_ENCR_TYPE = 0x100f,
 ATTR_ENCR_TYPE_FLAGS = 0x1010,
 ATTR_DEV_NAME = 0x1011,
 ATTR_DEV_PASSWORD_ID = 0x1012,
 ATTR_E_HASH1 = 0x1014,
 ATTR_E_HASH2 = 0x1015,
 ATTR_E_SNONCE1 = 0x1016,
 ATTR_E_SNONCE2 = 0x1017,
 ATTR_ENCR_SETTINGS = 0x1018,
 ATTR_ENROLLEE_NONCE = 0x101a,
 ATTR_FEATURE_ID = 0x101b,
 ATTR_IDENTITY = 0x101c,
 ATTR_IDENTITY_PROOF = 0x101d,
 ATTR_KEY_WRAP_AUTH = 0x101e,
 ATTR_KEY_ID = 0x101f,
 ATTR_MAC_ADDR = 0x1020,
 ATTR_MANUFACTURER = 0x1021,
 ATTR_MSG_TYPE = 0x1022,
 ATTR_MODEL_NAME = 0x1023,
 ATTR_MODEL_NUMBER = 0x1024,
 ATTR_NETWORK_INDEX = 0x1026,
 ATTR_NETWORK_KEY = 0x1027,
 ATTR_NETWORK_KEY_INDEX = 0x1028,
 ATTR_NEW_DEVICE_NAME = 0x1029,
 ATTR_NEW_PASSWORD = 0x102a,
 ATTR_OOB_DEVICE_PASSWORD = 0x102c,
 ATTR_OS_VERSION = 0x102d,
 ATTR_POWER_LEVEL = 0x102f,
 ATTR_PSK_CURRENT = 0x1030,
 ATTR_PSK_MAX = 0x1031,
 ATTR_PUBLIC_KEY = 0x1032,
 ATTR_RADIO_ENABLE = 0x1033,
 ATTR_REBOOT = 0x1034,
 ATTR_REGISTRAR_CURRENT = 0x1035,
 ATTR_REGISTRAR_ESTABLISHED = 0x1036,
 ATTR_REGISTRAR_LIST = 0x1037,
 ATTR_REGISTRAR_MAX = 0x1038,
 ATTR_REGISTRAR_NONCE = 0x1039,
 ATTR_REQUEST_TYPE = 0x103a,
 ATTR_RESPONSE_TYPE = 0x103b,
 ATTR_RF_BANDS = 0x103c,
 ATTR_R_HASH1 = 0x103d,
 ATTR_R_HASH2 = 0x103e,
 ATTR_R_SNONCE1 = 0x103f,
 ATTR_R_SNONCE2 = 0x1040,
 ATTR_SELECTED_REGISTRAR = 0x1041,
 ATTR_SERIAL_NUMBER = 0x1042,
 ATTR_WPS_STATE = 0x1044,
 ATTR_SSID = 0x1045,
 ATTR_TOTAL_NETWORKS = 0x1046,
 ATTR_UUID_E = 0x1047,
 ATTR_UUID_R = 0x1048,
 ATTR_VENDOR_EXT = 0x1049,
 ATTR_VERSION = 0x104a,
 ATTR_X509_CERT_REQ = 0x104b,
 ATTR_X509_CERT = 0x104c,
 ATTR_EAP_IDENTITY = 0x104d,
 ATTR_MSG_COUNTER = 0x104e,
 ATTR_PUBKEY_HASH = 0x104f,
 ATTR_REKEY_KEY = 0x1050,
 ATTR_KEY_LIFETIME = 0x1051,
 ATTR_PERMITTED_CFG_METHODS = 0x1052,
 ATTR_SELECTED_REGISTRAR_CONFIG_METHODS = 0x1053,
 ATTR_PRIMARY_DEV_TYPE = 0x1054,
 ATTR_SECONDARY_DEV_TYPE_LIST = 0x1055,
 ATTR_PORTABLE_DEV = 0x1056,
 ATTR_AP_SETUP_LOCKED = 0x1057,
 ATTR_APPLICATION_EXT = 0x1058,
 ATTR_EAP_TYPE = 0x1059,
 ATTR_IV = 0x1060,
 ATTR_KEY_PROVIDED_AUTO = 0x1061,
 ATTR_802_1X_ENABLED = 0x1062,
 ATTR_APPSESSIONKEY = 0x1063,
 ATTR_WEPTRANSMITKEY = 0x1064,
 ATTR_REQUESTED_DEV_TYPE = 0x106a,
 ATTR_EXTENSIBILITY_TEST = 0x10fa
};




enum {
 WFA_ELEM_VERSION2 = 0x00,
 WFA_ELEM_AUTHORIZEDMACS = 0x01,
 WFA_ELEM_NETWORK_KEY_SHAREABLE = 0x02,
 WFA_ELEM_REQUEST_TO_ENROLL = 0x03,
 WFA_ELEM_SETTINGS_DELAY_TIME = 0x04
};


enum wps_dev_password_id {
 DEV_PW_DEFAULT = 0x0000,
 DEV_PW_USER_SPECIFIED = 0x0001,
 DEV_PW_MACHINE_SPECIFIED = 0x0002,
 DEV_PW_REKEY = 0x0003,
 DEV_PW_PUSHBUTTON = 0x0004,
 DEV_PW_REGISTRAR_SPECIFIED = 0x0005
};


enum wps_msg_flag {
 WPS_MSG_FLAG_MORE = 0x01,
 WPS_MSG_FLAG_LEN = 0x02
};


enum wps_msg_type {
 WPS_Beacon = 0x01,
 WPS_ProbeRequest = 0x02,
 WPS_ProbeResponse = 0x03,
 WPS_M1 = 0x04,
 WPS_M2 = 0x05,
 WPS_M2D = 0x06,
 WPS_M3 = 0x07,
 WPS_M4 = 0x08,
 WPS_M5 = 0x09,
 WPS_M6 = 0x0a,
 WPS_M7 = 0x0b,
 WPS_M8 = 0x0c,
 WPS_WSC_ACK = 0x0d,
 WPS_WSC_NACK = 0x0e,
 WPS_WSC_DONE = 0x0f
};
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_defs.h"
enum wps_config_error {
 WPS_CFG_NO_ERROR = 0,
 WPS_CFG_OOB_IFACE_READ_ERROR = 1,
 WPS_CFG_DECRYPTION_CRC_FAILURE = 2,
 WPS_CFG_24_CHAN_NOT_SUPPORTED = 3,
 WPS_CFG_50_CHAN_NOT_SUPPORTED = 4,
 WPS_CFG_SIGNAL_TOO_WEAK = 5,
 WPS_CFG_NETWORK_AUTH_FAILURE = 6,
 WPS_CFG_NETWORK_ASSOC_FAILURE = 7,
 WPS_CFG_NO_DHCP_RESPONSE = 8,
 WPS_CFG_FAILED_DHCP_CONFIG = 9,
 WPS_CFG_IP_ADDR_CONFLICT = 10,
 WPS_CFG_NO_CONN_TO_REGISTRAR = 11,
 WPS_CFG_MULTIPLE_PBC_DETECTED = 12,
 WPS_CFG_ROGUE_SUSPECTED = 13,
 WPS_CFG_DEVICE_BUSY = 14,
 WPS_CFG_SETUP_LOCKED = 15,
 WPS_CFG_MSG_TIMEOUT = 16,
 WPS_CFG_REG_SESS_TIMEOUT = 17,
 WPS_CFG_DEV_PASSWORD_AUTH_FAILURE = 18
};


enum wps_error_indication {
 WPS_EI_NO_ERROR,
 WPS_EI_SECURITY_TKIP_ONLY_PROHIBITED,
 WPS_EI_SECURITY_WEP_PROHIBITED,
 NUM_WPS_EI_VALUES
};
# 265 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_defs.h"
enum wps_state {
 WPS_STATE_NOT_CONFIGURED = 1,
 WPS_STATE_CONFIGURED = 2
};


enum wps_assoc_state {
 WPS_ASSOC_NOT_ASSOC = 0,
 WPS_ASSOC_CONN_SUCCESS = 1,
 WPS_ASSOC_CFG_FAILURE = 2,
 WPS_ASSOC_FAILURE = 3,
 WPS_ASSOC_IP_FAILURE = 4
};




enum wps_dev_categ {
 WPS_DEV_COMPUTER = 1,
 WPS_DEV_INPUT = 2,
 WPS_DEV_PRINTER = 3,
 WPS_DEV_CAMERA = 4,
 WPS_DEV_STORAGE = 5,
 WPS_DEV_NETWORK_INFRA = 6,
 WPS_DEV_DISPLAY = 7,
 WPS_DEV_MULTIMEDIA = 8,
 WPS_DEV_GAMING = 9,
 WPS_DEV_PHONE = 10
};

enum wps_dev_subcateg {
 WPS_DEV_COMPUTER_PC = 1,
 WPS_DEV_COMPUTER_SERVER = 2,
 WPS_DEV_COMPUTER_MEDIA_CENTER = 3,
 WPS_DEV_PRINTER_PRINTER = 1,
 WPS_DEV_PRINTER_SCANNER = 2,
 WPS_DEV_CAMERA_DIGITAL_STILL_CAMERA = 1,
 WPS_DEV_STORAGE_NAS = 1,
 WPS_DEV_NETWORK_INFRA_AP = 1,
 WPS_DEV_NETWORK_INFRA_ROUTER = 2,
 WPS_DEV_NETWORK_INFRA_SWITCH = 3,
 WPS_DEV_DISPLAY_TV = 1,
 WPS_DEV_DISPLAY_PICTURE_FRAME = 2,
 WPS_DEV_DISPLAY_PROJECTOR = 3,
 WPS_DEV_MULTIMEDIA_DAR = 1,
 WPS_DEV_MULTIMEDIA_PVR = 2,
 WPS_DEV_MULTIMEDIA_MCX = 3,
 WPS_DEV_GAMING_XBOX = 1,
 WPS_DEV_GAMING_XBOX360 = 2,
 WPS_DEV_GAMING_PLAYSTATION = 3,
 WPS_DEV_PHONE_WINDOWS_MOBILE = 1
};



enum wps_request_type {
 WPS_REQ_ENROLLEE_INFO = 0,
 WPS_REQ_ENROLLEE = 1,
 WPS_REQ_REGISTRAR = 2,
 WPS_REQ_WLAN_MANAGER_REGISTRAR = 3
};


enum wps_response_type {
 WPS_RESP_ENROLLEE_INFO = 0,
 WPS_RESP_ENROLLEE = 1,
 WPS_RESP_REGISTRAR = 2,
 WPS_RESP_AP = 3
};
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h" 1
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h" 1
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 350 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 350 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 2 3
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);


void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
void * memrchr (const void *, int, size_t);
void * rawmemchr (const void *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


char *strcasestr (const char *, const char *);
char *strchrnul (const char *, int);


char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);






char *strerror_r (int, char *, size_t);
# 112 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);







int strverscmp (const char *, const char *);
# 172 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *__attribute__((__nonnull__ (1))) basename (const char *) __asm__("" "__gnu_basename");


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 74 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 224 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
char * ctermid (char *);


char * cuserid (char *);

FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);



int fcloseall (void);



int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));


int asprintf (char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int vasprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));


int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);



char * fgets_unlocked (char *restrict, int, FILE *restrict);
int fputs_unlocked (const char *restrict, FILE *restrict);
# 577 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 624 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
FILE *_fopencookie_r (struct _reent *, void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
# 687 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 1 3
# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/stdlib.h" 1 3
# 21 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/alloca.h" 1 3
# 23 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3
# 33 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);

char * secure_getenv (const char *__string);

char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);


int mkostemp (char *, int);
int mkostemps (char *, int, int);


int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;

void *reallocarray(void *, size_t, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2, 3)));
void *reallocf(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)));


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);


void setkey (const char *__key);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);


double strtod_l (const char *restrict, char **restrict, locale_t);
float strtof_l (const char *restrict, char **restrict, locale_t);

extern long double strtold_l (const char *restrict, char **restrict,
         locale_t);

long strtol_l (const char *restrict, char **restrict, int, locale_t);
unsigned long strtoul_l (const char *restrict, char **restrict, int,
    locale_t __loc);
long long strtoll_l (const char *restrict, char **restrict, int, locale_t);
unsigned long long strtoull_l (const char *restrict, char **restrict, int,
          locale_t __loc);


int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void *__arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 224 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int posix_memalign (void **, size_t, size_t) __attribute__((__nonnull__ (1)))
     __attribute__((__warn_unused_result__));


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);






void qsort_r (void *__base, size_t __nmemb, size_t __size, int (*_compar)(const void *, const void *, void *), void *__thunk);
# 322 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
int at_quick_exit(void (*)(void));
__attribute__((__noreturn__)) void
 quick_exit(int);



# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h" 2


# 21 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
typedef time_t os_time_t;






void os_sleep(os_time_t sec, os_time_t usec);

struct os_time {
 os_time_t sec;
 suseconds_t usec;
};



struct os_tm {
    int sec;
    int min;
    int hour;
    int day;
    int month;
    int year;
};






int os_get_time(struct os_time *t);
# 86 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
int os_mktime(int year, int month, int day, int hour, int min, int sec,
       os_time_t *t);

int os_gmtime(os_time_t t, struct os_tm *tm);






int os_daemonize(const char *pid_file);





void os_daemonize_terminate(const char *pid_file);







int os_get_random(unsigned char *buf, size_t len);





unsigned long os_random(void);
# 131 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
char * os_rel2abs_path(const char *rel_path);
# 141 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
int os_program_init(void);
# 151 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
void os_program_deinit(void);
# 163 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
int os_setenv(const char *name, const char *value, int overwrite);
# 173 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
int os_unsetenv(const char *name);
# 185 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
char * os_readfile(const char *name, size_t *len);
# 203 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
void *wpa_supplicant_malloc(size_t size);
void *wpa_supplicant_realloc(void *ptr, size_t size);
void *wpa_supplicant_zalloc(size_t nmemb, size_t size);
void wpa_supplicant_free(void *ptr);
void wpa_supplicant_bzero(void *s, size_t n);
# 238 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
char * ets_strdup(const char *s);
# 304 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
static inline int os_snprintf_error(size_t size, int res)
{
        return res < 0 || (unsigned int) res >= size;
}

static inline void * os_realloc_array(void *ptr, size_t nmemb, size_t size)
{
 if (size && nmemb > (~(size_t) 0) / size)
  return 
# 312 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h" 3 4
        ((void *)0)
# 312 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/port/include/os.h"
            ;
 return wpa_supplicant_realloc((ptr), (nmemb * size));
}
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/list.h" 1
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/list.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/list.h" 2




struct dl_list {
 struct dl_list *next;
 struct dl_list *prev;
};

static inline void dl_list_init(struct dl_list *list)
{
 list->next = list;
 list->prev = list;
}

static inline void dl_list_add(struct dl_list *list, struct dl_list *item)
{
 item->next = list->next;
 item->prev = list;
 list->next->prev = item;
 list->next = item;
}

static inline void dl_list_add_tail(struct dl_list *list, struct dl_list *item)
{
 dl_list_add(list->prev, item);
}

static inline void dl_list_del(struct dl_list *item)
{
 item->next->prev = item->prev;
 item->prev->next = item->next;
 item->next = 
# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/list.h" 3 4
             ((void *)0)
# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/list.h"
                 ;
 item->prev = 
# 52 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/list.h" 3 4
             ((void *)0)
# 52 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/list.h"
                 ;
}

static inline int dl_list_empty(struct dl_list *list)
{
 return list->next == list;
}

static inline unsigned int dl_list_len(struct dl_list *list)
{
 struct dl_list *item;
 int count = 0;
 for (item = list->next; item != list; item = item->next)
  count++;
 return count;
}
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h" 2



typedef uint64_t u64;
typedef uint32_t u32;
typedef uint16_t u16;
typedef uint8_t u8;
typedef int64_t s64;
typedef int32_t s32;
typedef int16_t s16;
typedef int8_t s8;
# 118 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
struct wpa_ssid_value {
 u8 ssid[32];
 size_t ssid_len;
};



static inline u16 WPA_GET_BE16(const u8 *a)
{
 return (a[0] << 8) | a[1];
}

static inline void WPA_PUT_BE16(u8 *a, u16 val)
{
 a[0] = val >> 8;
 a[1] = val & 0xff;
}

static inline u16 WPA_GET_LE16(const u8 *a)
{
 return (a[1] << 8) | a[0];
}

static inline void WPA_PUT_LE16(u8 *a, u16 val)
{
 a[1] = val >> 8;
 a[0] = val & 0xff;
}

static inline u32 WPA_GET_BE24(const u8 *a)
{
 return (a[0] << 16) | (a[1] << 8) | a[2];
}

static inline void WPA_PUT_BE24(u8 *a, u32 val)
{
 a[0] = (val >> 16) & 0xff;
 a[1] = (val >> 8) & 0xff;
 a[2] = val & 0xff;
}

static inline u32 WPA_GET_BE32(const u8 *a)
{
 return ((u32) a[0] << 24) | (a[1] << 16) | (a[2] << 8) | a[3];
}

static inline void WPA_PUT_BE32(u8 *a, u32 val)
{
 a[0] = (val >> 24) & 0xff;
 a[1] = (val >> 16) & 0xff;
 a[2] = (val >> 8) & 0xff;
 a[3] = val & 0xff;
}

static inline u32 WPA_GET_LE32(const u8 *a)
{
 return ((u32) a[3] << 24) | (a[2] << 16) | (a[1] << 8) | a[0];
}

static inline void WPA_PUT_LE32(u8 *a, u32 val)
{
 a[3] = (val >> 24) & 0xff;
 a[2] = (val >> 16) & 0xff;
 a[1] = (val >> 8) & 0xff;
 a[0] = val & 0xff;
}

static inline u64 WPA_GET_BE64(const u8 *a)
{
 return (((u64) a[0]) << 56) | (((u64) a[1]) << 48) |
  (((u64) a[2]) << 40) | (((u64) a[3]) << 32) |
  (((u64) a[4]) << 24) | (((u64) a[5]) << 16) |
  (((u64) a[6]) << 8) | ((u64) a[7]);
}

static inline void WPA_PUT_BE64(u8 *a, u64 val)
{
 a[0] = val >> 56;
 a[1] = val >> 48;
 a[2] = val >> 40;
 a[3] = val >> 32;
 a[4] = val >> 24;
 a[5] = val >> 16;
 a[6] = val >> 8;
 a[7] = val & 0xff;
}

static inline u64 WPA_GET_LE64(const u8 *a)
{
 return (((u64) a[7]) << 56) | (((u64) a[6]) << 48) |
  (((u64) a[5]) << 40) | (((u64) a[4]) << 32) |
  (((u64) a[3]) << 24) | (((u64) a[2]) << 16) |
  (((u64) a[1]) << 8) | ((u64) a[0]);
}

static inline void WPA_PUT_LE64(u8 *a, u64 val)
{
 a[7] = val >> 56;
 a[6] = val >> 48;
 a[5] = val >> 40;
 a[4] = val >> 32;
 a[3] = val >> 24;
 a[2] = val >> 16;
 a[1] = val >> 8;
 a[0] = val & 0xff;
}
# 347 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
typedef u16 be16;
typedef u16 le16;
typedef u32 be32;
typedef u32 le32;
typedef u64 be64;
typedef u64 le64;
# 370 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
int hwaddr_aton(const char *txt, u8 *addr);
int hwaddr_masked_aton(const char *txt, u8 *addr, u8 *mask, u8 maskable);
int hwaddr_compact_aton(const char *txt, u8 *addr);
int hwaddr_aton2(const char *txt, u8 *addr);
int hex2byte(const char *hex);
int hexstr2bin(const char *hex, u8 *buf, size_t len);
void inc_byte_array(u8 *counter, size_t len);
void wpa_get_ntp_timestamp(u8 *buf);
int wpa_scnprintf(char *buf, size_t size, const char *fmt, ...);
int wpa_snprintf_hex_sep(char *buf, size_t buf_size, const u8 *data, size_t len,
    char sep);
int wpa_snprintf_hex(char *buf, size_t buf_size, const u8 *data, size_t len);
int wpa_snprintf_hex_uppercase(char *buf, size_t buf_size, const u8 *data,
          size_t len);

int hwaddr_mask_txt(char *buf, size_t len, const u8 *addr, const u8 *mask);
u8 rssi_to_rcpi(int rssi);
int os_time_expired(struct os_time *now,
  struct os_time *ts,
  os_time_t timeout_secs);
# 399 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
void printf_encode(char *txt, size_t maxlen, const u8 *data, size_t len);
size_t printf_decode(u8 *buf, size_t maxlen, const char *str);

const char * wpa_ssid_txt(const u8 *ssid, size_t ssid_len);

char * wpa_config_parse_string(const char *value, size_t *len);
int wpa_is_hex(const u8 *data, size_t len);
size_t wpa_merge_byte_arrays(u8 *res, size_t res_len,
    const u8 *src1, size_t src1_len,
    const u8 *src2, size_t src2_len);
char * dup_binstr(const void *src, size_t len);

static inline int is_zero_ether_addr(const u8 *a)
{
 return !(a[0] | a[1] | a[2] | a[3] | a[4] | a[5]);
}

static inline int is_broadcast_ether_addr(const u8 *a)
{
 return (a[0] & a[1] & a[2] & a[3] & a[4] & a[5]) == 0xff;
}

static inline int is_multicast_ether_addr(const u8 *a)
{
 return a[0] & 0x01;
}




# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpa_debug.h" 1
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpa_debug.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpabuf.h" 1
# 23 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpabuf.h"
struct wpabuf {
 size_t size;
 size_t used;
 u8 *ext_data;


};


int wpabuf_resize(struct wpabuf **buf, size_t add_len);
struct wpabuf * wpabuf_alloc(size_t len);
struct wpabuf * wpabuf_alloc_ext_data(u8 *data, size_t len);
struct wpabuf * wpabuf_alloc_copy(const void *data, size_t len);
struct wpabuf * wpabuf_dup(const struct wpabuf *src);
void wpabuf_free(struct wpabuf *buf);
void * wpabuf_put(struct wpabuf *buf, size_t len);
struct wpabuf * wpabuf_concat(struct wpabuf *a, struct wpabuf *b);
struct wpabuf * wpabuf_zeropad(struct wpabuf *buf, size_t len);
void wpabuf_printf(struct wpabuf *buf, const char *fmt, ...) __attribute__ ((format (printf, (2), (3))));







static inline size_t wpabuf_size(const struct wpabuf *buf)
{
 return buf->size;
}






static inline size_t wpabuf_len(const struct wpabuf *buf)
{
 return buf->used;
}






static inline size_t wpabuf_tailroom(const struct wpabuf *buf)
{
 return buf->size - buf->used;
}






static inline const void * wpabuf_head(const struct wpabuf *buf)
{
 if (buf->ext_data)
  return buf->ext_data;
 return buf + 1;
}

static inline const u8 * wpabuf_head_u8(const struct wpabuf *buf)
{
 return wpabuf_head(buf);
}






static inline void * wpabuf_mhead(struct wpabuf *buf)
{
 if (buf->ext_data)
  return buf->ext_data;
 return buf + 1;
}

static inline u8 * wpabuf_mhead_u8(struct wpabuf *buf)
{
 return wpabuf_mhead(buf);
}

static inline void wpabuf_put_u8(struct wpabuf *buf, u8 data)
{
 u8 *pos = wpabuf_put(buf, 1);
 *pos = data;
}

static inline void wpabuf_put_le16(struct wpabuf *buf, u16 data)
{
 u8 *pos = wpabuf_put(buf, 2);
 WPA_PUT_LE16(pos, data);
}

static inline void wpabuf_put_le32(struct wpabuf *buf, u32 data)
{
 u8 *pos = wpabuf_put(buf, 4);
 WPA_PUT_LE32(pos, data);
}

static inline void wpabuf_put_be16(struct wpabuf *buf, u16 data)
{
 u8 *pos = wpabuf_put(buf, 2);
 WPA_PUT_BE16(pos, data);
}

static inline void wpabuf_put_be24(struct wpabuf *buf, u32 data)
{
 u8 *pos = wpabuf_put(buf, 3);
 WPA_PUT_BE24(pos, data);
}

static inline void wpabuf_put_be32(struct wpabuf *buf, u32 data)
{
 u8 *pos = wpabuf_put(buf, 4);
 WPA_PUT_BE32(pos, data);
}

static inline void wpabuf_put_data(struct wpabuf *buf, const void *data,
       size_t len)
{
 if (data)
  memcpy((wpabuf_put(buf, len)), (data), (len));
}

static inline void wpabuf_put_buf(struct wpabuf *dst,
      const struct wpabuf *src)
{
 wpabuf_put_data(dst, wpabuf_head(src), wpabuf_len(src));
}

static inline void wpabuf_set(struct wpabuf *buf, const void *data, size_t len)
{
 buf->ext_data = (u8 *) data;
 buf->size = buf->used = len;
}

static inline void wpabuf_put_str(struct wpabuf *dst, const char *str)
{
 wpabuf_put_data(dst, str, strlen(str));
}
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpa_debug.h" 2
# 33 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpa_debug.h"
enum { MSG_MSGDUMP, MSG_DEBUG, MSG_INFO, MSG_WARNING, MSG_ERROR };





int wpa_debug_open_file(const char *path);
void wpa_debug_close_file(void);
# 49 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpa_debug.h"
void wpa_debug_print_timestamp(void);
# 178 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpa_debug.h"
void wpa_msg(void *ctx, int level, const char *fmt, ...) __attribute__ ((format (printf, (3), (4))));
# 192 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpa_debug.h"
void wpa_msg_ctrl(void *ctx, int level, const char *fmt, ...)
__attribute__ ((format (printf, (3), (4))));

typedef void (*wpa_msg_cb_func)(void *ctx, int level, const char *txt,
    size_t len);

typedef void (*eloop_timeout_handler)(void *eloop_data, void *user_ctx);

int eloop_cancel_timeout(eloop_timeout_handler handler,
    void *eloop_data, void *user_data);

int eloop_register_timeout(unsigned int secs, unsigned int usecs,
      eloop_timeout_handler handler,
      void *eloop_data, void *user_data);
# 430 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h" 2


struct wpa_freq_range_list {
 struct wpa_freq_range {
  unsigned int min;
  unsigned int max;
 } *range;
 unsigned int num;
};



void wpa_bin_clear_free(void *bin, size_t len);
int int_array_len(const int *a);
void bin_clear_free(void *bin, size_t len);
void str_clear_free(char *str);
char * get_param(const char *cmd, const char *param);
void * os_memdup(const void *src, size_t len);
# 458 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/utils/common.h"
void * __hide_aliasing_typecast(void *foo);
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 1





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 2




typedef struct bl_wifi_timer {
    void *_storage_0[3];
    uint32_t exp_time;
} bl_wifi_timer_t;


typedef struct {
    
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        capable;
    
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        required;
} wifi_pmf_config_t;

typedef enum {
    WIFI_CIPHER_TYPE_NONE = 0,
    WIFI_CIPHER_TYPE_WEP40,
    WIFI_CIPHER_TYPE_WEP104,
    WIFI_CIPHER_TYPE_TKIP,
    WIFI_CIPHER_TYPE_CCMP,
    WIFI_CIPHER_TYPE_TKIP_CCMP,
    WIFI_CIPHER_TYPE_AES_CMAC128,
    WIFI_CIPHER_TYPE_SMS4,
    WIFI_CIPHER_TYPE_UNKNOWN,
} wifi_cipher_type_t;

typedef enum {
    WIFI_APPIE_WPA_RSN = 0,
    WIFI_APPIE_WPS_PR,
    WIFI_APPIE_WPS_AR,
    WIFI_APPIE_CUSTOM,
    WIFI_APPIE_MAX,
} wifi_appie_t;

typedef enum wpa_alg {
    WIFI_WPA_ALG_NONE = 0,
    WIFI_WPA_ALG_WEP40 = 1,
    WIFI_WPA_ALG_TKIP = 2,
    WIFI_WPA_ALG_CCMP = 3,
    WIFI_WAPI_ALG_SMS4 = 4,
    WIFI_WPA_ALG_WEP104 = 5,
    WIFI_WPA_ALG_WEP = 6,
    WIFI_WPA_ALG_IGTK = 7,
    WIFI_WPA_ALG_PMK = 8,
    WIFI_WPA_ALG_GCMP = 9,
} wpa_alg_t;

typedef struct {
    int proto;
    int pairwise_cipher;
    int group_cipher;
    int key_mgmt;
    int capabilities;
    size_t num_pmkid;
    const uint8_t *pmkid;
    int mgmt_group_cipher;
} wifi_wpa_ie_t;
# 92 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
typedef enum {
    NONE_AUTH = 0x01,
    WPA_AUTH_UNSPEC = 0x02,
    WPA_AUTH_PSK = 0x03,
    WPA2_AUTH_ENT = 0x04,
    WPA2_AUTH_PSK = 0x05,
    WPA_AUTH_CCKM = 0x06,
    WPA2_AUTH_CCKM = 0x07,
    WPA2_AUTH_PSK_SHA256 = 0x08,
    WPA3_AUTH_PSK = 0x09,
    WPA2_AUTH_ENT_SHA256 = 0x0a,
    WAPI_AUTH_PSK = 0x0b,
    WAPI_AUTH_CERT = 0x0c,
    WPA2_AUTH_INVALID = 0x0d,
} wpa_auth_mode_t;

typedef enum {
    WIFI_AUTH_OPEN = 0,
    WIFI_AUTH_WEP,
    WIFI_AUTH_WPA_PSK,
    WIFI_AUTH_WPA2_PSK,
    WIFI_AUTH_WPA_WPA2_PSK,
    WIFI_AUTH_WPA2_ENTERPRISE,
    WIFI_AUTH_WPA3_PSK,
    WIFI_AUTH_WPA2_WPA3_PSK,
    WIFI_AUTH_WAPI_PSK,
    WIFI_AUTH_MAX
} wifi_auth_mode_t;

struct wifi_ssid {
    int len;
    uint8_t ssid[32];
};
# 137 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
typedef enum {
    SEC_PROTO_NONE,
    SEC_PROTO_WEP_STATIC,
    SEC_PROTO_WPA,
    SEC_PROTO_WPA2,
    SEC_PROTO_WPA3,
    SEC_PROTO_WAPI,
} sec_proto_t;

typedef struct {
    uint8_t vif_idx;
    uint8_t sta_idx;
    uint8_t mac[6];
    uint8_t bssid[6];
    struct wifi_ssid ssid;
    sec_proto_t proto;
    uint16_t key_mgmt;
    uint8_t pairwise_cipher;
    uint8_t group_cipher;
    char passphrase[64 + 1];
    
# 157 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 157 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        pmf_required;
    uint8_t mgmt_group_cipher;
} wifi_connect_parm_t;

typedef struct {
    uint8_t vif_idx;
    uint8_t mac[6];
    struct wifi_ssid ssid;
    wifi_auth_mode_t auth_mode;
    wifi_cipher_type_t pairwise_cipher;
    char passphrase[64];
} wifi_ap_parm_t;

struct wpa_funcs {
    
# 171 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 171 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        (*wpa_sta_init)(void);
    
# 172 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 172 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        (*wpa_sta_deinit)(void);
    void (*wpa_sta_config)(wifi_connect_parm_t *bssid);
    void (*wpa_sta_connect)(wifi_connect_parm_t *bssid);
    void (*wpa_sta_disconnected_cb)(uint8_t reason_code);
    int (*wpa_sta_rx_eapol)(uint8_t *src_addr, uint8_t *buf, uint32_t len);
    void *(*wpa_ap_init)(wifi_ap_parm_t *parm);
    
# 178 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 178 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        (*wpa_ap_deinit)(void *data);
    
# 179 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 179 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        (*wpa_ap_join)(void **sm, uint8_t *mac, uint8_t *wpa_ie, uint8_t wpa_ie_len);
    void (*wpa_ap_sta_associated)(void *wpa_sm, uint8_t sta_idx);
    
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        (*wpa_ap_remove)(void *sm);
    
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        (*wpa_ap_rx_eapol)(void *hapd_data, void *sm, uint8_t *data, size_t data_len);
    int (*wpa_parse_wpa_ie)(const uint8_t *wpa_ie, size_t wpa_ie_len, wifi_wpa_ie_t *data);


    uint8_t *(*wpa3_build_sae_msg)(uint8_t *bssid, uint8_t *mac, uint8_t *passphrase, uint32_t sae_msg_type, size_t *sae_msg_len);
    int (*wpa3_parse_sae_msg)(uint8_t *buf, size_t len, uint32_t type, uint16_t status);
};

struct wps_scan_ie {
    uint8_t *bssid;
    uint8_t chan;
    uint16_t capinfo;
    uint8_t *ssid;
    uint8_t ssid_len;
    uint8_t *wpa;
    uint8_t *rsn;
    uint8_t *wps;
};

struct wps_funcs {
    
# 202 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
   _Bool 
# 202 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
        (*wps_parse_scan_result)(struct wps_scan_ie *scan);
    int (*wps_sm_rx_eapol)(uint8_t *src_addr, uint8_t *buf, uint32_t len);
    int (*wps_config)(uint8_t vif_idx, uint8_t sta_idx);
    int (*wps_start_pending)(void);
};

typedef enum wps_status {
    WPS_STATUS_DISABLE = 0,
    WPS_STATUS_SCANNING,
    WPS_STATUS_PENDING,
    WPS_STATUS_SUCCESS,
    WPS_STATUS_MAX,
} wps_status_t;

typedef void bl_wifi_timer_func_t(void *arg);
typedef void(*wifi_tx_cb_t)(void *);

int bl_wifi_ap_deauth_internal(uint8_t vif_idx, uint8_t sta_idx, uint32_t reason);

# 220 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
_Bool 
# 220 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
    bl_wifi_auth_done_internal(uint8_t sta_idx, uint16_t reason_code);
void *bl_wifi_get_hostap_private_internal(void);
void bl_wifi_timer_arm(bl_wifi_timer_t *ptimer, uint32_t time_ms, 
# 222 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
                                                                 _Bool 
# 222 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
                                                                      repeat_flag);
void bl_wifi_timer_disarm(bl_wifi_timer_t *ptimer);
void bl_wifi_timer_done(bl_wifi_timer_t *ptimer);
void bl_wifi_timer_setfn(bl_wifi_timer_t *ptimer, bl_wifi_timer_func_t *pfunction, void *parg);
int bl_wifi_set_appie_internal(uint8_t vif_idx, wifi_appie_t type, uint8_t *ie, uint16_t len, 
# 226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
                                                                                             _Bool 
# 226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
                                                                                                  sta);
int bl_wifi_unset_appie_internal(uint8_t vif_idx, wifi_appie_t type);

# 228 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
_Bool 
# 228 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
    bl_wifi_wpa_ptk_init_done_internal(uint8_t sta_idx);
int bl_wifi_register_wpa_cb_internal(const struct wpa_funcs *cb);
int bl_wifi_unregister_wpa_cb_internal(void);

# 231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
_Bool 
# 231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
    bl_wifi_skip_supp_pmkcaching(void);
int bl_wifi_sta_update_ap_info_internal(void);
uint8_t bl_wifi_sta_set_reset_param_internal(uint8_t reset_flag);

# 234 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
_Bool 
# 234 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
    bl_wifi_sta_is_ap_notify_completed_rsne_internal(void);

# 235 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
_Bool 
# 235 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
    bl_wifi_sta_is_running_internal(void);
int bl_wifi_set_ap_key_internal(uint8_t vif_idx, uint8_t sta_idx, wpa_alg_t alg, int key_idx, uint8_t *key, size_t key_len, 
# 236 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
                                                                                                                           _Bool 
# 236 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
                                                                                                                                pairwise);
int bl_wifi_set_sta_key_internal(uint8_t vif_idx, uint8_t sta_idx, wpa_alg_t alg, int key_idx, int set_tx, uint8_t *seq, size_t seq_len, uint8_t *key, size_t key_len, 
# 237 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h" 3 4
                                                                                                                                                                      _Bool 
# 237 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/supplicant_api.h"
                                                                                                                                                                           pairwise);

int bl_wifi_set_igtk_internal(uint8_t vif_idx, uint8_t sta_idx, uint16_t key_idx, const uint8_t *pn, const uint8_t *key);
int bl_wifi_get_sta_gtk(uint8_t vif_idx, uint8_t *out_buf, uint8_t *out_len);
int bl_wifi_get_assoc_bssid_internal(uint8_t vif_idx, uint8_t *bssid);
int bl_wifi_set_wps_cb_internal(const struct wps_funcs *wps_cb);
wps_status_t bl_wifi_get_wps_status_internal(void);
void bl_wifi_set_wps_status_internal(wps_status_t status);
# 21 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 2





enum wsc_op_code {
 WSC_UPnP = 0 ,
 WSC_Start = 0x01,
 WSC_ACK = 0x02,
 WSC_NACK = 0x03,
 WSC_MSG = 0x04,
 WSC_Done = 0x05,
 WSC_FRAG_ACK = 0x06
};

struct wps_registrar;
struct wps_er;
struct wps_parse_attr;
# 55 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
struct wps_credential {
 u8 ssid[32];
 size_t ssid_len;
 u16 auth_type;
 u16 encr_type;
 u8 key_idx;
 u8 key[64];
 size_t key_len;
 u8 mac_addr[6];
 const u8 *cred_attr;
 size_t cred_attr_len;
 u16 ap_channel;
};
# 94 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
struct wps_device_data {
 u8 mac_addr[6];
 char *device_name;
 char *manufacturer;
 char *model_name;
 char *model_number;
 char *serial_number;
 u8 pri_dev_type[8];

 u8 sec_dev_type[5][8];
 u8 num_sec_dev_types;
 u32 os_version;
 u8 rf_bands;
 u16 config_methods;
 struct wpabuf *vendor_ext_m1;
 struct wpabuf *vendor_ext[10];

 int p2p;
};




struct wps_config {



 struct wps_context *wps;




 int registrar;




 const u8 *pin;




 size_t pin_len;




 int pbc;




 const struct wpabuf *assoc_wps_ie;
# 156 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 const struct wps_credential *new_ap_settings;




 const u8 *peer_addr;
# 170 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 int use_psk_key;




 u16 dev_pw_id;
# 185 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 const u8 *p2p_dev_addr;







 int pbc_in_m1;
};


struct discard_ap_list_t{
 u8 bssid[6];
};

struct wps_data * wps_init(void);

void wps_deinit(void);




enum wps_process_res {



 WPS_DONE,




 WPS_CONTINUE,




 WPS_FAILURE,





 WPS_PENDING,
 WPS_IGNORE,

 WPS_FRAGMENT
};
enum wps_process_res wps_process_msg(struct wps_data *wps,
         enum wsc_op_code op_code,
         const struct wpabuf *msg);

struct wpabuf * wps_get_msg(struct wps_data *wps, enum wsc_op_code *op_code);

int wps_is_selected_pbc_registrar(const struct wpabuf *msg, u8 *bssid);
int wps_is_selected_pin_registrar(const struct wpabuf *msg, u8 *bssid);
int wps_ap_priority_compar(const struct wpabuf *wps_a,
      const struct wpabuf *wps_b);
int wps_is_addr_authorized(const struct wpabuf *msg, const u8 *addr,
      int ver1_compat);
const u8 * wps_get_uuid_e(const struct wpabuf *msg);
int wps_is_20(const struct wpabuf *msg);

struct wpabuf * wps_build_assoc_req_ie(enum wps_request_type req_type);
struct wpabuf * wps_build_assoc_resp_ie(void);
struct wpabuf * wps_build_probe_req_ie(u16 pw_id, struct wps_device_data *dev,
           const u8 *uuid,
           enum wps_request_type req_type,
           unsigned int num_req_dev_types,
           const u8 *req_dev_types);





struct wps_registrar_config {
# 271 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 int (*new_psk_cb)(void *ctx, const u8 *mac_addr, const u8 *psk,
     size_t psk_len);
# 285 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 int (*set_ie_cb)(void *ctx, struct wpabuf *beacon_ie,
    struct wpabuf *probe_resp_ie);
# 298 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 void (*pin_needed_cb)(void *ctx, const u8 *uuid_e,
         const struct wps_device_data *dev);
# 312 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 void (*reg_success_cb)(void *ctx, const u8 *mac_addr,
          const u8 *uuid_e, const u8 *dev_pw,
          size_t dev_pw_len);
# 331 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 void (*set_sel_reg_cb)(void *ctx, int sel_reg, u16 dev_passwd_id,
          u16 sel_reg_config_methods);
# 345 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 void (*enrollee_seen_cb)(void *ctx, const u8 *addr, const u8 *uuid_e,
     const u8 *pri_dev_type, u16 config_methods,
     u16 dev_password_id, u8 request_type,
     const char *dev_name);




 void *cb_ctx;
# 363 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 int skip_cred_build;
# 373 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 const u8 *extra_cred;




 size_t extra_cred_len;
# 390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 int disable_auto_conf;




 int static_wep_only;




 int dualband;
};





enum wps_event {



 WPS_EV_M2D,




 WPS_EV_FAIL,




 WPS_EV_SUCCESS,




 WPS_EV_PWD_AUTH_FAIL,




 WPS_EV_PBC_OVERLAP,




 WPS_EV_PBC_TIMEOUT,




 WPS_EV_ER_AP_ADD,




 WPS_EV_ER_AP_REMOVE,




 WPS_EV_ER_ENROLLEE_ADD,




 WPS_EV_ER_ENROLLEE_REMOVE,




 WPS_EV_ER_AP_SETTINGS,




 WPS_EV_ER_SET_SELECTED_REGISTRAR,




 WPS_EV_AP_PIN_SUCCESS
};




union wps_event_data {



 struct wps_event_m2d {
  u16 config_methods;
  const u8 *manufacturer;
  size_t manufacturer_len;
  const u8 *model_name;
  size_t model_name_len;
  const u8 *model_number;
  size_t model_number_len;
  const u8 *serial_number;
  size_t serial_number_len;
  const u8 *dev_name;
  size_t dev_name_len;
  const u8 *primary_dev_type;
  u16 config_error;
  u16 dev_password_id;
 } m2d;





 struct wps_event_fail {
  int msg;
  u16 config_error;
  u16 error_indication;
 } fail;

 struct wps_event_pwd_auth_fail {
  int enrollee;
  int part;
 } pwd_auth_fail;

 struct wps_event_er_ap {
  const u8 *uuid;
  const u8 *mac_addr;
  const char *friendly_name;
  const char *manufacturer;
  const char *manufacturer_url;
  const char *model_description;
  const char *model_name;
  const char *model_number;
  const char *model_url;
  const char *serial_number;
  const char *upc;
  const u8 *pri_dev_type;
  u8 wps_state;
 } ap;

 struct wps_event_er_enrollee {
  const u8 *uuid;
  const u8 *mac_addr;
  int m1_received;
  u16 config_methods;
  u16 dev_passwd_id;
  const u8 *pri_dev_type;
  const char *dev_name;
  const char *manufacturer;
  const char *model_name;
  const char *model_number;
  const char *serial_number;
 } enrollee;

 struct wps_event_er_ap_settings {
  const u8 *uuid;
  const struct wps_credential *cred;
 } ap_settings;

 struct wps_event_er_set_selected_registrar {
  const u8 *uuid;
  int sel_reg;
  u16 dev_passwd_id;
  u16 sel_reg_config_methods;
  enum {
   WPS_ER_SET_SEL_REG_START,
   WPS_ER_SET_SEL_REG_DONE,
   WPS_ER_SET_SEL_REG_FAILED
  } state;
 } set_sel_reg;
};
# 582 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
struct wps_context {



 int ap;




 struct wps_registrar *registrar;




 enum wps_state wps_state;




 int ap_setup_locked;




 u8 uuid[16];
# 615 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 u8 ssid[32];




 size_t ssid_len;




 struct wps_device_data dev;




 void *dh_ctx;




 struct wpabuf *dh_privkey;




 struct wpabuf *dh_pubkey;






 u16 config_methods;




 u16 encr_types;




 u16 auth_types;
# 674 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
 u8 *network_key;




 size_t network_key_len;







 u8 psk[32];




 int psk_set;







 u8 *ap_settings;




 size_t ap_settings_len;




 char *friendly_name;




 char *manufacturer_url;




 char *model_description;




 char *model_url;




 char *upc;







 int (*cred_cb)(void *ctx, const struct wps_credential *cred);







 void (*event_cb)(void *ctx, enum wps_event event,
    union wps_event_data *data);




 void *cb_ctx;
# 762 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
};

struct wps_registrar *
wps_registrar_init(struct wps_context *wps,
     const struct wps_registrar_config *cfg);
void wps_registrar_deinit(struct wps_registrar *reg);


int wps_registrar_add_pin(struct wps_registrar *reg, const u8 *addr,
     const u8 *uuid, const u8 *pin, size_t pin_len,
     int timeout);
int wps_registrar_invalidate_pin(struct wps_registrar *reg, const u8 *uuid);
int wps_registrar_unlock_pin(struct wps_registrar *reg, const u8 *uuid);

int wps_registrar_wps_cancel(struct wps_registrar *reg);

int wps_registrar_button_pushed(struct wps_registrar *reg,
    const u8 *p2p_dev_addr);
void wps_registrar_complete(struct wps_registrar *registrar, const u8 *uuid_e,
       const u8 *dev_pw, size_t dev_pw_len);
void wps_registrar_probe_req_rx(struct wps_registrar *reg, const u8 *addr,
    const struct wpabuf *wps_data,
    int p2p_wildcard);
int wps_registrar_update_ie(struct wps_registrar *reg);
int wps_registrar_get_info(struct wps_registrar *reg, const u8 *addr,
      char *buf, size_t buflen);
int wps_registrar_config_ap(struct wps_registrar *reg,
       struct wps_credential *cred);
# 799 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
int wps_build_credential_wrap(struct wpabuf *msg,
         const struct wps_credential *cred);

unsigned int wps_pin_checksum(unsigned int pin);
unsigned int wps_pin_valid(unsigned int pin);
int wps_pin_str_valid(const char *pin);


unsigned int wps_generate_pin(void);






int wps_attr_text(struct wpabuf *data, char *buf, char *end);

struct wps_er * wps_er_init(struct wps_context *wps, const char *ifname,
       const char *filter);
void wps_er_refresh(struct wps_er *er);
void wps_er_deinit(struct wps_er *er, void (*cb)(void *ctx), void *ctx);
void wps_er_set_sel_reg(struct wps_er *er, int sel_reg, u16 dev_passwd_id,
   u16 sel_reg_config_methods);
int wps_er_pbc(struct wps_er *er, const u8 *uuid);
int wps_er_learn(struct wps_er *er, const u8 *uuid, const u8 *pin,
   size_t pin_len);
int wps_er_set_config(struct wps_er *er, const u8 *uuid,
        const struct wps_credential *cred);
int wps_er_config(struct wps_er *er, const u8 *uuid, const u8 *pin,
    size_t pin_len, const struct wps_credential *cred);






int wps_dev_type_str2bin(const char *str, u8 dev_type[8]);
char * wps_dev_type_bin2str(const u8 dev_type[8], char *buf,
       size_t buf_len);
void uuid_gen_mac_addr(const u8 *mac_addr, u8 *uuid);
u16 wps_config_methods_str2bin(const char *str);
# 852 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
struct wpabuf * ndef_parse_wifi(const struct wpabuf *buf);
struct wpabuf * ndef_build_wifi(const struct wpabuf *buf);
struct wpabuf * ndef_build_wifi_hr(void);


int wps_validate_beacon(const struct wpabuf *wps_ie);
int wps_validate_beacon_probe_resp(const struct wpabuf *wps_ie, int probe,
       const u8 *addr);
int wps_validate_probe_req(const struct wpabuf *wps_ie, const u8 *addr);
int wps_validate_assoc_req(const struct wpabuf *wps_ie);
int wps_validate_assoc_resp(const struct wpabuf *wps_ie);
int wps_validate_m1(const struct wpabuf *tlvs);
int wps_validate_m2(const struct wpabuf *tlvs);
int wps_validate_m2d(const struct wpabuf *tlvs);
int wps_validate_m3(const struct wpabuf *tlvs);
int wps_validate_m4(const struct wpabuf *tlvs);
int wps_validate_m4_encr(const struct wpabuf *tlvs, int wps2);
int wps_validate_m5(const struct wpabuf *tlvs);
int wps_validate_m5_encr(const struct wpabuf *tlvs, int wps2);
int wps_validate_m6(const struct wpabuf *tlvs);
int wps_validate_m6_encr(const struct wpabuf *tlvs, int wps2);
int wps_validate_m7(const struct wpabuf *tlvs);
int wps_validate_m7_encr(const struct wpabuf *tlvs, int ap, int wps2);
int wps_validate_m8(const struct wpabuf *tlvs);
int wps_validate_m8_encr(const struct wpabuf *tlvs, int ap, int wps2);
int wps_validate_wsc_ack(const struct wpabuf *tlvs);
int wps_validate_wsc_nack(const struct wpabuf *tlvs);
int wps_validate_wsc_done(const struct wpabuf *tlvs);
int wps_validate_upnp_set_selected_registrar(const struct wpabuf *tlvs);
# 1002 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
enum wps_cb_status {
 WPS_CB_ST_SUCCESS = 0,
 WPS_CB_ST_FAILED,
 WPS_CB_ST_TIMEOUT,
 WPS_CB_ST_WEP,
 WPS_CB_ST_SCAN_ERR,
};

typedef void (*wps_st_cb_t)(int status);
# 1041 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
typedef enum bl_wps_state {
    WPS_STATE_NONE,
    WPS_STATE_INITED,
    WPS_STATE_SCANNING,
    WPS_STATE_DONE,
} bl_wps_state_t;

typedef enum wps_evq_event {
    WPS_EVQ_SUCCESS,
    WPS_EVQ_DISCONNECTED,
    WPS_EVQ_TIMEOUT,
    WPS_EVQ_FAILURE,
} wps_evq_event_t;

typedef struct {
    wps_evq_event_t event;
    void *payload;
} wps_evq_msg_t;

struct wps_sm {
    u8 vif_idx;
    u8 sta_idx;
    bl_wps_state_t state;
    bl_wps_config_t cfg;
    struct wps_context *wps_ctx;
    struct wps_data *wps;
    char identity[32];
    u8 identity_len;
    u8 ownaddr[6];
    u8 bssid[6];
    u8 ssid_neg[32 + 1];
    u8 ssid_neg_len;
    u8 ssid[3][32];
    u8 ssid_len[3];
    char key[3][64];
    u8 key_len[3];
    u8 ap_cred_cnt;
    struct wps_device_data *dev;
    u8 uuid[16];
    wps_st_cb_t st_cb;
    u8 current_identifier;
    
# 1082 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 3 4
   _Bool 
# 1082 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
        is_wps_scan;
    u8 channel;
    u8 scan_cnt;
    u8 discover_ssid_cnt;
    
# 1086 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 3 4
   _Bool 
# 1086 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h"
        ignore_sel_reg;
    struct discard_ap_list_t dis_ap_list[10];
    u8 discard_ap_cnt;

    wps_factory_information_t factory_info;
    TaskHandle_t wps_task_hdl;
    u8 wps_ie_probe_request[256];
    u16 wps_ie_probe_request_len;
    u8 wps_ie_association_request[32];
    u16 wps_ie_association_request_len;
    bl_wifi_timer_t wps_eapol_start_timer;
    TickType_t start_tick;
    QueueHandle_t event_queue;
    TimerHandle_t timeout_timer;
    StaticTimer_t timeout_timer_buffer;
    TimerHandle_t success_cb_timer;
    StaticTimer_t success_cb_timer_buffer;
};



struct wps_sm *wps_sm_get(void);
int wps_credential_save(u8 idx, u8 *ssid, u8 ssid_len, char *key, u8 key_len);
int wps_station_wps_register_cb(wps_st_cb_t cb);
int wps_station_wps_unregister_cb(void);
int wps_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len);
# 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_i.h" 1
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_i.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps.h" 1
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_i.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_attr_parse.h" 1
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_attr_parse.h"
struct wps_parse_attr {

 const u8 *version;
 const u8 *version2;
 const u8 *msg_type;
 const u8 *enrollee_nonce;
 const u8 *registrar_nonce;
 const u8 *uuid_r;
 const u8 *uuid_e;
 const u8 *auth_type_flags;
 const u8 *encr_type_flags;
 const u8 *conn_type_flags;
 const u8 *config_methods;
 const u8 *sel_reg_config_methods;
 const u8 *primary_dev_type;
 const u8 *rf_bands;
 const u8 *assoc_state;
 const u8 *config_error;
 const u8 *dev_password_id;
 const u8 *os_version;
 const u8 *wps_state;
 const u8 *authenticator;
 const u8 *r_hash1;
 const u8 *r_hash2;
 const u8 *e_hash1;
 const u8 *e_hash2;
 const u8 *r_snonce1;
 const u8 *r_snonce2;
 const u8 *e_snonce1;
 const u8 *e_snonce2;
 const u8 *key_wrap_auth;
 const u8 *auth_type;
 const u8 *encr_type;
 const u8 *network_idx;
 const u8 *network_key_idx;
 const u8 *mac_addr;
 const u8 *key_prov_auto;
 const u8 *dot1x_enabled;
 const u8 *selected_registrar;
 const u8 *request_type;
 const u8 *response_type;
 const u8 *ap_setup_locked;
 const u8 *settings_delay_time;
 const u8 *network_key_shareable;
 const u8 *request_to_enroll;
 const u8 *ap_channel;


 const u8 *manufacturer;
 size_t manufacturer_len;
 const u8 *model_name;
 size_t model_name_len;
 const u8 *model_number;
 size_t model_number_len;
 const u8 *serial_number;
 size_t serial_number_len;
 const u8 *dev_name;
 size_t dev_name_len;
 const u8 *public_key;
 size_t public_key_len;
 const u8 *encr_settings;
 size_t encr_settings_len;
 const u8 *ssid;
 size_t ssid_len;
 const u8 *network_key;
 size_t network_key_len;
 const u8 *eap_type;
 size_t eap_type_len;
 const u8 *eap_identity;
 size_t eap_identity_len;
 const u8 *authorized_macs;
 size_t authorized_macs_len;
 const u8 *sec_dev_type_list;
 size_t sec_dev_type_list_len;
 const u8 *oob_dev_password;
 size_t oob_dev_password_len;



 const u8 *cred[10];
 size_t cred_len[10];
 size_t num_cred;


 const u8 *req_dev_type[10];
 size_t num_req_dev_type;

 const u8 *vendor_ext[10];
 size_t vendor_ext_len[10];
 size_t num_vendor_ext;
};

int wps_parse_msg(const struct wpabuf *msg, struct wps_parse_attr *attr);
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_i.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/bl_supplicant/esp_wps.h" 1
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/bl_supplicant/esp_wps.h"
typedef struct {
    wps_type_t wps_type;
    wps_factory_information_t factory_info;
} esp_wps_config_t;
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_i.h" 2
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_i.h"
struct wps_data {



 struct wps_context *wps;




 int registrar;




 int er;

 enum {

  SEND_M1, RECV_M2, SEND_M3, RECV_M4, SEND_M5, RECV_M6, SEND_M7,
  RECV_M8, RECEIVED_M2D, WPS_MSG_DONE, RECV_ACK, WPS_FINISHED,
  SEND_WSC_NACK,


  RECV_M1, SEND_M2, RECV_M3, SEND_M4, RECV_M5, SEND_M6,
  RECV_M7, SEND_M8, RECV_DONE, SEND_M2D, RECV_M2D_ACK
 } state;

 u8 uuid_e[16];
 u8 uuid_r[16];
 u8 mac_addr_e[6];
 u8 nonce_e[16];
 u8 nonce_r[16];
 u8 psk1[16];
 u8 psk2[16];
 u8 snonce[2 * 16];
 u8 peer_hash1[32];
 u8 peer_hash2[32];

 struct wpabuf *dh_privkey;
 struct wpabuf *dh_pubkey_e;
 struct wpabuf *dh_pubkey_r;
 u8 authkey[32];
 u8 keywrapkey[16];
 u8 emsk[32];

 struct wpabuf *last_msg;

 u8 *dev_password;
 size_t dev_password_len;
 u16 dev_pw_id;
 int pbc;




 u8 request_type;




 u16 encr_type;




 u16 auth_type;

 u8 *new_psk;
 size_t new_psk_len;

 int wps_pin_revealed;
 struct wps_credential cred;

 struct wps_device_data peer_dev;




 u16 config_error;
 u16 error_indication;

 int ext_reg;
 int int_reg;

 struct wps_credential *new_ap_settings;

 void *dh_ctx;

 void (*ap_settings_cb)(void *ctx, const struct wps_credential *cred);
 void *ap_settings_cb_ctx;

 struct wps_credential *use_cred;

 int use_psk_key;
 u8 p2p_dev_addr[6];

 int pbc_in_m1;



};


void wps_kdf(const u8 *key, const u8 *label_prefix, size_t label_prefix_len,
      const char *label, u8 *res, size_t res_len);
int wps_derive_keys(struct wps_data *wps);
void wps_derive_psk(struct wps_data *wps, const u8 *dev_passwd,
      size_t dev_passwd_len);
struct wpabuf * wps_decrypt_encr_settings(struct wps_data *wps, const u8 *encr,
       size_t encr_len);
void wps_fail_event(struct wps_context *wps, enum wps_msg_type msg,
      u16 config_error, u16 error_indication);
void wps_success_event(struct wps_context *wps);
void wps_pwd_auth_fail_event(struct wps_context *wps, int enrollee, int part);
void wps_pbc_overlap_event(struct wps_context *wps);
void wps_pbc_timeout_event(struct wps_context *wps);

struct wpabuf * wps_build_wsc_ack(struct wps_data *wps);
struct wpabuf * wps_build_wsc_nack(struct wps_data *wps);

typedef enum wps_calc_key_mode {
 WPS_CALC_KEY_NORMAL = 0,
 WPS_CALC_KEY_NO_CALC,
 WPS_CALC_KEY_PRE_CALC,
 WPS_CALC_KEY_MAX,
} wps_key_mode_t;


int wps_build_public_key(struct wps_data *wps, struct wpabuf *msg, wps_key_mode_t mode);
int wps_build_req_type(struct wpabuf *msg, enum wps_request_type type);
int wps_build_resp_type(struct wpabuf *msg, enum wps_response_type type);
int wps_build_config_methods(struct wpabuf *msg, u16 methods);
int wps_build_uuid_e(struct wpabuf *msg, const u8 *uuid);
int wps_build_dev_password_id(struct wpabuf *msg, u16 id);
int wps_build_config_error(struct wpabuf *msg, u16 err);
int wps_build_authenticator(struct wps_data *wps, struct wpabuf *msg);
int wps_build_key_wrap_auth(struct wps_data *wps, struct wpabuf *msg);
int wps_build_encr_settings(struct wps_data *wps, struct wpabuf *msg,
       struct wpabuf *plain);
int wps_build_version(struct wpabuf *msg);
int wps_build_wfa_ext(struct wpabuf *msg, int req_to_enroll,
        const u8 *auth_macs, size_t auth_macs_count);
int wps_build_msg_type(struct wpabuf *msg, enum wps_msg_type msg_type);
int wps_build_enrollee_nonce(struct wps_data *wps, struct wpabuf *msg);
int wps_build_registrar_nonce(struct wps_data *wps, struct wpabuf *msg);
int wps_build_auth_type_flags(struct wps_data *wps, struct wpabuf *msg);
int wps_build_encr_type_flags(struct wps_data *wps, struct wpabuf *msg);
int wps_build_conn_type_flags(struct wps_data *wps, struct wpabuf *msg);
int wps_build_assoc_state(struct wps_data *wps, struct wpabuf *msg);
int wps_build_oob_dev_pw(struct wpabuf *msg, u16 dev_pw_id,
    const struct wpabuf *pubkey, const u8 *dev_pw,
    size_t dev_pw_len);
struct wpabuf * wps_ie_encapsulate(struct wpabuf *data);


int wps_process_authenticator(struct wps_data *wps, const u8 *authenticator,
         const struct wpabuf *msg);
int wps_process_key_wrap_auth(struct wps_data *wps, struct wpabuf *msg,
         const u8 *key_wrap_auth);
int wps_process_cred(struct wps_parse_attr *attr,
       struct wps_credential *cred);
int wps_process_ap_settings(struct wps_parse_attr *attr,
       struct wps_credential *cred);


struct wpabuf * wps_enrollee_get_msg(struct wps_data *wps,
         enum wsc_op_code *op_code);
enum wps_process_res wps_enrollee_process_msg(struct wps_data *wps,
           enum wsc_op_code op_code,
           const struct wpabuf *msg);


struct wpabuf * wps_registrar_get_msg(struct wps_data *wps,
          enum wsc_op_code *op_code);
enum wps_process_res wps_registrar_process_msg(struct wps_data *wps,
            enum wsc_op_code op_code,
            const struct wpabuf *msg);
int wps_build_cred(struct wps_data *wps, struct wpabuf *msg);
int wps_device_store(struct wps_registrar *reg,
       struct wps_device_data *dev, const u8 *uuid);
void wps_registrar_selected_registrar_changed(struct wps_registrar *reg);
const u8 * wps_authorized_macs(struct wps_registrar *reg, size_t *count);
int wps_registrar_pbc_overlap(struct wps_registrar *reg,
         const u8 *addr, const u8 *uuid_e);
# 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_wifi.h" 1


typedef struct bl_wifi_ap_info {
    uint8_t ssid[33];
    uint8_t psk[65];
    uint8_t chan;
} bl_wifi_ap_info_t;


int bl_wifi_enable_irq(void);
int bl_wifi_clock_enable(void);
int bl_wifi_sta_mac_addr_set(uint8_t mac[6]);
int bl_wifi_ap_mac_addr_set(uint8_t mac[6]);
int bl_wifi_mac_addr_set(uint8_t mac[6]);
int bl_wifi_country_code_set(uint8_t country_code);
int bl_wifi_ap_info_set(uint8_t* ssid, uint8_t ssid_len,
                      uint8_t* psk, uint8_t psk_len,
                      uint8_t chan);
int bl_wifi_mac_addr_get(uint8_t mac[6]);
int bl_wifi_ap_info_get(bl_wifi_ap_info_t* ap_info);
int bl_wifi_sta_info_set(uint8_t* ssid, uint8_t ssid_len, uint8_t* psk, uint8_t psk_len, int autoconnect);
int bl_wifi_sta_info_get(bl_wifi_ap_info_t* sta_info);
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h" 1
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h" 1
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/opt.h" 1
# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/opt.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/config/lwipopts.h" 1
# 315 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/config/lwipopts.h"
extern int bl_rand();
# 52 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/opt.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/debug.h" 1
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/debug.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h" 1
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/cc.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/cc.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/cpu.h" 1
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/lwip-port/arch/cc.h" 2

typedef int sys_prot_t;
# 49 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h" 2
# 107 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 108 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h" 2
# 125 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
typedef uint8_t u8_t;
typedef int8_t s8_t;
typedef uint16_t u16_t;
typedef int16_t s16_t;
typedef uint32_t u32_t;
typedef int32_t s32_t;

typedef uint64_t u64_t;
typedef int64_t s64_t;

typedef uintptr_t mem_ptr_t;
# 148 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 1 3
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 1 3
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 3
       
       
       
       
       
       
       
       
# 190 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 3
       
       
       
       
       
       
       
       
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 2 3



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 23 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 2 3
# 312 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3

# 312 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3
typedef struct {
  intmax_t quot;
  intmax_t rem;
} imaxdiv_t;

struct _reent;





extern intmax_t imaxabs(intmax_t);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denomer);
extern intmax_t strtoimax(const char *restrict, char **restrict, int);
extern intmax_t _strtoimax_r(struct _reent *, const char *restrict, char **restrict, int);
extern uintmax_t strtoumax(const char *restrict, char **restrict, int);
extern uintmax_t _strtoumax_r(struct _reent *, const char *restrict, char **restrict, int);
extern intmax_t wcstoimax(const wchar_t *restrict, wchar_t **restrict, int);
extern intmax_t _wcstoimax_r(struct _reent *, const wchar_t *restrict, wchar_t **restrict, int);
extern uintmax_t wcstoumax(const wchar_t *restrict, wchar_t **restrict, int);
extern uintmax_t _wcstoumax_r(struct _reent *, const wchar_t *restrict, wchar_t **restrict, int);


extern intmax_t strtoimax_l(const char *restrict, char **_restrict, int, locale_t);
extern uintmax_t strtoumax_l(const char *restrict, char **_restrict, int, locale_t);
extern intmax_t wcstoimax_l(const wchar_t *restrict, wchar_t **_restrict, int, locale_t);
extern uintmax_t wcstoumax_l(const wchar_t *restrict, wchar_t **_restrict, int, locale_t);
# 149 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h" 2
# 185 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 3 4
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/syslimits.h" 1 3 4






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 195 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 3 4
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 1 3 4





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/syslimits.h" 1 3 4
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 2 3 4
# 196 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 2 3 4
# 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/syslimits.h" 2 3 4
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 2 3 4
# 186 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h" 2
# 203 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"

# 203 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
typedef int ssize_t;
# 230 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 1 3
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3



# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);





extern int isalnum_l (int __c, locale_t __l);
extern int isalpha_l (int __c, locale_t __l);
extern int isblank_l (int __c, locale_t __l);
extern int iscntrl_l (int __c, locale_t __l);
extern int isdigit_l (int __c, locale_t __l);
extern int isgraph_l (int __c, locale_t __l);
extern int islower_l (int __c, locale_t __l);
extern int isprint_l (int __c, locale_t __l);
extern int ispunct_l (int __c, locale_t __l);
extern int isspace_l (int __c, locale_t __l);
extern int isupper_l (int __c, locale_t __l);
extern int isxdigit_l(int __c, locale_t __l);
extern int tolower_l (int __c, locale_t __l);
extern int toupper_l (int __c, locale_t __l);



extern int isascii_l (int __c, locale_t __l);
extern int toascii_l (int __c, locale_t __l);
# 70 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
extern const char _ctype_[];
# 114 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
static __inline const char *
__locale_ctype_ptr_l(locale_t _l)
{
 (void)_l;
 return _ctype_;
}
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3

# 231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/arch.h" 2
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/debug.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/opt.h" 1
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/debug.h" 2
# 53 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/opt.h" 2
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h" 1
# 53 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"

# 53 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
typedef enum {

  ERR_OK = 0,

  ERR_MEM = -1,

  ERR_BUF = -2,

  ERR_TIMEOUT = -3,

  ERR_RTE = -4,

  ERR_INPROGRESS = -5,

  ERR_VAL = -6,

  ERR_WOULDBLOCK = -7,

  ERR_USE = -8,

  ERR_ALREADY = -9,

  ERR_ISCONN = -10,

  ERR_CONN = -11,

  ERR_IF = -12,


  ERR_ABRT = -13,

  ERR_RST = -14,

  ERR_CLSD = -15,

  ERR_ARG = -16
} err_enum_t;






typedef s8_t err_t;
# 110 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/err.h"
int err_to_errno(err_t err);
# 43 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h" 2
# 89 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
typedef enum {



  PBUF_TRANSPORT = 128u + (14 + 0) + 20 + 20,



  PBUF_IP = 128u + (14 + 0) + 20,




  PBUF_LINK = 128u + (14 + 0),





  PBUF_RAW_TX = 128u,


  PBUF_RAW = 0
} pbuf_layer;
# 145 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
typedef enum {






  PBUF_RAM = (0x0200 | 0x80 | 0x00),



  PBUF_ROM = 0x01,



  PBUF_REF = (0x40 | 0x01),






  PBUF_POOL = (0x0100 | 0x80 | 0x02)
} pbuf_type;
# 186 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
struct pbuf {

  struct pbuf *next;


  void *payload;
# 200 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;




  u8_t type_internal;


  u8_t flags;






  u8_t ref;


  u8_t if_idx;
};






struct pbuf_rom {

  struct pbuf *next;


  const void *payload;
};



typedef void (*pbuf_free_custom_fn)(struct pbuf *p);


struct pbuf_custom {

  struct pbuf pbuf;

  pbuf_free_custom_fn custom_free_function;
};
# 272 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/pbuf.h"
struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);
struct pbuf *pbuf_alloc_reference(void *payload, u16_t length, pbuf_type type);

struct pbuf *pbuf_alloced_custom(pbuf_layer l, u16_t length, pbuf_type type,
                                 struct pbuf_custom *p, void *payload_mem,
                                 u16_t payload_mem_len);

void pbuf_realloc(struct pbuf *p, u16_t size);



u8_t pbuf_header(struct pbuf *p, s16_t header_size);
u8_t pbuf_header_force(struct pbuf *p, s16_t header_size);
u8_t pbuf_add_header(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_add_header_force(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_remove_header(struct pbuf *p, size_t header_size);
struct pbuf *pbuf_free_header(struct pbuf *q, u16_t size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u16_t pbuf_clen(const struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, const struct pbuf *p_from);
u16_t pbuf_copy_partial(const struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
void *pbuf_get_contiguous(const struct pbuf *p, void *buffer, size_t bufsize, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset);
struct pbuf *pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);
struct pbuf *pbuf_clone(pbuf_layer l, pbuf_type type, struct pbuf *p);

err_t pbuf_fill_chksum(struct pbuf *p, u16_t start_offset, const void *dataptr,
                       u16_t len, u16_t *chksum);





u8_t pbuf_get_at(const struct pbuf* p, u16_t offset);
int pbuf_try_get_at(const struct pbuf* p, u16_t offset);
void pbuf_put_at(struct pbuf* p, u16_t offset, u8_t data);
u16_t pbuf_memcmp(const struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(const struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(const struct pbuf* p, const char* substr);
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h" 2
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h"
typedef int bl_err_t;






typedef enum {
    WIFI_APPIE_RM_ENABLED_CAPS = WIFI_APPIE_MAX,
    WIFI_APPIE_RAM_MAX,
} wifi_appie_ram_t;

typedef enum {
    WPA2_ENT_EAP_STATE_NOT_START,
    WPA2_ENT_EAP_STATE_IN_PROGRESS,
    WPA2_ENT_EAP_STATE_SUCCESS,
    WPA2_ENT_EAP_STATE_FAIL,
} wpa2_ent_eap_state_t;

struct wifi_appie {
    uint16_t ie_len;
    uint8_t ie_data[];
};
# 98 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h"
typedef int (*wifi_wpa2_fn_t)(void *);
typedef struct {
    wifi_wpa2_fn_t fn;
    void *param;
} wifi_wpa2_param_t;





typedef void(*wifi_tx_cb_t)(void *);
typedef int (*wifi_ipc_fn_t)(void *);
typedef struct {
    wifi_ipc_fn_t fn;
    void *arg;
    uint32_t arg_size;
} wifi_ipc_config_t;


typedef struct {
    uint8_t keyid[2];
    uint8_t pn[6];
    uint8_t igtk[16];
} wifi_wpa_igtk_t;


typedef void (*bl_custom_tx_callback_t)(void *cb_arg, 
# 124 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h" 3 4
                                                     _Bool 
# 124 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h"
                                                          tx_ok);

struct bl_custom_tx_cfm {
    bl_custom_tx_callback_t cb;
    void *cb_arg;
};

err_t bl_wifi_eth_tx(struct pbuf *p, 
# 131 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h" 3 4
                                    _Bool 
# 131 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wifi_driver.h"
                                         is_sta, struct bl_custom_tx_cfm *custom_cfm);
# 6 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 1
# 19 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 1 3
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3

# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 2







# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h" 1
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"

# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
typedef enum { FALSE = 0, TRUE = 1 } Boolean;
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
static inline int wpa_key_mgmt_wpa_ieee8021x(int akm)
{
 return !!(akm & ((1U << (0)) |
    (1U << (5)) |
    (1U << (14)) |
    (1U << (15)) |
    (1U << (7)) |
    (1U << (16)) |
    (1U << (17))));
}

static inline int wpa_key_mgmt_wpa_psk(int akm)
{
 return !!(akm & ((1U << (1)) |
    (1U << (6)) |
    (1U << (8)) |
    (1U << (10)) |
    (1U << (11))));
}

static inline int wpa_key_mgmt_ft(int akm)
{
 return !!(akm & ((1U << (6)) |
    (1U << (5)) |
    (1U << (11))));
}

static inline int wpa_key_mgmt_sae(int akm)
{
 return !!(akm & ((1U << (10)) |
    (1U << (11))));
}

static inline int wpa_key_mgmt_sha256(int akm)
{
 return !!(akm & ((1U << (8)) |
    (1U << (7)) |
    (1U << (15)) |
    (1U << (10)) |
    (1U << (16))));
}

static inline int wpa_key_mgmt_sha384(int akm)
{
 return !!(akm & (1U << (17)));
}

static inline int wpa_key_mgmt_suite_b(int akm)
{
 return !!(akm & ((1U << (16)) |
    (1U << (17))));
}

static inline int wpa_key_mgmt_wpa(int akm)
{
 return wpa_key_mgmt_wpa_ieee8021x(akm) ||
  wpa_key_mgmt_wpa_psk(akm) ||
  wpa_key_mgmt_sae(akm);
}

static inline int wpa_key_mgmt_wpa_any(int akm)
{
 return wpa_key_mgmt_wpa(akm) || (akm & (1U << (4)));
}

static inline int wpa_key_mgmt_cckm(int akm)
{
 return akm == (1U << (14));
}
# 131 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
enum wifi_key_alg {
 ALG_WEP,
 ALG_TKIP,
 ALG_CCMP,
 ALG_AES_CMAC,
};




enum wpa_cipher {
 CIPHER_NONE,
 CIPHER_WEP40,
 CIPHER_TKIP,
 CIPHER_CCMP,
 CIPHER_WEP104
};




enum wpa_key_mgmt {
 KEY_MGMT_802_1X,
 KEY_MGMT_PSK,
 KEY_MGMT_NONE,
 KEY_MGMT_802_1X_NO_WPA,
 KEY_MGMT_WPA_NONE,
 KEY_MGMT_FT_802_1X,
 KEY_MGMT_FT_PSK,
 KEY_MGMT_802_1X_SHA256,
 KEY_MGMT_PSK_SHA256,
 KEY_MGMT_WPS
};
# 175 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
enum wpa_states {







 WPA_DISCONNECTED,
# 192 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_INTERFACE_DISABLED,
# 202 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_INACTIVE,







 WPA_SCANNING,
# 220 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_AUTHENTICATING,
# 231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_ASSOCIATING,
# 241 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_ASSOCIATED,
# 251 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_FIRST_HALF_4WAY_HANDSHAKE,

 WPA_LAST_HALF_4WAY_HANDSHAKE,
# 263 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_GROUP_HANDSHAKE,
# 281 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
 WPA_COMPLETED,

 WPA_MIC_FAILURE,

 WPA_TKIP_COUNTERMEASURES
};
# 299 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/defs.h"
enum mfp_options {
 NO_MGMT_FRAME_PROTECTION = 0,
 MGMT_FRAME_PROTECTION_OPTIONAL = 1,
 MGMT_FRAME_PROTECTION_REQUIRED = 2,
};





enum hostapd_hw_mode {
 HOSTAPD_MODE_IEEE80211B,
 HOSTAPD_MODE_IEEE80211G,
 HOSTAPD_MODE_IEEE80211A,
 HOSTAPD_MODE_IEEE80211AD,
 HOSTAPD_MODE_IEEE80211ANY,
 NUM_HOSTAPD_MODES
};




enum wpa_ctrl_req_type {
 WPA_CTRL_REQ_UNKNOWN,
 WPA_CTRL_REQ_EAP_IDENTITY,
 WPA_CTRL_REQ_EAP_PASSWORD,
 WPA_CTRL_REQ_EAP_NEW_PASSWORD,
 WPA_CTRL_REQ_EAP_PIN,
 WPA_CTRL_REQ_EAP_OTP,
 WPA_CTRL_REQ_EAP_PASSPHRASE,
 WPA_CTRL_REQ_SIM,
 WPA_CTRL_REQ_PSK_PASSPHRASE,
 NUM_WPA_CTRL_REQS
};




enum mesh_plink_state {
 PLINK_LISTEN = 1,
 PLINK_OPEN_SENT,
 PLINK_OPEN_RCVD,
 PLINK_CNF_RCVD,
 PLINK_ESTAB,
 PLINK_HOLDING,
 PLINK_BLOCKED,
};

enum set_band {
 WPA_SETBAND_AUTO,
 WPA_SETBAND_5G,
 WPA_SETBAND_2G
};
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h" 1
# 155 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
struct wpa_eapol_key {
 u8 type;

 u8 key_info[2];
 u8 key_length[2];
 u8 replay_counter[8];
 u8 key_nonce[32];
 u8 key_iv[16];
 u8 key_rsc[8];
 u8 key_id[8];
 u8 key_mic[16];
 u8 key_data_length[2];

} __attribute__ ((packed));





struct wpa_ptk {
 u8 kck[16];
 u8 kek[16];
 u8 tk1[16];
 union {
  u8 tk2[16];
  struct {
   u8 tx_mic_key[8];
   u8 rx_mic_key[8];
  } auth;
 } u;
} __attribute__ ((packed));

struct wpa_gtk_data {
 enum wpa_alg alg;
 u8 tx, key_rsc_len, keyidx;
 u8 gtk[32];
 u8 gtk_len;
};
# 209 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
struct wpa_ie_hdr {
 u8 elem_id;
 u8 len;
 u8 oui[4];
 u8 version[2];
} __attribute__ ((packed));
# 241 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
struct rsn_ie_hdr {
 u8 elem_id;
 u8 len;
 u8 version[2];
} __attribute__ ((packed));
# 264 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
struct rsn_error_kde {
 be16 mui;
 be16 error_type;
} __attribute__ ((packed));


struct wpa_igtk_kde {
 u8 keyid[2];
 u8 pn[6];
 u8 igtk[16];
} __attribute__ ((packed));
# 307 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
struct wpa_ie_data {
 int proto;
 int pairwise_cipher;
 int group_cipher;
 int key_mgmt;
 int capabilities;
 size_t num_pmkid;
 const u8 *pmkid;
 int mgmt_group_cipher;
};

struct wpa_eapol_ie_parse {
 const u8 *wpa_ie;
 size_t wpa_ie_len;
 const u8 *rsn_ie;
 size_t rsn_ie_len;
 const u8 *pmkid;
 const u8 *gtk;
 size_t gtk_len;
 const u8 *mac_addr;
 size_t mac_addr_len;
# 339 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
 const u8 *igtk;
 size_t igtk_len;
# 350 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
};

struct rsn_sppamsdu_sup {
    
# 353 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h" 3 4
   _Bool 
# 353 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
        capable;
    
# 354 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h" 3 4
   _Bool 
# 354 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/wpa_common.h"
        require;
};

const char * wpa_cipher_txt(int cipher);

int wpa_parse_wpa_ie_rsn(const u8 *rsn_ie, size_t rsn_ie_len,
    struct wpa_ie_data *data);

int wpa_eapol_key_mic(const u8 *key, int ver, const u8 *buf, size_t len,
        u8 *mic);
int wpa_compare_rsn_ie(int ft_initial_assoc,
         const u8 *ie1, size_t ie1len,
         const u8 *ie2, size_t ie2len);

int wpa_parse_kde_ies(const u8 *buf, size_t len, struct wpa_eapol_ie_parse *ie);

void wpa_pmk_to_ptk(const u8 *pmk, size_t pmk_len, const char *label,
      const u8 *addr1, const u8 *addr2,
      const u8 *nonce1, const u8 *nonce2,
      u8 *ptk, size_t ptk_len, int use_sha256);

void rsn_pmkid(const u8 *pmk, size_t pmk_len, const u8 *aa, const u8 *spa,
        u8 *pmkid, int use_sha256);

int wpa_cipher_key_len(int cipher);

int wpa_cipher_to_alg(int cipher);

u32 wpa_cipher_to_suite(int proto, int cipher);

int wpa_cipher_put_suites(u8 *pos, int ciphers);

int wpa_parse_wpa_ie_wpa(const u8 *wpa_ie, size_t wpa_ie_len,
           struct wpa_ie_data *data);

int rsn_cipher_put_suites(u8 *pos, int ciphers);
# 29 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 1
# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
struct install_key {
# 31 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
    u8 seq[10];
};
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
struct wpa_sm {
    u8 pmk[32];
    u8 pmk_len;

    struct wpa_ptk ptk, tptk;
    
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
   _Bool 
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
        ptk_set, tptk_set;
    
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
   _Bool 
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
        renew_snonce;
    u8 snonce[32];
    u8 anonce[32];
    u8 rx_replay_counter[8];
    
# 52 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
   _Bool 
# 52 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
        rx_replay_counter_set;
    u8 request_counter[8];






    u8 proto;
    u16 pairwise_cipher;
    u16 group_cipher;
    u16 key_mgmt;
    u16 mgmt_group_cipher;
# 75 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
    u8 assoc_wpa_ie_len;
    u8 assoc_wpa_ie[24 + 2 + 4];




    u8 own_addr[6];

    u8 bssid[6];

    enum wpa_states wpa_state;






    
# 92 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
   _Bool 
# 92 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
        key_install;

    struct install_key install_ptk;
    struct install_key install_gtk;

    struct wpa_gtk_data gd;
    u16 key_info;
    u16 txcb_flags;
    
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
   _Bool 
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
        ap_notify_completed_rsne;
    wifi_pmf_config_t pmf_cfg;
    struct rsn_sppamsdu_sup spp_sup;

    uint8_t vif_idx;
    uint8_t sta_idx;
    bl_wifi_timer_t fourway_hs_timer;
};
# 155 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
typedef void (*WPA_SEND_FUNC)(uint8_t sta_idx, void *buffer, u16 len);

typedef void (*WPA_SET_ASSOC_IE)(uint8_t vif_idx, u8 proto, u8 *assoc_buf, u32 assoc_wpa_ie_len);

typedef void (*WPA_INSTALL_KEY)(uint8_t vif_idx, uint8_t sta_idx, enum wpa_alg alg, int key_idx, int set_tx,
              u8 *seq, size_t seq_len, u8 *key, size_t key_len, 
# 160 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
                                                               _Bool 
# 160 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
                                                                    pairwise);

typedef int (*WPA_GET_KEY)(u8 *ifx, int *alg, u8 *addt, int *keyidx, u8 *key, size_t key_len, int key_entry_valid);

typedef void (*WPA_DEAUTH_FUNC)(uint8_t sta_idx, u8 reason_code);

typedef void (*WPA_NEG_COMPLETE)(uint8_t sta_idx);


# 168 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
_Bool 
# 168 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
    wpa_sm_init(void);

void wpa_sm_deinit(void);

void eapol_txcb(void *eb);

void wpa_set_profile(u32 wpa_proto, u16 key_mgmt);

int wpa_set_bss(u8 vif_idx, u8 sta_idx, char *macddr, char *bssid, u8 pairwise_cipher, u8 group_cipher, 
# 176 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
                                                                                                       _Bool 
# 176 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
                                                                                                            pmf_required, u8 mgmt_group_cipher);

int wpa_set_parm_at_connect(wifi_connect_parm_t *parm);

int wpa_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len);
void wpa_sendto_wrapper(
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
                       _Bool 
# 181 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
                            is_sta, void *buffer, u16 len, struct bl_custom_tx_cfm *tx_cfm);
void wpa_config_assoc_ie(uint8_t vif_idx, u8 proto, u8 *assoc_buf, u32 assoc_wpa_ie_len);
void wpa_install_key(uint8_t vif_idx, uint8_t sta_idx, enum wpa_alg alg, int key_idx, int set_tx,
                     u8 *seq, size_t seq_len, u8 *key, size_t key_len, 
# 184 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 3 4
                                                                      _Bool 
# 184 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h"
                                                                           pairwise);
int wpa_get_key(uint8_t *ifx, int *alg, u8 *addr, int *key_idx,
                u8 *key, size_t key_len, int key_entry_valid);
void wpa_deauthenticate(uint8_t sta_idx, u8 reason_code);
void wpa_neg_complete(uint8_t sta_idx);
void wpa_set_4way_handshake_timer(void);
void wpa_clear_4way_handshake_timer(void);
# 30 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 2




struct wpa_sm;

int wpa_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len);

# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 3 4
_Bool 
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h"
    wpa_sta_is_cur_pmksa_set(void);

# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 3 4
_Bool 
# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h"
    wpa_sta_in_4way_handshake(void);

# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 3 4
_Bool 
# 39 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h"
    wpa_sta_cur_pmksa_matches_akm(void);



struct l2_ethhdr {
    u8 h_dest[6];
    u8 h_source[6];
    be16 h_proto;
} __attribute__ ((packed));
# 116 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h"
void pp_michael_mic_failure(u16 isunicast);

void wpa_sm_set_state(enum wpa_states state);

char * dup_binstr(const void *src, size_t len);

void wpa_set_pmk(uint8_t *pmk, const u8 *pmkid, 
# 122 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 3 4
                                               _Bool 
# 122 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h"
                                                    cache_pmksa);

int wpa_hook_init(void);


# 126 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h" 3 4
_Bool 
# 126 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa.h"
    wpa_hook_deinit(void);

char * dup_binstr(const void *src, size_t len);

int wpa_michael_mic_failure(u16 isunicast);

wifi_cipher_type_t cipher_type_map_supp_to_public(unsigned cipher);

uint16_t cipher_type_map_public_to_supp(wifi_cipher_type_t cipher);

void wpa_sta_clear_curr_pmksa(void);

int wpa_sm_ether_send(const u8 *own_addr, const u8 *dest, u16 proto,
        const u8 *data, size_t data_len);
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/rsn_supp/wpa_i.h" 1
# 8 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wpas_glue.h" 1
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wpas_glue.h"
u8 *wpa_sm_alloc_eapol(u8 version, u8 type,
                       const void *data, u16 data_len,
                       size_t *msg_len, void **data_pos);

int wpa_sm_mlme_setprotection(struct wpa_sm *sm, const u8 *addr,
                              int protect_type, int key_type);

void wpa_sm_deauthenticate(struct wpa_sm *sm, u8 reason_code);

void wpa_sm_disassociate(struct wpa_sm *sm, int reason_code);

int wpa_sm_get_beacon_ie(struct wpa_sm *sm);

void wpa_sm_free_eapol(u8 *buffer);
# 9 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/wps/wps_defs.h" 1
# 10 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/eap_peer/eap_defs.h" 1
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/eap_peer/eap_defs.h"
struct eap_hdr {
 u8 code;
 u8 identifier;
 be16 length;

} __attribute__ ((packed));






enum { EAP_CODE_REQUEST = 1, EAP_CODE_RESPONSE = 2, EAP_CODE_SUCCESS = 3,
       EAP_CODE_FAILURE = 4 };
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/eap_peer/eap_defs.h"
typedef enum {
 EAP_TYPE_NONE = 0,
 EAP_TYPE_IDENTITY = 1 ,
 EAP_TYPE_NOTIFICATION = 2 ,
 EAP_TYPE_NAK = 3 ,
 EAP_TYPE_MD5 = 4,
 EAP_TYPE_OTP = 5 ,
 EAP_TYPE_GTC = 6,
 EAP_TYPE_TLS = 13 ,
 EAP_TYPE_LEAP = 17 ,
 EAP_TYPE_SIM = 18 ,
 EAP_TYPE_TTLS = 21 ,
 EAP_TYPE_AKA = 23 ,
 EAP_TYPE_PEAP = 25 ,
 EAP_TYPE_MSCHAPV2 = 26 ,
 EAP_TYPE_TLV = 33 ,
 EAP_TYPE_TNC = 38

                                      ,
 EAP_TYPE_FAST = 43 ,
 EAP_TYPE_PAX = 46 ,
 EAP_TYPE_PSK = 47 ,
 EAP_TYPE_SAKE = 48 ,
 EAP_TYPE_IKEV2 = 49 ,
 EAP_TYPE_AKA_PRIME = 50 ,
 EAP_TYPE_GPSK = 51 ,
 EAP_TYPE_PWD = 52 ,
 EAP_TYPE_EKE = 53 ,
 EAP_TYPE_EXPANDED = 254
} EapType;



enum {
 EAP_VENDOR_IETF = 0,
 EAP_VENDOR_MICROSOFT = 0x000137 ,
 EAP_VENDOR_WFA = 0x00372A ,
 EAP_VENDOR_HOSTAP = 39068
};

struct eap_expand {
    u8 vendor_id[3];
    be32 vendor_type;
    u8 opcode;
} __attribute__ ((packed));
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/eap_peer/eap_common.h" 1
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/eap_peer/eap_common.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/include/utils/wpabuf.h" 1
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/eap_peer/eap_common.h" 2

int eap_hdr_len_valid(const struct wpabuf *msg, size_t min_payload);
const u8 * eap_hdr_validate(int vendor, EapType eap_type,
       const struct wpabuf *msg, size_t *plen);
struct wpabuf * eap_msg_alloc(int vendor, EapType type, size_t payload_len,
         u8 code, u8 identifier);
void eap_update_len(struct wpabuf *msg);
u8 eap_get_id(const struct wpabuf *msg);
EapType eap_get_type(const struct wpabuf *msg);
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/eapol_common.h" 1
# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/eapol_common.h"
struct ieee802_1x_hdr {
 u8 version;
 u8 type;
 be16 length;

} __attribute__ ((packed));
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/eapol_common.h"
enum { IEEE802_1X_TYPE_EAP_PACKET = 0,
       IEEE802_1X_TYPE_EAPOL_START = 1,
       IEEE802_1X_TYPE_EAPOL_LOGOFF = 2,
       IEEE802_1X_TYPE_EAPOL_KEY = 3,
       IEEE802_1X_TYPE_EAPOL_ENCAPSULATED_ASF_ALERT = 4
};

enum { EAPOL_KEY_TYPE_RC4 = 1, EAPOL_KEY_TYPE_RSN = 2,
       EAPOL_KEY_TYPE_WPA = 254 };
# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/common/eapol_common.h"
struct ieee802_1x_eapol_key {
 u8 type;

 u8 key_length[2];


 u8 replay_counter[8];
 u8 key_iv[16];
 u8 key_index;





 u8 key_signature[16];







} __attribute__ ((packed));
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/dh_group5.h" 1
# 20 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/crypto/dh_group5.h"
void * dh5_init(struct wpabuf **priv, struct wpabuf **publ);
struct wpabuf * dh5_derive_shared(void *ctx, const struct wpabuf *peer_public,
      const struct wpabuf *own_private);
void dh5_free(void *ctx);
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h" 1


# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h" 1
# 46 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h" 1
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h" 1
# 96 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);




u32_t lwip_htonl(u32_t x);
# 133 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h"
void lwip_itoa(char* result, size_t bufsize, int number);



int lwip_strnicmp(const char* str1, const char* str2, size_t len);



int lwip_stricmp(const char* str1, const char* str2);



char* lwip_strnstr(const char* buffer, const char* token, size_t n);
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h" 1
# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
struct ip4_addr {
  u32_t addr;
};



typedef struct ip4_addr ip4_addr_t;


struct netif;
# 151 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 204 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip4_addr.h"
u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 44 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip6_addr.h" 1
# 46 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip6_addr.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/def.h" 1
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip6_addr.h" 2
# 45 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h" 2
# 54 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
enum lwip_ip_addr_type {

  IPADDR_TYPE_V4 = 0U,

  IPADDR_TYPE_V6 = 6U,

  IPADDR_TYPE_ANY = 46U
};
# 270 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
typedef ip4_addr_t ip_addr_t;
# 369 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h" 2



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h" 1
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/mem.h" 1
# 67 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/mem.h"
typedef u16_t mem_size_t;




void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);
void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 43 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h" 1
# 49 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"















# 67 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"






# 89 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"

# 98 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"









# 133 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"


# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h" 2


typedef enum {

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,



MEMP_ALTCP_PCB,
# 67 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,
# 89 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_TCPIP_MSG_INPKT,
# 98 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,



MEMP_NETDB,
# 133 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_PBUF,
MEMP_PBUF_POOL,
# 55 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_priv.h" 1
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_priv.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/mem_priv.h" 1
# 49 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_priv.h" 2
# 69 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_priv.h"
struct memp {
  struct memp *next;




};
# 108 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_priv.h"
struct memp_desc {






  struct stats_mem *stats;



  u16_t size;



  u16_t num;


  u8_t *base;


  struct memp **tab;

};
# 147 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/priv/memp_priv.h"
void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 59 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h" 1
# 60 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h" 2

extern const struct memp_desc* const memp_pools[MEMP_MAX];
# 141 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 44 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h" 2
# 64 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h"
struct stats_proto {
  u16_t xmit;
  u16_t recv;
  u16_t fw;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t rterr;
  u16_t proterr;
  u16_t opterr;
  u16_t err;
  u16_t cachehit;
};


struct stats_igmp {
  u16_t xmit;
  u16_t recv;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t proterr;
  u16_t rx_v1;
  u16_t rx_group;
  u16_t rx_general;
  u16_t rx_report;
  u16_t tx_join;
  u16_t tx_leave;
  u16_t tx_report;
};


struct stats_mem {



  u16_t err;
  mem_size_t avail;
  mem_size_t used;
  mem_size_t max;
  u16_t illegal;
};


struct stats_syselem {
  u16_t used;
  u16_t max;
  u16_t err;
};


struct stats_sys {
  struct stats_syselem sem;
  struct stats_syselem mutex;
  struct stats_syselem mbox;
};


struct stats_mib2 {

  u32_t ipinhdrerrors;
  u32_t ipinaddrerrors;
  u32_t ipinunknownprotos;
  u32_t ipindiscards;
  u32_t ipindelivers;
  u32_t ipoutrequests;
  u32_t ipoutdiscards;
  u32_t ipoutnoroutes;
  u32_t ipreasmoks;
  u32_t ipreasmfails;
  u32_t ipfragoks;
  u32_t ipfragfails;
  u32_t ipfragcreates;
  u32_t ipreasmreqds;
  u32_t ipforwdatagrams;
  u32_t ipinreceives;


  u32_t tcpactiveopens;
  u32_t tcppassiveopens;
  u32_t tcpattemptfails;
  u32_t tcpestabresets;
  u32_t tcpoutsegs;
  u32_t tcpretranssegs;
  u32_t tcpinsegs;
  u32_t tcpinerrs;
  u32_t tcpoutrsts;


  u32_t udpindatagrams;
  u32_t udpnoports;
  u32_t udpinerrors;
  u32_t udpoutdatagrams;


  u32_t icmpinmsgs;
  u32_t icmpinerrors;
  u32_t icmpindestunreachs;
  u32_t icmpintimeexcds;
  u32_t icmpinparmprobs;
  u32_t icmpinsrcquenchs;
  u32_t icmpinredirects;
  u32_t icmpinechos;
  u32_t icmpinechoreps;
  u32_t icmpintimestamps;
  u32_t icmpintimestampreps;
  u32_t icmpinaddrmasks;
  u32_t icmpinaddrmaskreps;
  u32_t icmpoutmsgs;
  u32_t icmpouterrors;
  u32_t icmpoutdestunreachs;
  u32_t icmpouttimeexcds;
  u32_t icmpoutechos;
  u32_t icmpoutechoreps;
};





struct stats_mib2_netif_ctrs {

  u32_t ifinoctets;


  u32_t ifinucastpkts;


  u32_t ifinnucastpkts;



  u32_t ifindiscards;




  u32_t ifinerrors;






  u32_t ifinunknownprotos;

  u32_t ifoutoctets;



  u32_t ifoutucastpkts;



  u32_t ifoutnucastpkts;



  u32_t ifoutdiscards;



  u32_t ifouterrors;
};


struct stats_ {


  struct stats_proto link;



  struct stats_proto etharp;







  struct stats_proto ip;



  struct stats_proto icmp;



  struct stats_igmp igmp;



  struct stats_proto udp;



  struct stats_proto tcp;



  struct stats_mem mem;



  struct stats_mem *memp[MEMP_MAX];



  struct stats_sys sys;
# 301 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h"
};


extern struct stats_ lwip_stats;


void stats_init(void);
# 488 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/stats.h"
void stats_netstat(void *ctx);
# 51 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h" 2
# 113 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
enum lwip_internal_netif_client_data_index
{


   LWIP_NETIF_CLIENT_DATA_INDEX_DHCP,





   LWIP_NETIF_CLIENT_DATA_INDEX_IGMP,
# 134 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
   LWIP_NETIF_CLIENT_DATA_INDEX_MAX
};
# 152 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
struct netif;



enum netif_mac_filter_action {

  NETIF_DEL_MAC_FILTER = 0,

  NETIF_ADD_MAC_FILTER = 1
};






typedef err_t (*netif_init_fn)(struct netif *netif);
# 178 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 189 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip4_addr_t *ipaddr);
# 212 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);


typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       const ip4_addr_t *group, enum netif_mac_filter_action action);
# 228 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
u8_t netif_alloc_client_data_id(void);
# 244 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
typedef u8_t netif_addr_idx_t;
# 260 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
struct netif {


  struct netif *next;




  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;
# 288 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
  netif_input_fn input;





  netif_output_fn output;




  netif_linkoutput_fn linkoutput;
# 310 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
  netif_status_callback_fn status_callback;




  netif_status_callback_fn link_callback;







  void *state;

  void* client_data[LWIP_NETIF_CLIENT_DATA_INDEX_MAX + 1];



  const char* hostname;





  u16_t mtu;





  u8_t hwaddr[6U];

  u8_t hwaddr_len;

  u8_t flags;

  char name[2];


  u8_t num;






  u8_t rs_count;
# 372 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
  netif_igmp_mac_filter_fn igmp_mac_filter;
# 384 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
  struct pbuf *loop_first;
  struct pbuf *loop_last;




};
# 405 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
extern struct netif *netif_list;



extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add_noaddr(struct netif *netif, void *state, netif_init_fn init, netif_input_fn input);


struct netif *netif_add(struct netif *netif,
                            const ip4_addr_t *ipaddr, const ip4_addr_t *netmask, const ip4_addr_t *gw,
                            void *state, netif_init_fn init, netif_input_fn input);
void netif_set_addr(struct netif *netif, const ip4_addr_t *ipaddr, const ip4_addr_t *netmask,
                    const ip4_addr_t *gw);



void netif_remove(struct netif * netif);





struct netif *netif_find(const char *name);

void netif_set_default(struct netif *netif);


void netif_set_ipaddr(struct netif *netif, const ip4_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip4_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip4_addr_t *gw);
# 456 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);






void netif_set_status_callback(struct netif *netif, netif_status_callback_fn status_callback);





void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);




void netif_set_link_callback(struct netif *netif, netif_status_callback_fn link_callback);
# 500 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
err_t netif_loop_output(struct netif *netif, struct pbuf *p);
void netif_poll(struct netif *netif);





err_t netif_input(struct pbuf *p, struct netif *inp);
# 551 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
u8_t netif_name_to_index(const char *name);
char * netif_index_to_name(u8_t idx, char *name);
struct netif* netif_get_by_index(u8_t idx);
# 564 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
typedef u16_t netif_nsc_reason_t;
# 594 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
typedef union
{

  struct link_changed_s
  {

    u8_t state;
  } link_changed;

  struct status_changed_s
  {

    u8_t state;
  } status_changed;

  struct ipv4_changed_s
  {

    const ip_addr_t* old_address;
    const ip_addr_t* old_netmask;
    const ip_addr_t* old_gw;
  } ipv4_changed;

  struct ipv6_set_s
  {

    s8_t addr_index;

    const ip_addr_t* old_address;
  } ipv6_set;

  struct ipv6_addr_state_changed_s
  {

    s8_t addr_index;

    u8_t old_state;

    const ip_addr_t* address;
  } ipv6_addr_state_changed;
} netif_ext_callback_args_t;
# 644 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/lwip/src/include/lwip/netif.h"
typedef void (*netif_ext_callback_fn)(struct netif* netif, netif_nsc_reason_t reason, const netif_ext_callback_args_t* args);
# 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h" 1
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h" 2

# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h" 1
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h" 1
# 33 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
typedef void (*hosal_dma_irq_t)(void *p_arg, uint32_t flag);




struct hosal_dma_chan {
    uint8_t used;
    hosal_dma_irq_t callback;
    void *p_arg;
};




typedef struct hosal_dma_dev {
    int max_chans;
    struct hosal_dma_chan *used_chan;
    void *priv;
} hosal_dma_dev_t;




typedef int hosal_dma_chan_t;






int hosal_dma_init(void);
# 72 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
hosal_dma_chan_t hosal_dma_chan_request(int flag);
# 81 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_release(hosal_dma_chan_t chan);
# 90 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_start(hosal_dma_chan_t chan);
# 99 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_stop(hosal_dma_chan_t chan);
# 110 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_irq_callback_set(hosal_dma_chan_t chan, hosal_dma_irq_t pfn, void *p_arg);
# 119 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_finalize(void);
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h" 2
# 29 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
typedef enum __ADC_INT_EVENTS__{
    HOSAL_ADC_INT_OV,
    HOSAL_ADC_INT_EOS,
    HOSAL_ADC_INT_DMA_TRH,
    HOSAL_ADC_INT_DMA_TRC,
    HOSAL_ADC_INT_DMA_TRE,
} hosal_adc_event_t;




typedef struct {
    uint32_t size;
    void *data;
} hosal_adc_data_t;




typedef enum {
    HOSAL_ADC_ONE_SHOT,
    HOSAL_ADC_CONTINUE
} hosal_adc_sample_mode_t;




typedef struct {
    uint32_t sampling_freq;
    uint32_t pin;
    hosal_adc_sample_mode_t mode;
    uint8_t sample_resolution;
} hosal_adc_config_t;







typedef void (*hosal_adc_irq_t)(void *parg);




typedef struct {
    uint8_t port;
    hosal_adc_config_t config;
    hosal_dma_chan_t dma_chan;
    hosal_adc_irq_t cb;
    void *p_arg;
    void *priv;
} hosal_adc_dev_t;







typedef void (*hosal_adc_cb_t)(hosal_adc_event_t event, void *data, uint32_t size);
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_init(hosal_adc_dev_t *adc);
# 112 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_add_channel(hosal_adc_dev_t *adc, uint32_t channel);
# 124 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_remove_channel(hosal_adc_dev_t *adc, uint32_t channel);
# 133 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
hosal_adc_dev_t *hosal_adc_device_get(void);
# 146 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_value_get(hosal_adc_dev_t *adc, uint32_t channel, uint32_t timeout);
# 157 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_tsen_value_get(hosal_adc_dev_t *adc);
# 172 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_sample_cb_reg(hosal_adc_dev_t *adc, hosal_adc_cb_t cb);
# 185 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_start(hosal_adc_dev_t *adc, void *data, uint32_t size);
# 196 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_stop(hosal_adc_dev_t *adc);
# 207 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_finalize(hosal_adc_dev_t *adc);
# 37 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pm.h" 1



# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h" 1
# 15 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h" 2

struct utils_list_hdr
{
    struct utils_list_hdr *next;
};

struct utils_list
{

    struct utils_list_hdr *first;

    struct utils_list_hdr *last;
};
# 41 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_init(struct utils_list *list);
# 54 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_pool_init(struct utils_list *list, void *pool, size_t elmt_size, unsigned int elmt_cnt, void *default_value);
# 64 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_push_back(struct utils_list *list,
                       struct utils_list_hdr *list_hdr);
# 75 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_push_front(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 85 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
struct utils_list_hdr *utils_list_pop_front(struct utils_list *list);
# 98 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_extract(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 110 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
int utils_list_find(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 127 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_insert(struct utils_list * const list, struct utils_list_hdr * const element,
        int (*cmp)(struct utils_list_hdr const *elementA,
        struct utils_list_hdr const *elementB));
# 145 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_insert_after(struct utils_list * const list, struct utils_list_hdr * const prev_element, struct utils_list_hdr * const element);
# 161 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_insert_before(struct utils_list * const list, struct utils_list_hdr * const next_element, struct utils_list_hdr * const element);
# 173 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_concat(struct utils_list *list1, struct utils_list *list2);
# 189 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
void utils_list_remove(struct utils_list *list, struct utils_list_hdr *prev_element, struct utils_list_hdr *element);
# 199 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
static inline int utils_list_is_empty(const struct utils_list *const list)
{
    return (
# 201 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h" 3 4
           ((void *)0) 
# 201 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
                == list->first);
}
# 213 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
unsigned int utils_list_cnt(const struct utils_list *const list);
# 224 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
static inline struct utils_list_hdr *utils_list_pick(const struct utils_list *const list)
{
    return list->first;
}

static inline struct utils_list_hdr *utils_list_pick_last(const struct utils_list *const list)
{
    return list->last;
}

static inline struct utils_list_hdr *utils_list_next(const struct utils_list_hdr *const list_hdr)
{
    return list_hdr->next;
}
# 259 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
typedef struct utils_dlist_s {
    struct utils_dlist_s *prev;
    struct utils_dlist_s *next;
} utils_dlist_t;

static inline void __utils_dlist_add(utils_dlist_t *node, utils_dlist_t *prev, utils_dlist_t *next)
{
    node->next = next;
    node->prev = prev;

    prev->next = node;
    next->prev = node;
}
# 284 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
static inline void utils_dlist_add(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue, queue->next);
}

static inline void utils_dlist_add_tail(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue->prev, queue);
}

static inline void utils_dlist_del(utils_dlist_t *node)
{
    utils_dlist_t *prev = node->prev;
    utils_dlist_t *next = node->next;

    prev->next = next;
    next->prev = prev;
}

static inline void utils_dlist_init(utils_dlist_t *node)
{
    node->next = node->prev = node;
}

static inline void INIT_UTILS_DLIST_HEAD(utils_dlist_t *list)
{
    list->next = list;
    list->prev = list;
}

static inline int utils_dlist_empty(const utils_dlist_t *head)
{
    return head->next == head;
}
# 413 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
static inline int utils_dlist_entry_number(utils_dlist_t *queue)
{
 int num;
 utils_dlist_t *cur = queue;
 for (num=0;cur->next != queue;cur=cur->next, num++)
  ;

 return num;
}
# 441 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
typedef struct utils_slist_s {
    struct utils_slist_s *next;
} utils_slist_t;

static inline void utils_slist_add(utils_slist_t *node, utils_slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

static inline void utils_slist_add_tail(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        head = head->next;
    }

    utils_slist_add(node, head);
}

static inline void utils_slist_append(utils_slist_t *l, utils_slist_t *n)
{
    utils_slist_t *node;

    node = l;
    while (node->next) node = node->next;


    node->next = n;
    n->next = 
# 469 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h" 3 4
             ((void *)0)
# 469 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
                 ;
}

static inline void utils_slist_del(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        if (head->next == node) {
            head->next = node->next;
            break;
        }

        head = head->next;
    }
}

static inline int utils_slist_empty(const utils_slist_t *head)
{
    return !head->next;
}

static inline void utils_slist_init(utils_slist_t *head)
{
    head->next = 0;
}

static inline utils_slist_t* utils_slist_first(utils_slist_t *l)
{
    return l->next;
}

static inline utils_slist_t* utils_slist_tail(utils_slist_t *l)
{
    while (l->next) l = l->next;

    return l;
}

static inline utils_slist_t* utils_slist_next(utils_slist_t *l)
{
    return l->next;
}
# 591 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/utils/include/utils_list.h"
static inline int utils_slist_entry_number(utils_slist_t *queue)
{
 int num;
    utils_slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
  ;

    return num;
}
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pm.h" 2
# 14 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/bl_pm.h"
enum PM_EVENT_ABLE {
    PM_DISABLE = 0,
    PM_ENABLE,
};

enum WLAN_CODE_SLEEP_CONTROL {
    WLAN_CODE_PM_NOTIFY_START = 0,
    WLAN_CODE_PM_NOTIFY_STOP,
    WLAN_CODE_PM_START,
    WLAN_CODE_PM_STOP,
};

enum WLAN_CODE_ENTER_SLEEP {
    WLAN_CODE_PM_ENTER_SLEEP_PRE = 0,
    WLAN_CODE_PM_ENTER_SLEEP,
};

enum WLAN_CODE_EXIT_SLEEP {
    WLAN_CODE_PM_ENTER_SLEEP_PRE_FAILED = 0,
    WLAN_CODE_PM_EXIT_SLEEP_PRE,
    WLAN_CODE_PM_EXIT_SLEEP,
};

enum WLAN_CODE_BEACON_LOSS {
    WLAN_CODE_BEACON_LOSS = 0,
};

enum WLAN_CODE_SEND_NULLDATA {
   WLAN_CODE_PM_PAUSE = 0,
   WLAN_CODE_PM_NULLDATA_NOACK,
   WLAN_CODE_PM_NULLDATA_SEND_ERROR,
};

enum BLE_CODE_BLE_CONTROL {
    BLE_CODE_PM_TURNON_RF = 0,
    BLE_CODE_PM_TURNOFF_RF,
};

enum PM_LEVEL{
    PM_MODE_STA_NONE = 0,
    PM_MODE_STA_IDLE,
    PM_MODE_STA_MESH,
    PM_MODE_STA_DOZE,
    PM_MODE_STA_COEX,
    PM_MODE_STA_DOWN,
    PM_MODE_AP_IDLE,
    PM_MODE_MAX,
};

enum PM_EVEMT{
    WLAN_PM_EVENT_CONTROL = 0,
    WLAN_PM_EVENT_ENTER_SLEEP,
    WLAN_PM_EVENT_EXIT_SLEEP,
    WLAN_PM_EVENT_BEACON_LOSS,
    WLAN_PM_EVENT_SEND_NULLDATA,
    BLE_PM_EVENT_CONTROL,
    PM_EVENT_MAX,
};

typedef int (*bl_pm_cb_t)(void *arg);

int bl_pm_init(void);
int bl_pm_event_register(enum PM_EVEMT event, uint32_t code, uint32_t cap_bit, uint16_t pirority, bl_pm_cb_t ops, void *arg, enum PM_EVENT_ABLE enable);
int bl_pm_deinit(void);
int bl_pm_state_run(void);
int bl_pm_capacity_set(enum PM_LEVEL level);
int pm_post_event(enum PM_EVEMT event, uint32_t code, uint32_t *retval);
int bl_pm_event_switch(enum PM_EVEMT event, uint32_t code, enum PM_EVENT_ABLE enable);
# 38 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h" 2
# 47 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
struct wifi_hosal_funcs
{
  int (*efuse_read_mac)(uint8_t mac[6]);
  int (*rf_turn_on)(void *arg);
  int (*rf_turn_off)(void *arg);
  hosal_adc_dev_t* (*adc_device_get)(void);
  int (*adc_tsen_value_get)(hosal_adc_dev_t *adc);
  int (*pm_init) (void);
  int (*pm_event_register) (enum PM_EVEMT event, uint32_t code, uint32_t cap_bit, uint16_t pirority, bl_pm_cb_t ops, void *arg, enum PM_EVENT_ABLE enable);
  int (*pm_deinit) (void);
  int (*pm_state_run) (void);
  int (*pm_capacity_set) (enum PM_LEVEL level);
  int (*pm_post_event) (enum PM_EVEMT event, uint32_t code, uint32_t *retval);
  int (*pm_event_switch) (enum PM_EVEMT event, uint32_t code, enum PM_EVENT_ABLE enable);
};

typedef struct wifi_hosal_funcs wifi_hosal_funcs_t;





extern wifi_hosal_funcs_t g_wifi_hosal_funcs;






static inline int hosal_wifi_ret_zero(void *arg)
{
  return 0;
}

static inline int hosal_wifi_ret_non_zero(void *arg)
{
  return -1;
}
# 102 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_efuse_read_mac(uint8_t mac[6]);
# 116 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_rf_turn_on(void *arg);
# 130 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_rf_turn_off(void *arg);
# 143 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
hosal_adc_dev_t* wifi_hosal_adc_device_get(void);
# 157 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_adc_tsen_value_get(hosal_adc_dev_t *adc);
# 171 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_init(void);
# 183 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_event_register(enum PM_EVEMT event, uint32_t code, uint32_t cap_bit, uint16_t pirority, bl_pm_cb_t ops, void *arg, enum PM_EVENT_ABLE enable);
# 195 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_deinit(void);
# 207 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_state_run(void);
# 219 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_capacity_set(enum PM_LEVEL level);
# 231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_post_event(enum PM_EVEMT event, uint32_t code, uint32_t *retval);
# 243 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_event_switch(enum PM_EVEMT event, uint32_t code, enum PM_EVENT_ABLE enable);
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h" 2

enum ap_info_type {





  AP_INFO_TYPE_SUGGEST,





  AP_INFO_TYPE_PRESIST,
};

struct ap_info {
  enum ap_info_type type;




  int time_to_live;


  uint8_t *bssid;


  uint8_t band;


  uint16_t freq;

  uint8_t use_dhcp;
};


struct ap_connect_adv {

  char *psk;


  struct ap_info ap_info;
# 56 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
    uint32_t flags;
};

typedef struct ap_connect_adv ap_connect_adv_t;

typedef struct wifi_mgmr_ap_item {
    char ssid[32];
    char ssid_tail[1];
    uint32_t ssid_len;
    uint8_t bssid[6];
    uint8_t channel;
    uint8_t auth;
    int8_t rssi;
} wifi_mgmr_ap_item_t;

typedef struct wifi_mgmr_sta_connect_ind_stat_info {
    uint16_t status_code;

    uint8_t type_ind;
    char ssid[32];
    char passphr[65];
    char psk[64];
    uint8_t bssid[6];
    uint16_t chan_freq;
    uint8_t chan_band;
} wifi_mgmr_sta_connect_ind_stat_info_t;

typedef struct wifi_sta_basic_info {
    uint8_t sta_idx;
    uint8_t is_used;
    uint8_t sta_mac[6];
    uint32_t tsfhi;
    uint32_t tsflo;
    int rssi;
    uint8_t data_rate;
} wifi_sta_basic_info_t;

typedef struct wifi_sta_ps_conf {

    int listen_interval;

    uint16_t wifi_active_period;
}wifi_sta_ps_conf_t;

typedef void *wifi_interface_t;
typedef void (*sniffer_cb_t)(void *env, uint8_t *pkt, int len);
typedef void (*scan_item_cb_t)(wifi_mgmr_ap_item_t *env, uint32_t *param1, wifi_mgmr_ap_item_t *item);
typedef void (*scan_complete_cb_t)(void *data, void *param);


enum
{

    PS_MODE_OFF,

    PS_MODE_ON,

    PS_MODE_ON_DYN,
};

enum WIFI_STATE_ENUM_LIST {
    WIFI_STATE_UNKNOWN = 0x00,
    WIFI_STATE_IDLE = 0x01,
    WIFI_STATE_CONNECTING = 0x02,
    WIFI_STATE_CONNECTED_IP_GETTING = 0x03,
    WIFI_STATE_CONNECTED_IP_GOT = 0x04,
    WIFI_STATE_DISCONNECT = 0x05,
    WIFI_STATE_WITH_AP_IDLE = 0x11,
    WIFI_STATE_WITH_AP_CONNECTING = 0x12,
    WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING = 0x13,
    WIFI_STATE_WITH_AP_CONNECTED_IP_GOT = 0x14,
    WIFI_STATE_WITH_AP_DISCONNECT = 0x15,
    WIFI_STATE_IFDOWN = 0x06,
    WIFI_STATE_SNIFFER = 0x07,
    WIFI_STATE_PSK_ERROR = 0x08,
    WIFI_STATE_NO_AP_FOUND = 0x09,
};


enum WIFI_SCAN_DONE_EVENT_TYPE {
    WIFI_SCAN_DONE_EVENT_OK = 0x00,
    WIFI_SCAN_DONE_EVENT_BUSY = 0x01,
};

enum WIFI_COEX_PM_LEVEL {
    WIFI_COEX_PM_STA_NONE = PM_MODE_STA_NONE,
    WIFI_COEX_PM_STA_IDLE = PM_MODE_STA_IDLE,
    WIFI_COEX_PM_STA_MESH = PM_MODE_STA_MESH,
    WIFI_COEX_PM_STA_DOZE = PM_MODE_STA_DOZE,
    WIFI_COEX_PM_STA_COEX = PM_MODE_STA_COEX,
    WIFI_COEX_PM_STA_DOWN = PM_MODE_STA_DOWN,
    WIFI_COEX_PM_AP_IDLE = PM_MODE_AP_IDLE,
    WIFI_COEX_PM_MAX = PM_MODE_MAX,
};

typedef struct wifi_conf {
    char country_code[3];
    int channel_nums;
} wifi_conf_t;


int wifi_mgmr_psk_cal(char *password, char *ssid, int ssid_len, char *output);
int wifi_mgmr_drv_init(wifi_conf_t *conf);
int wifi_mgmr_init(void);
void wifi_mgmr_start(void);
void wifi_mgmr_start_background(wifi_conf_t *conf);
void wifi_mgmr_get_wifi_channel_conf(wifi_conf_t *wifi_chan_conf);

wifi_interface_t wifi_mgmr_sta_enable(void);
int wifi_mgmr_sta_disable(wifi_interface_t *interface);
struct netif *wifi_mgmr_sta_netif_get(void);
struct netif *wifi_mgmr_ap_netif_get(void);
int wifi_mgmr_sta_mac_set(uint8_t mac[6]);
int wifi_mgmr_sta_mac_get(uint8_t mac[6]);
int wifi_mgmr_sta_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask);
int wifi_mgmr_sta_ip_set(uint32_t ip, uint32_t mask, uint32_t gw, uint32_t dns1, uint32_t dns2);
int wifi_mgmr_sta_dns_get(uint32_t *dns1, uint32_t *dns2);
int wifi_mgmr_sta_ip_unset(void);
int wifi_mgmr_sta_connect_ext(wifi_interface_t *wifi_interface, char *ssid, char *passphr, const ap_connect_adv_t *conn_adv_param);
int wifi_mgmr_sta_connect(wifi_interface_t *wifi_interface, char *ssid, char *psk, char *pmk, uint8_t *mac, uint8_t band, uint16_t freq);
int wifi_mgmr_sta_disconnect(void);
int wifi_mgmr_sta_state_get(int *state);
int wifi_mgmr_sta_ps_enter(uint32_t ps_level);
int wifi_mgmr_sta_ps_exit();
int wifi_mgmr_sta_autoconnect_enable(void);
int wifi_mgmr_sta_autoconnect_disable(void);
int wifi_mgmr_sta_autoconnect_set(int interval_second, int repeat_count);
void wifi_mgmr_sta_ssid_set(char *ssid);
void wifi_mgmr_sta_passphr_set(char *passphr);
void wifi_mgmr_sta_psk_set(char *psk) __attribute__ ((deprecated ("use wifi_mgmr_sta_passphr_set instead")));
void wifi_mgmr_sta_connect_ind_stat_get(wifi_mgmr_sta_connect_ind_stat_info_t *wifi_mgmr_ind_stat);

wifi_interface_t wifi_mgmr_ap_enable(void);
int wifi_mgmr_ap_mac_set(uint8_t mac[6]);
int wifi_mgmr_ap_mac_get(uint8_t mac[6]);
int wifi_mgmr_ap_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask);
int wifi_mgmr_ap_ip_set(uint32_t ip, uint32_t gw, uint32_t mask);
int wifi_mgmr_ap_dhcp_get(int *enable);
int wifi_mgmr_ap_dhcp_enable(void);
int wifi_mgmr_ap_dhcp_disable(void);
int wifi_mgmr_ap_dhcp_range_get(uint32_t *ip, uint32_t *mask, int *start, int *end);
int wifi_mgmr_ap_dhcp_range_set(uint32_t ip, uint32_t mask, int start, int end);
int wifi_mgmr_ap_stop(wifi_interface_t *interface);
int wifi_mgmr_ap_start(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel);
int wifi_mgmr_ap_sta_cnt_get(uint8_t *sta_cnt);
int wifi_mgmr_ap_sta_info_get(struct wifi_sta_basic_info *sta_info, uint8_t idx);
int wifi_mgmr_ap_sta_delete(uint8_t sta_idx);
int wifi_mgmr_ap_set_gateway(char *gateway);
int wifi_mgmr_sniffer_enable(void);
int wifi_mgmr_sniffer_disable(void);
int wifi_mgmr_rate_config(uint16_t config);
int wifi_mgmr_conf_max_sta(uint8_t max_sta_supported);
int wifi_mgmr_sniffer_register(void *env, sniffer_cb_t cb);
int wifi_mgmr_sniffer_unregister(void *env);
int wifi_mgmr_state_get(int *state);
int wifi_mgmr_status_code_get(int *s_code);
int wifi_mgmr_rssi_get(int *rssi);
int wifi_mgmr_channel_get(int *channel);
int wifi_mgmr_channel_set(int channel, int use_40Mhz);
int wifi_mgmr_all_ap_scan(wifi_mgmr_ap_item_t **ap_ary, uint32_t *num);
int wifi_mgmr_scan_filter_hidden_ssid(int filter);
int wifi_mgmr_scan(void *data, scan_complete_cb_t cb);
int wifi_mgmr_scan_fixed_channels(void *data, scan_complete_cb_t cb, uint16_t *channels, uint16_t channel_num);
int wifi_mgmr_scan_adv(void *data, scan_complete_cb_t cb, uint16_t *channels, uint16_t channel_num, const char *ssid, uint8_t scan_mode, uint32_t duration_scan);
int wifi_mgmr_cfg_req(uint32_t ops, uint32_t task, uint32_t element, uint32_t type, uint32_t length, uint32_t *buf);
int wifi_mgmr_scan_complete_callback();
int wifi_mgmr_cli_scanlist(void);
int wifi_mgmr_cli_init(void);
int wifi_mgmr_scan_ap(char *ssid, wifi_mgmr_ap_item_t *item);
int wifi_mgmr_scan_ap_all(wifi_mgmr_ap_item_t *env, uint32_t *param1, scan_item_cb_t cb);
int wifi_mgmr_raw_80211_send(uint8_t *pkt, int len);
int wifi_mgmr_set_country_code(char *country_code);
int wifi_mgmr_get_country_code(char *country_code);
int wifi_mgmr_set_hostname(char *hostname);
int wifi_mgmr_ext_dump_needed();
const char* wifi_mgmr_status_code_str(uint16_t status_code);
int wifi_mgmr_beacon_interval_set(uint16_t beacon_int);
void wifi_mgmr_conn_result_get(uint16_t *status_code, uint16_t *reason_code);
int wifi_mgmr_set_wifi_active_time(uint32_t ms);
int wifi_mgmr_set_listen_interval(uint16_t itv);
int wifi_mgmr_pm_ops_register(void);
int wifi_mgmr_fw_affair_ops(void);
# 16 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 36 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 17 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h" 1
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/event_type_code.h" 1
# 13 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h" 2
# 100 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
typedef struct {

    uint32_t time;

    uint16_t type;

    uint16_t code;

    unsigned long value;

    unsigned long extra;
} input_event_t;


typedef void (*aos_event_cb)(input_event_t *event, void *private_data);

typedef void (*aos_call_t)(void *arg);

typedef void (*aos_poll_call_t)(int fd, void *arg);
# 129 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_register_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 140 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_unregister_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 151 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_post_event(uint16_t type, uint16_t code, unsigned long value);
# 162 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 171 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 182 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_post_delayed_action(int ms, aos_call_t action, void *arg);
# 191 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_delayed_action(int ms, aos_call_t action, void *arg);
# 204 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_schedule_call(aos_call_t action, void *arg);

typedef void *aos_loop_t;






aos_loop_t aos_loop_init(void);






aos_loop_t aos_current_loop(void);




void aos_loop_run(void);




void aos_loop_exit(void);




void aos_loop_destroy(void);
# 246 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
int aos_loop_schedule_call(aos_loop_t *loop, aos_call_t action, void *arg);
# 259 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void *aos_loop_schedule_work(int ms, aos_call_t action, void *arg1,
                             aos_call_t fini_cb, void *arg2);
# 269 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_work(void *work, aos_call_t action, void *arg1);
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 2



static int wps_tx_start_(void);
static int wifi_station_wps_deinit_(void);
static int wps_dev_deinit_(struct wps_device_data *dev);

static struct wps_sm *gWpsSm;

struct wps_sm *wps_sm_get(void)
{
    return gWpsSm;
}

int wps_get_status(void)
{
    return bl_wifi_get_wps_status_internal();
}

int wps_set_status(uint32_t status)
{
    bl_wifi_set_wps_status_internal(status);
    return 0;
}

int wps_credential_save(u8 idx, u8 *ssid, u8 ssid_len, char *key, u8 key_len)
{
    struct wps_sm *sm = gWpsSm;

    if (!ssid || !sm || idx > 2) {
        return -1;
    }

    memset(sm->ssid[idx], 0x00, sizeof(sm->ssid[idx]));
    memcpy(sm->ssid[idx], ssid, ssid_len);
    sm->ssid_len[idx] = ssid_len;
    memset(sm->key[idx], 0x00, sizeof(sm->key[idx]));
    memcpy(sm->key[idx], key, key_len);
    sm->key_len[idx] = key_len;

    sm->ap_cred_cnt++;

    return 0;
}

wps_type_t wps_get_type()
{
    struct wps_sm *wps = gWpsSm;
    return wps->cfg.type;
}

static void wps_build_ic_appie_wps_pr_(void)
{
    struct wpabuf *extra_ie = 
# 71 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                             ((void *)0)
# 71 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                 ;
    struct wpabuf *wps_ie;
    struct wps_sm *sm = gWpsSm;

    do {} while(0);

    if (wps_get_type() == WPS_TYPE_PBC) {
        wps_ie = (struct wpabuf *)wps_build_probe_req_ie(DEV_PW_PUSHBUTTON,
                 sm->dev,
                 sm->uuid, WPS_REQ_ENROLLEE,
                 0, 
# 81 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                   ((void *)0)
# 81 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                       );
    } else {
        wps_ie = (struct wpabuf *)wps_build_probe_req_ie(DEV_PW_DEFAULT,
                 sm->dev,
                 sm->uuid, WPS_REQ_ENROLLEE,
                 0, 
# 86 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                   ((void *)0)
# 86 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                       );
    }

    if (wps_ie) {
        if (wpabuf_resize(&extra_ie, wpabuf_len(wps_ie)) == 0) {
            wpabuf_put_buf(extra_ie, wps_ie);
        } else {
            wpabuf_free(wps_ie);
            return;
        }
        wpabuf_free(wps_ie);
    }

    memcpy(sm->wps_ie_probe_request, wpabuf_head(extra_ie), extra_ie->used);
    sm->wps_ie_probe_request_len = extra_ie->used;
    wpabuf_free(extra_ie);
    bl_wifi_set_appie_internal(0xff, WIFI_APPIE_WPS_PR, sm->wps_ie_probe_request, sm->wps_ie_probe_request_len, 
# 102 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                                                               1
# 102 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                                                                   );
}

static void wps_build_ic_appie_wps_ar_(void)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *buf = (struct wpabuf *)wps_build_assoc_req_ie(WPS_REQ_ENROLLEE);

    do {} while(0);

    if (buf) {
        memcpy(sm->wps_ie_association_request, wpabuf_head(buf), buf->used);
        sm->wps_ie_association_request_len = buf->used;
        wpabuf_free(buf);
        bl_wifi_set_appie_internal(0xff, WIFI_APPIE_WPS_AR, sm->wps_ie_association_request, sm->wps_ie_association_request_len, 
# 116 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                                                                               1
# 116 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                                                                                   );
    }
}

typedef enum {
    WPS_SCAN_TARGET_FOUND,
    WPS_SCAN_SESSION_OVERLAP,
    WPS_SCAN_TIMEOUT,
    WPS_SCAN_ERROR,
} wps_scan_result_t;

static void wps_scan_complete_(void *data, void *param)
{
    SemaphoreHandle_t scan_sem = (SemaphoreHandle_t)data;
    xQueueGenericSend( ( QueueHandle_t ) ( scan_sem ), 
# 130 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
   ((void *)0)
# 130 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
}

static wps_scan_result_t wps_scan_(void)
{
    struct wps_sm *sm = gWpsSm;
    wps_scan_result_t result = WPS_SCAN_TIMEOUT;
    SemaphoreHandle_t scan_sem = 
# 137 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                ((void *)0)
# 137 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                    ;

    if (
# 139 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
       ((void *)0) 
# 139 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
            == (scan_sem = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) ))) {
        result = WPS_SCAN_ERROR;
        goto exit;
    }

    sm->is_wps_scan = 
# 144 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                     1
# 144 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                         ;
    wps_set_status(WPS_STATUS_SCANNING);
    while (xTaskGetTickCount() - sm->start_tick < ( ( TickType_t ) ( ( ( TickType_t ) ( (120 * 1000) ) * ( TickType_t ) ( ( TickType_t ) 1000 ) ) / ( TickType_t ) 1000 ) )) {
        wifi_mgmr_scan(scan_sem, wps_scan_complete_);
        xQueueSemaphoreTake( ( scan_sem ), ( ( TickType_t ) 0xffffffffUL ) );

        if (sm->discover_ssid_cnt == 1) {
            result = WPS_SCAN_TARGET_FOUND;
            goto exit;
        } else if (sm->discover_ssid_cnt > 1) {
            result = WPS_SCAN_SESSION_OVERLAP;
            goto exit;
        }
    }
exit:
    if (scan_sem) {
        vQueueDelete( ( QueueHandle_t ) ( scan_sem ) );
    }
    sm->is_wps_scan = 
# 162 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                     0
# 162 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                          ;
    return result;
}

static void notify_user_(bl_wps_event_t event, void *payload)
{
    struct wps_sm *sm = gWpsSm;

    if (sm->cfg.event_cb) {
        sm->cfg.event_cb(event, payload, sm->cfg.event_cb_arg);
    }
}

static void wifi_event_cb_(input_event_t *event, void *private_data)
{
    struct wps_sm *sm = (struct wps_sm *)private_data;
    wps_evq_msg_t msg = {};

    if (event->code == 5) {
        msg.event = WPS_EVQ_DISCONNECTED;
        xQueueGenericSend( ( sm->event_queue ), ( &msg ), ( ( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
    }
}

static void wps_timeout_cb_(TimerHandle_t xTimer)
{
    struct wps_sm *sm = gWpsSm;
    wps_evq_msg_t msg = { .event = WPS_EVQ_TIMEOUT };
    xQueueGenericSend( ( sm->event_queue ), ( &msg ), ( ( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
}

static void wps_eapol_start_timer_cb_(void *arg)
{
    wps_tx_start_();
}

static void wps_success_timer_cb_(TimerHandle_t xTimer)
{
    wifi_mgmr_sta_disconnect();
}

static void connect_ap_wps_neg_(u8 *ssid, u8 ssid_len, u8 *bssid)
{
    char ssid_str[33] = {};
    wifi_interface_t wifi_interface = wifi_mgmr_sta_enable();
    struct ap_connect_adv ext_param;
    memcpy(ssid_str, ssid, ssid_len);

    wifi_mgmr_sta_autoconnect_disable();

    memset(&ext_param, 0, sizeof(ext_param));
    ext_param.ap_info.type = AP_INFO_TYPE_SUGGEST;
    ext_param.ap_info.time_to_live = 5;
    ext_param.ap_info.bssid = bssid;


    wifi_mgmr_sta_connect_ext(wifi_interface, ssid_str, 
# 218 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                       ((void *)0)
# 218 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                           , &ext_param);
}

static void prepare_stop_(void)
{
    wps_set_status(WPS_STATUS_DISABLE);

    bl_wifi_set_appie_internal(0xff, WIFI_APPIE_WPS_PR, 
# 225 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                       ((void *)0)
# 225 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                           , 0, 
# 225 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                1
# 225 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                    );
    bl_wifi_set_appie_internal(0xff, WIFI_APPIE_WPS_AR, 
# 226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                       ((void *)0)
# 226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                           , 0, 
# 226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                1
# 226 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                    );
    bl_wifi_set_wps_cb_internal(
# 227 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                               ((void *)0)
# 227 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                   );

    wifi_mgmr_sta_disconnect();
    vTaskDelay(1000);
    wifi_mgmr_sta_disable(
# 231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                         ((void *)0)
# 231 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                             );
    vTaskDelay(100);
    wifi_mgmr_sta_autoconnect_enable();
}

static void wps_task_(void *pvParameters)
{
    struct wps_sm *sm = gWpsSm;

    sm->start_tick = xTaskGetTickCount();

    if (wps_get_type() == WPS_TYPE_PIN) {

        bl_wps_pin_t *pin = pvPortMalloc(sizeof(*pin));
        if (pin) {
            memcpy(pin->pin, sm->wps->dev_password, 8);
            notify_user_(BL_WPS_EVENT_PIN, pin);
        }
    }

    wps_build_ic_appie_wps_pr_();
    wps_build_ic_appie_wps_ar_();

    wps_build_public_key(sm->wps, 
# 254 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                 ((void *)0)
# 254 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                     , WPS_CALC_KEY_PRE_CALC);

    aos_register_event_filter(0x0002, wifi_event_cb_, sm);

    wps_scan_result_t scan_result = wps_scan_();

    switch (scan_result) {
    case WPS_SCAN_TARGET_FOUND:
        wps_set_status(WPS_STATUS_PENDING);
        connect_ap_wps_neg_(sm->ssid_neg, sm->ssid_neg_len, sm->bssid);
        break;
    case WPS_SCAN_SESSION_OVERLAP:
        notify_user_(BL_WPS_EVENT_SESSION_OVERLAP, 0);
        goto error_out;
    case WPS_SCAN_TIMEOUT:
        notify_user_(BL_WPS_EVENT_TIMEOUT, 0);
        goto error_out;
    default:
        notify_user_(BL_WPS_EVENT_SCAN_ERROR, 0);
        goto error_out;
    }

    bl_wifi_timer_setfn(&sm->wps_eapol_start_timer, wps_eapol_start_timer_cb_, sm);

    TickType_t time_elapsed = xTaskGetTickCount() - sm->start_tick;
    if (time_elapsed >= (120 * 1000)) {
        notify_user_(BL_WPS_EVENT_TIMEOUT, 0);
        goto error_out;
    }
    TickType_t timeout_timer_period = ( ( TickType_t ) ( ( ( TickType_t ) ( (120 * 1000) ) * ( TickType_t ) ( ( TickType_t ) 1000 ) ) / ( TickType_t ) 1000 ) ) - time_elapsed;
    sm->timeout_timer = xTimerCreateStatic("wps timeout", timeout_timer_period, ( ( BaseType_t ) 0 ), 0, wps_timeout_cb_, &sm->timeout_timer_buffer);
    xTimerGenericCommand( ( sm->timeout_timer ), ( ( BaseType_t ) 1 ), ( xTaskGetTickCount() ), 
# 285 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
   ((void *)0)
# 285 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
   , ( ( TickType_t ) 0xffffffffUL ) );

    for (;;) {
        wps_evq_msg_t msg;
        
# 289 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
       _Bool 
# 289 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
            exit_loop = 
# 289 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                        0
# 289 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                             ;
        if (( ( ( BaseType_t ) 1 ) ) != xQueueReceive(sm->event_queue, &msg, ( TickType_t ) 0xffffffffUL)) {
            break;
        }

        switch (msg.event) {
        case WPS_EVQ_SUCCESS:
            sm->success_cb_timer = xTimerCreateStatic("wps success", ( ( TickType_t ) ( ( ( TickType_t ) ( 1000 ) * ( TickType_t ) ( ( TickType_t ) 1000 ) ) / ( TickType_t ) 1000 ) ), ( ( BaseType_t ) 0 ), 0, wps_success_timer_cb_, &sm->success_cb_timer_buffer);
            xTimerGenericCommand( ( sm->success_cb_timer ), ( ( BaseType_t ) 1 ), ( xTaskGetTickCount() ), 
# 297 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
           ((void *)0)
# 297 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
           , ( ( TickType_t ) 0xffffffffUL ) );
            break;
        case WPS_EVQ_FAILURE:
            prepare_stop_();
            break;
        case WPS_EVQ_DISCONNECTED:
            if (sm->timeout_timer) {
                xTimerGenericCommand( ( sm->timeout_timer ), ( ( BaseType_t ) 3 ), 0U, 
# 304 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
               ((void *)0)
# 304 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
               , ( ( TickType_t ) 0xffffffffUL ) );
                xTimerGenericCommand( ( sm->timeout_timer ), ( ( BaseType_t ) 5 ), 0U, 
# 305 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
               ((void *)0)
# 305 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
               , ( ( TickType_t ) 0xffffffffUL ) );
                sm->timeout_timer = 
# 306 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                   ((void *)0)
# 306 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                       ;
            }
            if (sm->success_cb_timer) {
                xTimerGenericCommand( ( sm->success_cb_timer ), ( ( BaseType_t ) 3 ), 0U, 
# 309 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
               ((void *)0)
# 309 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
               , ( ( TickType_t ) 0xffffffffUL ) );
                xTimerGenericCommand( ( sm->success_cb_timer ), ( ( BaseType_t ) 5 ), 0U, 
# 310 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
               ((void *)0)
# 310 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
               , ( ( TickType_t ) 0xffffffffUL ) );
                sm->success_cb_timer = 
# 311 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                      ((void *)0)
# 311 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                          ;
            }
            if (sm->wps->state == WPS_FINISHED && sm->ap_cred_cnt == 1) {
                bl_wps_ap_credential_t *cred;
                prepare_stop_();
                if ((cred = pvPortMalloc(sizeof(*cred)))) {
                    memset(cred, 0, sizeof(*cred));
                    memcpy(cred->bssid, sm->bssid, 6);
                    memcpy(cred->ssid, sm->ssid[0], sm->ssid_len[0]);
                    memcpy(cred->passphrase, sm->key[0], sm->key_len[0]);
                    notify_user_(BL_WPS_EVENT_COMPLETE, cred);
                } else {
                    notify_user_(BL_WPS_EVENT_FAILURE, 0);
                }
            } else {
                prepare_stop_();
                notify_user_(BL_WPS_EVENT_FAILURE, 0);
            }
            exit_loop = 
# 329 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                       1
# 329 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                           ;
            break;
        case WPS_EVQ_TIMEOUT:
            prepare_stop_();
            notify_user_(BL_WPS_EVENT_TIMEOUT, 0);
            exit_loop = 
# 334 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                       1
# 334 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                           ;
            break;
        }
        if (exit_loop) {
            break;
        }
    }
error_out:
    wifi_station_wps_deinit_();
    vTaskDelete(
# 343 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
               ((void *)0)
# 343 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                   );
}

static void wps_set_default_factory_(void)
{
    struct wps_sm *wps = gWpsSm;
    wps_factory_information_t *factory_info = &wps->factory_info;

    sprintf(factory_info->manufacturer, "Bouffalo Lab");
    sprintf(factory_info->model_name, "BL60X");
    sprintf(factory_info->model_number, "BL60X");
    sprintf(factory_info->device_name, "BL60X STATION");
}

static int wps_set_factory_info_(const struct bl_wps_config *config)
{
    struct wps_sm *wps = gWpsSm;
    wps_factory_information_t *factory_info = &wps->factory_info;

    wps_set_default_factory_();

    if (config->factory_info.manufacturer[0] != 0) {
        memcpy(factory_info->manufacturer, config->factory_info.manufacturer, 65 - 1);
    }

    if (config->factory_info.model_number[0] != 0) {
        memcpy(factory_info->model_number, config->factory_info.model_number, 33 - 1);
    }

    if (config->factory_info.model_name[0] != 0) {
        memcpy(factory_info->model_name, config->factory_info.model_name, 33 - 1);
    }

    if (config->factory_info.device_name[0] != 0) {
        memcpy(factory_info->device_name, config->factory_info.device_name, 33 - 1);
    }

    do {} while(0)
                                                                                               ;

    return 0;
}

static int wps_dev_init_(void)
{
    int ret = 0;
    struct wps_sm *sm = gWpsSm;
    struct wps_device_data *dev = 
# 390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                 ((void *)0)
# 390 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                     ;
    wps_factory_information_t *factory_info;

    dev = &sm->wps_ctx->dev;
    sm->dev = dev;
    factory_info = &sm->factory_info;

    dev->config_methods = 0x0280 | 0x4008;
    dev->rf_bands = 0x01;

    WPA_PUT_BE16(dev->pri_dev_type, WPS_DEV_COMPUTER);
    WPA_PUT_BE32(dev->pri_dev_type + 2, 0x0050f204);
    WPA_PUT_BE16(dev->pri_dev_type + 6, WPS_DEV_COMPUTER_PC);

    dev->manufacturer = (char *)wpa_supplicant_zalloc(1, (65));
    if (!dev->manufacturer) {
        ret = -1;
        goto _out;
    }
    sprintf(dev->manufacturer, factory_info->manufacturer);

    dev->model_name = (char *)wpa_supplicant_zalloc(1, (33));
    if (!dev->model_name) {
        ret = -1;
        goto _out;
    }
    sprintf(dev->model_name, factory_info->model_name);

    dev->model_number = (char *)wpa_supplicant_zalloc(1, (33));
    if (!dev->model_number) {
        ret = -1;
        goto _out;
    }
    sprintf(dev->model_number, factory_info->model_number);

    dev->device_name = (char *)wpa_supplicant_zalloc(1, (33));
    if (!dev->device_name) {
        ret = -1;
        goto _out;
    }
    sprintf(dev->device_name, factory_info->device_name);

    dev->serial_number = (char *)wpa_supplicant_zalloc(1, (16));
    if (!dev->serial_number) {
        ret = -1;
        goto _out;
    }
    sprintf(dev->serial_number, "%02x%02x%02x%02x%02x%02x",
            sm->ownaddr[0], sm->ownaddr[1], sm->ownaddr[2],
            sm->ownaddr[3], sm->ownaddr[4], sm->ownaddr[5]);

    uuid_gen_mac_addr(sm->ownaddr, sm->uuid);
    memcpy(dev->mac_addr, sm->ownaddr, 6);

    return 0;

_out:
    wps_dev_deinit_(dev);

    return ret;
}

static int wps_dev_deinit_(struct wps_device_data *dev)
{
    int ret = 0;

    if (!dev) {
        return -1;
    }

    if (dev->manufacturer) {
        wpa_supplicant_free((dev->manufacturer));
        dev->manufacturer = 
# 462 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                           ((void *)0)
# 462 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                               ;
    }
    if (dev->model_name) {
        wpa_supplicant_free((dev->model_name));
        dev->model_name = 
# 466 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                         ((void *)0)
# 466 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                             ;
    }
    if (dev->model_number) {
        wpa_supplicant_free((dev->model_number));
        dev->model_number = 
# 470 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                           ((void *)0)
# 470 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                               ;
    }
    if (dev->device_name) {
        wpa_supplicant_free((dev->device_name));
        dev->device_name = 
# 474 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                          ((void *)0)
# 474 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                              ;
    }
    if (dev->serial_number) {
        wpa_supplicant_free((dev->serial_number));
        dev->serial_number = 
# 478 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                            ((void *)0)
# 478 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                ;
    }

    return ret;
}
# 494 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
static struct wps_data *wps_init_(void)
{
    struct wps_sm *sm = gWpsSm;
    struct wps_data *data = (struct wps_data *)wpa_supplicant_zalloc(1, (sizeof(*data)));
    const char *all_zero_pin = "00000000";

    if (data == 
# 500 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
               ((void *)0)
# 500 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                   ) {
        return 
# 501 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
              ((void *)0)
# 501 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                  ;
    }

    data->wps = sm->wps_ctx;

    data->registrar = 0;

    memcpy(data->mac_addr_e, sm->dev->mac_addr, 6);
    memcpy(data->uuid_e, sm->uuid, 16);

    if (wps_get_type() == WPS_TYPE_PIN) {
        u32 spin = 0;
        data->dev_pw_id = DEV_PW_DEFAULT;
        data->dev_password_len = 8;
        data->dev_password = (u8 *) wpa_supplicant_zalloc(1, (data->dev_password_len + 1));
        if (data->dev_password == 
# 516 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                 ((void *)0)
# 516 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                     ) {
            wpa_supplicant_free((data));
            return 
# 518 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                  ((void *)0)
# 518 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                      ;
        }

        spin = wps_generate_pin();
        sprintf((char *)data->dev_password, "%08lu", spin);
        do {} while(0)
                                                                   ;
        do {
            char tmpp[9];
            wpa_supplicant_bzero(tmpp, 9);
            memcpy(tmpp, data->dev_password, 8);
            do {} while(0);
        } while (0);
    } else if (wps_get_type() == WPS_TYPE_PBC) {
        data->pbc = 1;

        data->dev_pw_id = DEV_PW_PUSHBUTTON;
        if (data->dev_password) {
            wpa_supplicant_free((data->dev_password));
        }
        data->dev_password = (u8 *) wpa_supplicant_zalloc(1, (9));
        if (data->dev_password == 
# 539 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                 ((void *)0)
# 539 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                     ) {
            wpa_supplicant_free((data));
            return 
# 541 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                  ((void *)0)
# 541 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                      ;
        } else {
            strncpy((char *)data->dev_password, all_zero_pin, 9);
        }
        data->dev_password_len = 8;
    }

    data->wps->config_methods = 0x0080 | 0x0008;

    data->wps->config_methods |= (0x0280 | 0x4008);


    data->state = data->registrar ? RECV_M1 : SEND_M1;

    return data;
}


static 
# 559 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
      _Bool 
# 559 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
           wps_parse_scan_result(struct wps_scan_ie *scan)
{
    struct wps_sm *sm = gWpsSm;
# 570 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
    if (wps_get_type() == WPS_TYPE_DISABLE || wps_get_status() != WPS_STATUS_SCANNING) {
        return 
# 571 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
              0
# 571 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                   ;
    }

    struct wpabuf *buf = wpabuf_alloc_copy(scan->wps + 6, scan->wps[1] - 4);


    if (wps_is_selected_pbc_registrar(buf, scan->bssid)
            || wps_is_selected_pin_registrar(buf, scan->bssid)) {
        wpabuf_free(buf);

        if (sm->is_wps_scan == 
# 581 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                              0
# 581 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                   ) {
            return 
# 582 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                  0
# 582 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                       ;
        }

        if (memcmp(sm->bssid, scan->bssid, 6)) {
            sm->discover_ssid_cnt++;
        }
        if (!scan->rsn && !scan->wpa && (scan->capinfo & 0x0010)) {
            do {} while(0);

            return 
# 591 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                  0
# 591 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                       ;
        }

        memcpy(sm->ssid_neg, scan->ssid, scan->ssid_len);
        sm->ssid_neg_len = scan->ssid_len;
        if (scan->bssid) {
            memcpy(sm->bssid, scan->bssid, 6);
        } else {
        }
        do {} while(0);
        sm->scan_cnt = 0;

        sm->channel = scan->chan;

        return 
# 605 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
              1
# 605 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                  ;
    }
    wpabuf_free(buf);

    return 
# 609 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
          0
# 609 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
               ;
}

static int wps_stop_process(void)
{
    struct wps_sm *sm = gWpsSm;

    if (!gWpsSm) {
        return -1;
    }

    wps_set_status(WPS_STATUS_DISABLE);
    sm->scan_cnt = 0;
    sm->discover_ssid_cnt = 0;
    sm->wps->state = SEND_M1;
    wpa_supplicant_bzero(sm->bssid, 6);
    wpa_supplicant_bzero(sm->ssid, sizeof(sm->ssid));
    wpa_supplicant_bzero(sm->ssid_len, sizeof(sm->ssid_len));
    sm->ap_cred_cnt = 0;
# 637 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
    do {} while(0);





    return 0;
}

static int wps_finish(void)
{
    struct wps_sm *sm = gWpsSm;
    int ret = -1;

    if (!gWpsSm) {
        return -1;
    }

    if (sm->wps->state == WPS_FINISHED) {
# 666 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
        do {} while(0);
        wps_set_status(WPS_STATUS_SUCCESS);



        if (sm->ap_cred_cnt == 1) {
            wps_evq_msg_t msg = { .event = WPS_EVQ_SUCCESS };
            xQueueGenericSend( ( sm->event_queue ), ( &msg ), ( ( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
# 685 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
        }





        ret = 0;
    } else {
        do {} while(0);

        ret = wps_stop_process();
    }

    return ret;
}

static int wps_send_eap_identity_rsp_(u8 id)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *eap_buf = 
# 704 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                            ((void *)0)
# 704 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                ;
    u8 bssid[6];
    u8 *buf = 
# 706 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
             ((void *)0)
# 706 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                 ;
    int len;
    int ret = 0;

    do {} while(0);
    eap_buf = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_IDENTITY, sm->identity_len,
                            EAP_CODE_RESPONSE, id);
    if (!eap_buf) {
        ret = -1;
        goto _err;
    }

    ret = bl_wifi_get_assoc_bssid_internal(sm->vif_idx, bssid);
    if (ret != 0) {
        do {} while(0);
        return -1;
    }

    wpabuf_put_data(eap_buf, sm->identity, sm->identity_len);

    buf = wpa_sm_alloc_eapol(1, IEEE802_1X_TYPE_EAP_PACKET, wpabuf_head_u8(eap_buf), wpabuf_len(eap_buf), (size_t *)&len, 
# 726 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                                                                                            ((void *)0)
# 726 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                                                                                                );
    if (!buf) {
        ret = -1;
        goto _err;
    }

    ret = wpa_sm_ether_send(sm->ownaddr, bssid, 0x888E, buf, len);
    if (ret) {
        ret = -1;
        goto _err;
    }

_err:
    wpa_sm_free_eapol(buf);
    wpabuf_free(eap_buf);
    return ret;
}

static int wps_send_frag_ack_(u8 id)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *eap_buf = 
# 747 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                            ((void *)0)
# 747 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                ;
    u8 bssid[6];
    u8 *buf;
    int len;
    int ret = 0;
    enum wsc_op_code opcode = WSC_FRAG_ACK;

    do {} while(0);

    if (!sm) {
        return -1;
    }

    ret = bl_wifi_get_assoc_bssid_internal(sm->vif_idx, bssid);
    if (ret != 0) {
        do {} while(0);
        return ret;
    }

    eap_buf = eap_msg_alloc(EAP_VENDOR_WFA, 0x00000001, 2, EAP_CODE_RESPONSE, id);
    if (!eap_buf) {
        ret = -1;
        goto _err;
    }

    wpabuf_put_u8(eap_buf, opcode);
    wpabuf_put_u8(eap_buf, 0x00);

    buf = wpa_sm_alloc_eapol(1, IEEE802_1X_TYPE_EAP_PACKET, wpabuf_head_u8(eap_buf), wpabuf_len(eap_buf), (size_t *)&len, 
# 775 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                                                                                            ((void *)0)
# 775 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                                                                                                );
    if (!buf) {
        ret = -1;
        goto _err;
    }

    ret = wpa_sm_ether_send(sm->ownaddr, bssid, 0x888E, buf, len);
    wpa_sm_free_eapol(buf);
    if (ret) {
        ret = -1;
        goto _err;
    }

_err:
    wpabuf_free(eap_buf);
    return ret;
}

static int wps_enrollee_process_msg_frag_(struct wpabuf **buf, int tot_len, u8 *frag_data, int frag_len, u8 flag)
{
    struct wps_sm *sm = gWpsSm;
    u8 identifier;

    if (!sm) {
        return -1;
    }

    identifier = sm->current_identifier;

    if (buf == 
# 804 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
              ((void *)0) 
# 804 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                   || frag_data == 
# 804 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                   ((void *)0)
# 804 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                       ) {
        do {} while(0);
        return -1;
    }

    if (*buf == 
# 809 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
               ((void *)0)
# 809 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                   ) {
        if (0 == (flag & WPS_MSG_FLAG_LEN) || tot_len < frag_len) {
            do {} while(0);
            return -1;
        }

        *buf = wpabuf_alloc(tot_len);
        if (*buf == 
# 816 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                   ((void *)0)
# 816 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                       ) {
            return -1;
        }

        wpabuf_put_data(*buf, frag_data, frag_len);
        return wps_send_frag_ack_(identifier);
    }

    if (flag & WPS_MSG_FLAG_LEN) {
        do {} while(0);
        return -1;
    }

    wpabuf_put_data(*buf, frag_data, frag_len);

    if (flag & WPS_MSG_FLAG_MORE) {
        return wps_send_frag_ack_(identifier);
    }

    return 0;
}

static int wps_process_wps_mX_req_(u8 *ubuf, int len, enum wps_process_res *res)
{
    struct wps_sm *sm = gWpsSm;
    static struct wpabuf *wps_buf = 
# 841 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                   ((void *)0)
# 841 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                       ;
    struct eap_expand *expd;
    int tlen = 0;
    u8 *tbuf;
    u8 flag;
    int frag_len;
    u16 be_tot_len = 0;

    if (!sm) {
        return -1;
    }

    expd = (struct eap_expand *) ubuf;
    do {} while(0);

    flag = *(u8 *)(ubuf + sizeof(struct eap_expand));
    if (flag & WPS_MSG_FLAG_LEN) {
        tbuf = ubuf + sizeof(struct eap_expand) + 1 + 2;
        frag_len = len - (sizeof(struct eap_expand) + 1 + 2);
        be_tot_len = *(u16 *)(ubuf + sizeof(struct eap_expand) + 1);
        tlen = ((be_tot_len & 0xff) << 8) | ((be_tot_len >> 8) & 0xff);
    } else {
        tbuf = ubuf + sizeof(struct eap_expand) + 1;
        frag_len = len - (sizeof(struct eap_expand) + 1);
        tlen = frag_len;
    }

    if ((flag & WPS_MSG_FLAG_MORE) || wps_buf != 
# 868 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                ((void *)0)
# 868 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                    ) {
        do {} while(0);
        if (0 != wps_enrollee_process_msg_frag_(&wps_buf, tlen, tbuf, frag_len, flag)) {
            if (wps_buf) {
                wpabuf_free(wps_buf);
                wps_buf = 
# 873 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                         ((void *)0)
# 873 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                             ;
            }
            return -1;
        }
        if (flag & WPS_MSG_FLAG_MORE) {
            if (res) {
                *res = WPS_FRAGMENT;
            }
            return 0;
        }
    } else {
        if (wps_buf) {
            do {} while(0);
            wpabuf_free(wps_buf);
            wps_buf = 
# 887 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                     ((void *)0)
# 887 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                         ;
        }
        wps_buf = wpabuf_alloc_copy(tbuf, tlen);
    }

    if (!wps_buf) {
        return -1;
    }



    if (res) {
        *res = wps_enrollee_process_msg(sm->wps, expd->opcode, wps_buf);
    } else {
        wps_enrollee_process_msg(sm->wps, expd->opcode, wps_buf);
    }

    if (wps_buf) {
        wpabuf_free(wps_buf);
        wps_buf = 
# 906 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                 ((void *)0)
# 906 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                     ;
    }
    return 0;
}

static int wps_send_wps_mX_rsp_(u8 id)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *eap_buf = 
# 914 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                            ((void *)0)
# 914 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                ;
    struct wpabuf *wps_buf = 
# 915 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                            ((void *)0)
# 915 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                ;
    u8 bssid[6];
    u8 *buf;
    int len;
    int ret = 0;
    enum wsc_op_code opcode;

    do {} while(0);

    if (!sm) {
        return -1;
    }

    ret = bl_wifi_get_assoc_bssid_internal(sm->vif_idx, bssid);
    if (ret != 0) {
        do {} while(0);
        return ret;
    }

    wps_buf = (struct wpabuf *)wps_enrollee_get_msg(sm->wps, &opcode);
    if (!wps_buf) {
        ret = -1;
        goto _err;
    }

    eap_buf = eap_msg_alloc(EAP_VENDOR_WFA, 0x00000001, wpabuf_len(wps_buf) + 2, EAP_CODE_RESPONSE, id);
    if (!eap_buf) {
        ret = -1;
        goto _err;
    }

    wpabuf_put_u8(eap_buf, opcode);
    wpabuf_put_u8(eap_buf, 0x00);
    wpabuf_put_data(eap_buf, wpabuf_head_u8(wps_buf), wpabuf_len(wps_buf));


    wpabuf_free(wps_buf);

    buf = wpa_sm_alloc_eapol(1, IEEE802_1X_TYPE_EAP_PACKET, wpabuf_head_u8(eap_buf), wpabuf_len(eap_buf), (size_t *)&len, 
# 953 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                                                                                            ((void *)0)
# 953 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                                                                                                );
    if (!buf) {
        ret = -1;
        goto _err;
    }

    ret = wpa_sm_ether_send(sm->ownaddr, bssid, 0x888E, buf, len);
    wpa_sm_free_eapol(buf);
    if (ret) {
        ret = -1;
        goto _err;
    }

_err:
    wpabuf_free(eap_buf);
    return ret;
}

static int wps_start_msg_timer_(void)
{
# 997 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
    return 0;
}

static int wps_sm_rx_eapol_(u8 *src_addr, u8 *buf, u32 len)
{
    struct wps_sm *sm = gWpsSm;
    u32 plen, data_len, eap_len;
    struct ieee802_1x_hdr *hdr;
    struct eap_hdr *ehdr;
    u8 *tmp;
    u8 eap_code;
    u8 eap_type;
    int ret = -1;
    enum wps_process_res res = WPS_DONE;

    if (!gWpsSm) {
        return -1;
    }

    if (len < sizeof(*hdr) + sizeof(*ehdr)) {






        return 0;
    }

    tmp = buf;

    hdr = (struct ieee802_1x_hdr *) tmp;
    ehdr = (struct eap_hdr *) (hdr + 1);
    plen = __builtin_bswap16(( u16) (be16) (hdr->length));
    data_len = plen + sizeof(*hdr);
    eap_len = __builtin_bswap16(( u16) (be16) (ehdr->length));






    if (hdr->version < 2) {

    }
    if (hdr->type != IEEE802_1X_TYPE_EAP_PACKET) {




        ret = 0;
        goto out;
    }
    if (plen > len - sizeof(*hdr) || plen < sizeof(*ehdr)) {





        ret = 0;
        goto out;
    }

    do {} while(0);

    if (data_len < len) {




    }

    if (eap_len != plen) {





        ret = 0;
        goto out;
    }

    eap_code = ehdr->code;
    switch (eap_code) {
    case EAP_CODE_SUCCESS:
        do {} while(0);
        ret = 0;
        break;
    case EAP_CODE_FAILURE:
        do {} while(0);
        ret = wps_finish();
        break;
    case EAP_CODE_RESPONSE:
        do {} while(0);
        ret = 0;
        break;
    case EAP_CODE_REQUEST: {
        eap_type = ((u8 *)ehdr)[sizeof(*ehdr)];
        switch (eap_type) {
        case EAP_TYPE_IDENTITY:
            do {} while(0);
            sm->current_identifier = ehdr->identifier;
            bl_wifi_timer_disarm(&sm->wps_eapol_start_timer);
            do {} while(0);
            ret = wps_send_eap_identity_rsp_(ehdr->identifier);
            bl_wifi_timer_arm(&sm->wps_eapol_start_timer, 3000, 0);
            break;
        case EAP_TYPE_EXPANDED:
            do {} while(0);
            if (ehdr->identifier == sm->current_identifier) {
                ret = 0;
                do {} while(0);
                goto out;
            }
            sm->current_identifier = ehdr->identifier;

            tmp = (u8 *)(ehdr + 1) + 1;
            ret = wps_process_wps_mX_req_(tmp, plen - sizeof(*ehdr) - 1, &res);
            if (ret == 0 && res != WPS_FAILURE && res != WPS_IGNORE && res != WPS_FRAGMENT) {
                ret = wps_send_wps_mX_rsp_(ehdr->identifier);
                if (ret == 0) {
                    do {} while(0);
                    wps_start_msg_timer_();
                }
            } else if (ret == 0 && res == WPS_FRAGMENT) {
                do {} while(0);
                ret = 0;
            } else if (res == WPS_IGNORE) {
                do {} while(0);
                ret = 0;
            } else {
                ret = -1;
            }
            break;
        default:
            break;
        }
        break;
    }
    default:
        break;
    }
out:
    if (ret != 0 || res == WPS_FAILURE) {
# 1150 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
        do {} while(0);
        wps_set_status(WPS_STATUS_DISABLE);
        wps_evq_msg_t msg = { .event = WPS_EVQ_FAILURE };
        xQueueGenericSend( ( sm->event_queue ), ( &msg ), ( ( TickType_t ) 0xffffffffUL ), ( ( BaseType_t ) 0 ) );
        return ret;
    }

    return ret;
}

static int wps_tx_start_(void)
{
    struct wps_sm *sm = gWpsSm;
    u8 bssid[6];
    u8 *buf;
    int len;
    int ret = 0;

    if (!sm) {
        return -1;
    }

    ret = bl_wifi_get_assoc_bssid_internal(sm->vif_idx, bssid);
    if (ret != 0) {
        do {} while(0);
        return ret;
    }

    do {} while(0);
    buf = wpa_sm_alloc_eapol(1, IEEE802_1X_TYPE_EAPOL_START, (u8 *)"", 0, (size_t *)&len, 
# 1179 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                                                            ((void *)0)
# 1179 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                                                                );
    if (!buf) {
        return -1;
    }

    wpa_sm_ether_send(sm->ownaddr, bssid, 0x888E, buf, len);
    wpa_sm_free_eapol(buf);

    bl_wifi_timer_arm(&sm->wps_eapol_start_timer, 3000, 0);

    return 0;
}

static int wps_config_(uint8_t vif_idx, uint8_t sta_idx)
{
    struct wps_sm *sm = gWpsSm;
    if (!sm) {
        return -1;
    }

    sm->vif_idx = vif_idx;
    sm->sta_idx = sta_idx;

    return 0;
}

static int wps_start_pending_(void)
{
    struct wps_sm *sm = gWpsSm;
    if (!sm) {
        return -1;
    }

    return wps_tx_start_();
}

static const struct wps_funcs wps_cb = {
    .wps_parse_scan_result = wps_parse_scan_result,
    .wps_sm_rx_eapol = wps_sm_rx_eapol_,
    .wps_config = wps_config_,
    .wps_start_pending = wps_start_pending_,
};

static void wps_deinit_(void)
{
    struct wps_data *data = gWpsSm->wps;

    if (data->wps_pin_revealed) {
        do {} while(0)
                                        ;
    } else if (data->registrar)
        do {} while(0)
                                        ;
    wpabuf_free(data->dh_privkey);

    data->dh_privkey = 
# 1234 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                      ((void *)0)
# 1234 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                          ;

    wpabuf_free(data->dh_pubkey_e);
    wpabuf_free(data->dh_pubkey_r);
    wpabuf_free(data->last_msg);
    wpa_supplicant_free((data->dev_password));
    dh5_free(data->dh_ctx);
    wps_dev_deinit_(&data->peer_dev);
    wpa_supplicant_free((data));
}

static int wifi_station_wps_init_(void)
{
    struct wps_sm *sm = gWpsSm;

    do {} while(0);

    bl_wifi_mac_addr_get(sm->ownaddr);

    sm->discover_ssid_cnt = 0;
    sm->ignore_sel_reg = 
# 1254 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                        0
# 1254 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                             ;
    sm->discard_ap_cnt = 0;
    memset(&sm->dis_ap_list, 0, 10 * sizeof(struct discard_ap_list_t));
    sm->identity_len = 29;
    memcpy(sm->identity, "WFA-SimpleConfig-Enrollee-1-0", sm->identity_len);

    sm->is_wps_scan = 
# 1260 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                     0
# 1260 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                          ;

    sm->wps_ctx = (struct wps_context *)wpa_supplicant_zalloc(1, (sizeof(struct wps_context)));
    if (!sm->wps_ctx) {
        goto _err;
    }

    if (wps_dev_init_() != 0) {
        goto _err;
    }

    if ((sm->wps = wps_init_()) == 
# 1271 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                  ((void *)0)
# 1271 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                      ) {
        goto _err;
    }

    sm->scan_cnt = 0;

    bl_wifi_set_wps_cb_internal(&wps_cb);

    return 0;

_err:
    if (sm->dev) {
        wps_dev_deinit_(sm->dev);
        sm->dev = 
# 1284 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                 ((void *)0)
# 1284 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                     ;
    }
    if (sm->wps) {
        wps_deinit_();
        sm->wps = 
# 1288 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                 ((void *)0)
# 1288 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                     ;
    }
    return -1;
}

static int wifi_station_wps_deinit_(void)
{
    struct wps_sm *sm = gWpsSm;

    if (gWpsSm == 
# 1297 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                 ((void *)0)
# 1297 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                     ) {
        return -1;
    }

    aos_unregister_event_filter(0x0002, wifi_event_cb_, sm);

    if (sm->event_queue) {
        vQueueDelete(sm->event_queue);
    }

    if (sm->dev) {
        wps_dev_deinit_(sm->dev);
        sm->dev = 
# 1309 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                 ((void *)0)
# 1309 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                     ;
    }
    if (sm->wps_ctx) {
        wpa_supplicant_free((sm->wps_ctx));
        sm->wps_ctx = 
# 1313 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                     ((void *)0)
# 1313 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                         ;
    }
    if (sm->wps) {
        wps_deinit_();
        sm->wps = 
# 1317 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                 ((void *)0)
# 1317 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                     ;
    }
    if (sm) {
        wpa_supplicant_free((gWpsSm));
        gWpsSm = 
# 1321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                ((void *)0)
# 1321 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                    ;
    }

    return 0;
}

bl_wps_err_t bl_wifi_wps_start(const struct bl_wps_config *config)
{
    struct wps_sm *sm = gWpsSm;
    bl_wps_err_t ret = BL_WPS_ERR_OK;
    int wifi_state = 0;

    if (sm) {
        do {} while(0);
        ret = BL_WPS_ERR_DUPLICATE_INSTANCE;
        goto ret;
    }

    wifi_mgmr_state_get(&wifi_state);
    if (!(wifi_state == WIFI_STATE_IDLE || wifi_state == WIFI_STATE_WITH_AP_IDLE)) {
        do {} while(0);
        ret = BL_WPS_ERR_WIFI_STATE;
        goto ret;
    }
    if ((sm = wpa_supplicant_zalloc(1, (sizeof(struct wps_sm)))) == 
# 1345 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                  ((void *)0)
# 1345 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                      ) {
        ret = BL_WPS_ERR_MEMORY;
        goto ret;
    }

    if (!(sm->event_queue = xQueueGenericCreate( ( 2 ), ( sizeof(wps_evq_msg_t) ), ( ( ( uint8_t ) 0U ) ) ))) {
        ret = BL_WPS_ERR_MEMORY;
        goto ret;
    }
    sm->cfg.type = config->type;
    sm->cfg.event_cb = config->event_cb;
    sm->cfg.event_cb_arg = config->event_cb_arg;

    gWpsSm = sm;

    wps_set_factory_info_(config);
    if (wifi_station_wps_init_()) {
        ret = BL_WPS_ERR_MEMORY;
        goto err;
    }
    if (( ( ( BaseType_t ) 1 ) ) != xTaskCreate(wps_task_, "wps", 2048, 
# 1365 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
                                                                     ((void *)0)
# 1365 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                                                                         , 10, &sm->wps_task_hdl)) {
        ret = BL_WPS_ERR_MEMORY;
        goto err;
    }

    goto ret;

err:
    wps_set_status(WPS_STATUS_DISABLE);
    vPortFree(sm);
    gWpsSm = 
# 1375 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c" 3 4
            ((void *)0)
# 1375 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/security/wpa_supplicant/src/bl_supplicant/bl_wps.c"
                ;
ret:
    return ret;
}
