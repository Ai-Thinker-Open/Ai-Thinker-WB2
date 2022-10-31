# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/hosal//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c"
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
# 49 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
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
# 50 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2






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
# 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c" 2
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
# 3 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.h" 1


int hal_wifi_start_firmware_task(void);
# 4 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c" 2
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
# 5 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c" 2






# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/bl60x_fw_api.h" 1





# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 1
# 24 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 1
# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 26 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4

# 40 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 99 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 27 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h" 1
# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h"

# 35 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h"
typedef void* BL_Timer_t;
typedef void* BL_TaskHandle_t;
typedef void* BL_Sem_t;
typedef void* BL_Mutex_t;
typedef void* BL_MessageQueue_t;
typedef void* BL_EventGroup_t;
typedef void* BL_TimeOut_t;
typedef uint32_t BL_TickType_t;
# 28 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 48 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
struct bl_ops_funcs
{
    int _version;
    void (*_printf)(const char *fmt, ...);
    void (*_puts)(const char *c);
    void (*_assert)(const char *file, int line, const char *func, const char *expr);
    int (*_init)(void);
    uint32_t (*_enter_critical)(void);
    void (*_exit_critical)(uint32_t level);
    int (*_msleep)(long ms);
    int (*_sleep)(unsigned int seconds);
    BL_EventGroup_t (*_event_group_create)(void);
    void (*_event_group_delete)(BL_EventGroup_t event);
    uint32_t (*_event_group_send)(BL_EventGroup_t event, uint32_t bits);
    uint32_t (*_event_group_wait)(BL_EventGroup_t event,
                                  uint32_t bits_to_wait_for,
                                  int clear_on_exit,
                                  int wait_for_all_bits,
                                  uint32_t block_time_tick);
    int (*_event_register)(int type, void *cb, void *arg);
    int (*_event_notify)(int evt, int val);
    int (*_task_create)(const char *name,
                        void *entry,
                        uint32_t stack_depth,
                        void *param,
                        uint32_t prio,
                        BL_TaskHandle_t task_handle);
    void (*_task_delete)(BL_TaskHandle_t task_handle);
    BL_TaskHandle_t (*_task_get_current_task)(void);
    BL_TaskHandle_t (*_task_notify_create)(void);
    void (*_task_notify)(BL_TaskHandle_t task_handle);
    void (*_task_wait)(BL_TaskHandle_t task_handle, uint32_t tick);
    void (*_lock_gaint)(void);
    void (*_unlock_gaint)(void);
    void (*_irq_attach)(int32_t n, void *f, void *arg);
    void (*_irq_enable)(int32_t n);
    void (*_irq_disable)(int32_t n);
    void *(*_workqueue_create)(void);
    int (*_workqueue_submit_hp)(void *work, void *woker, void *argv, long tick);
    int (*_workqueue_submit_lp)(void *work, void *woker, void *argv, long tick);
    BL_Timer_t (*_timer_create)(void *func, void *argv);
    int (*_timer_delete)(BL_Timer_t timerid, uint32_t tick);
    int (*_timer_start_once)(BL_Timer_t timerid, long t_sec, long t_nsec);
    int (*_timer_start_periodic)(BL_Timer_t timerid, long t_sec, long t_nsec);
    BL_Sem_t (*_sem_create)(uint32_t init);
    void (*_sem_delete)(BL_Sem_t semphr);
    int32_t (*_sem_take)(BL_Sem_t semphr, uint32_t tick);
    int32_t (*_sem_give)(BL_Sem_t semphr);
    BL_Mutex_t (*_mutex_create)(void);
    void (*_mutex_delete)(BL_Mutex_t mutex);
    int32_t (*_mutex_lock)(BL_Mutex_t mutex);
    int32_t (*_mutex_unlock)(BL_Mutex_t mutex);
    BL_MessageQueue_t (*_queue_create)(uint32_t queue_len, uint32_t item_size);
    void (*_queue_delete)(BL_MessageQueue_t queue);
    int (*_queue_send_wait)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t ticks, int prio);
    int (*_queue_send)(BL_MessageQueue_t queue, void *item, uint32_t len);
    int (*_queue_recv)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t tick);
    void *(*_malloc)(unsigned int size);
    void (*_free)(void *p);
    void *(*_zalloc)(unsigned int size);
    uint64_t (*_get_time_ms)(void);
    uint32_t (*_get_tick)(void);
    void (*_log_write)(uint32_t level, const char *tag, const char *file, int line, const char *format, ...);
    int (*_task_notify_isr)(BL_TaskHandle_t task_handle);
    void (*_yield_from_isr)(int xYield);
    unsigned int (*_ms_to_tick)(unsigned int ms);
    BL_TimeOut_t (*_set_timeout)(void);
    int (*_check_timeout)(BL_TimeOut_t xTimeOut, BL_TickType_t *xTicksToWait);
};

typedef struct bl_ops_funcs bl_ops_funcs_t;

extern bl_ops_funcs_t g_bl_ops_funcs;
# 25 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h" 1
# 34 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h"
typedef enum _bl_os_log_leve
{
    LOG_LEVEL_ALL = 0,
    LOG_LEVEL_DEBUG,
    LOG_LEVEL_INFO,
    LOG_LEVEL_WARN,
    LOG_LEVEL_ERROR,
    LOG_LEVEL_ASSERT,
    LOG_LEVEL_NEVER,
} bl_os_log_level_t;
# 26 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_system.h" 1
# 27 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 7 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/bl60x_fw_api.h" 2


typedef enum wifi_fw_task_id
{
    TASK_NONE = (uint8_t) -1,


    TASK_MM = 0,

    TASK_SCAN,

    TASK_SCANU,

    TASK_ME,

    TASK_SM,

    TASK_APM,

    TASK_BAM,

    TASK_RXU,

    TASK_CFG,


    TASK_LAST_EMB = TASK_CFG,


    TASK_API,
    TASK_MAX,
} ke_task_id_t;


typedef enum hw_state_tag
{

    HW_IDLE = 0,

    HW_RESERVED,

    HW_DOZE,

    HW_ACTIVE
} hw_state_tag_t;


typedef enum mm_state_tag
{

    MM_IDLE,

    MM_ACTIVE,

    MM_GOING_TO_IDLE,

    MM_HOST_BYPASSED,

    MM_STATE_MAX
} mm_state_tag_t;
# 81 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/bl60x_fw_api.h"
typedef enum wifi_fw_event_id
{

    MM_RESET_REQ = (((TASK_MM) << 10)),

    MM_RESET_CFM,

    MM_START_REQ,

    MM_START_CFM,

    MM_VERSION_REQ,

    MM_VERSION_CFM,

    MM_ADD_IF_REQ,

    MM_ADD_IF_CFM,

    MM_REMOVE_IF_REQ,

    MM_REMOVE_IF_CFM,

    MM_STA_ADD_REQ,

    MM_STA_ADD_CFM,

    MM_STA_DEL_REQ,

    MM_STA_DEL_CFM,

    MM_SET_CHANNEL_REQ,

    MM_SET_CHANNEL_CFM,

    MM_SET_BEACON_INT_REQ,

    MM_SET_BEACON_INT_CFM,

    MM_SET_BASIC_RATES_REQ,

    MM_SET_BASIC_RATES_CFM,

    MM_SET_BSSID_REQ,

    MM_SET_BSSID_CFM,

    MM_SET_EDCA_REQ,

    MM_SET_EDCA_CFM,

    MM_SET_VIF_STATE_REQ,

    MM_SET_VIF_STATE_CFM,

    MM_SET_IDLE_REQ,

    MM_SET_IDLE_CFM,


    MM_PRIMARY_TBTT_IND,


    MM_SECONDARY_TBTT_IND,


    MM_DENOISE_REQ,

    MM_SET_PS_MODE_REQ,

    MM_SET_PS_MODE_CFM,

    MM_CHAN_CTXT_ADD_REQ,

    MM_CHAN_CTXT_ADD_CFM,

    MM_CHAN_CTXT_DEL_REQ,

    MM_CHAN_CTXT_DEL_CFM,

    MM_CHAN_CTXT_LINK_REQ,

    MM_CHAN_CTXT_LINK_CFM,

    MM_CHAN_CTXT_UNLINK_REQ,

    MM_CHAN_CTXT_UNLINK_CFM,

    MM_CHAN_CTXT_UPDATE_REQ,

    MM_CHAN_CTXT_UPDATE_CFM,

    MM_CHAN_CTXT_SCHED_REQ,

    MM_CHAN_CTXT_SCHED_CFM,

    MM_BCN_CHANGE_REQ,

    MM_BCN_CHANGE_CFM,

    MM_TIM_UPDATE_REQ,

    MM_TIM_UPDATE_CFM,

    MM_CONNECTION_LOSS_IND,

    MM_CHANNEL_SWITCH_IND,

    MM_CHANNEL_PRE_SWITCH_IND,

    MM_REMAIN_ON_CHANNEL_REQ,

    MM_REMAIN_ON_CHANNEL_CFM,

    MM_REMAIN_ON_CHANNEL_EXP_IND,

    MM_PS_CHANGE_IND,

    MM_TRAFFIC_REQ_IND,

    MM_SET_PS_OPTIONS_REQ,

    MM_SET_PS_OPTIONS_CFM,

    MM_P2P_VIF_PS_CHANGE_IND,

    MM_CHANNEL_SURVEY_IND,

    MM_BFMER_ENABLE_REQ,

    MM_SET_P2P_NOA_REQ,

    MM_SET_P2P_OPPPS_REQ,

    MM_SET_P2P_NOA_CFM,

    MM_SET_P2P_OPPPS_CFM,

    MM_P2P_NOA_UPD_IND,

    MM_RSSI_STATUS_IND,

    MM_MU_GROUP_UPDATE_REQ,

    MM_MU_GROUP_UPDATE_CFM,

    MM_MONITOR_REQ,
    MM_MONITOR_CFM,

    MM_MONITOR_CHANNEL_REQ,
    MM_MONITOR_CHANNEL_CFM,





    MM_FORCE_IDLE_REQ,

    MM_SCAN_CHANNEL_START_IND,

    MM_SCAN_CHANNEL_END_IND,


    MM_MAX,


    CFG_START_REQ = (((TASK_CFG) << 10)),
    CFG_START_CFM,
    CFG_MAX,



    SCAN_START_REQ = (((TASK_SCAN) << 10)),

    SCAN_START_CFM,

    SCAN_DONE_IND,

    SCAN_CANCEL_REQ,

    SCAN_CANCEL_CFM,


    SCAN_ABORT_REQ,
    SCAN_ABORT_CFM,




    SCAN_TIMER,


    SCAN_MAX,


    APM_START_REQ = (((TASK_APM) << 10)),

    APM_START_CFM,

    APM_STOP_REQ,

    APM_STOP_CFM,

    APM_STA_ADD_IND,

    APM_STA_DEL_IND,

    APM_STA_CONNECT_TIMEOUT_IND,

    APM_STA_DEL_REQ,

    APM_STA_DEL_CFM,

    APM_CONF_MAX_STA_REQ,

    APM_CONF_MAX_STA_CFM,

    APM_MAX,


    BAM_ADD_BA_RSP_TIMEOUT_IND = (((TASK_BAM) << 10)),

    BAM_INACTIVITY_TIMEOUT_IND,


    ME_CONFIG_REQ = (((TASK_ME) << 10)),

    ME_CONFIG_CFM,

    ME_CHAN_CONFIG_REQ,

    ME_CHAN_CONFIG_CFM,

    ME_TKIP_MIC_FAILURE_IND,

    ME_STA_ADD_REQ,

    ME_STA_ADD_CFM,

    ME_STA_DEL_REQ,

    ME_STA_DEL_CFM,

    ME_TX_CREDITS_UPDATE_IND,

    ME_TRAFFIC_IND_REQ,

    ME_TRAFFIC_IND_CFM,

    ME_RC_SET_RATE_REQ,





    ME_SET_ACTIVE_REQ,

    ME_SET_ACTIVE_CFM,

    ME_SET_PS_DISABLE_REQ,

    ME_SET_PS_DISABLE_CFM,

    ME_MAX,


    RXU_MGT_IND = (((TASK_RXU) << 10)),

    RXU_NULL_DATA,


    SCANU_START_REQ = (((TASK_SCANU) << 10)),

    SCANU_START_CFM,

    SCANU_JOIN_REQ,

    SCANU_JOIN_CFM,

    SCANU_RESULT_IND,

    SCANU_RAW_SEND_REQ,

    SCANU_RAW_SEND_CFM,


    SCANU_MAX,


    SM_CONNECT_REQ = (((TASK_SM) << 10)),

    SM_CONNECT_CFM,

    SM_CONNECT_IND,

    SM_DISCONNECT_REQ,

    SM_DISCONNECT_CFM,

    SM_DISCONNECT_IND,

    SM_RSP_TIMEOUT_IND,

    SM_CONNECT_ABORT_REQ,

    SM_CONNECT_ABORT_CFM,

    SM_MAX,
} ke_msg_id_t;
# 439 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/network/wifi/include/bl60x_fw_api.h"
void bl60x_fw_xtal_capcode_set(uint8_t cap_in, uint8_t cap_out, uint8_t enable, uint8_t cap_in_max, uint8_t cap_out_max);
void bl60x_fw_xtal_capcode_update(uint8_t cap_in, uint8_t cap_out);
void bl60x_fw_xtal_capcode_restore(void);
void bl60x_fw_xtal_capcode_autofit(void);
void bl60x_fw_xtal_capcode_get(uint8_t *cap_in, uint8_t *cap_out);

int bl60x_fw_password_hash(char *password, char *ssid, int ssidlength, char *output);
void bl60x_fw_rf_table_set(uint32_t* channel_div_table_in, uint16_t* channel_cnt_table_in,
                                                uint16_t lo_fcal_div);

void bl60x_fw_dump_data(void);
void bl60x_fw_dump_statistic(int forced);

int bl60x_check_mac_status(int *is_ok);

enum {

    API_AC_BK = 0,

    API_AC_BE,

    API_AC_VI,

    API_AC_VO,

    API_AC_MAX
};

int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop);


void wifi_main(void *param);

void bl_tpc_update_power_table(int8_t power_table_config[38]);
void bl_tpc_update_power_table_rate(int8_t power_table[24]);
void bl_tpc_update_power_table_channel_offset(int8_t power_table[14]);
void bl_tpc_update_power_rate_11b(int8_t power_rate_table[4]);
void bl_tpc_update_power_rate_11g(int8_t power_rate_table[8]);
void bl_tpc_update_power_rate_11n(int8_t power_rate_table[8]);
void bl_tpc_power_table_get(int8_t power_table_config[38]);

void phy_cli_register(void);



enum task_mm_cfg {
    TASK_MM_CFG_KEEP_ALIVE_STATUS_ENABLED,
    TASK_MM_CFG_KEEP_ALIVE_TIME_LAST_RECEIVED,
    TASK_MM_CFG_KEEP_ALIVE_PACKET_COUNTER,
};

enum task_sm_cfg {
    TASK_SM_CFG_AUTH_ASSOC_RETRY_LIMIT,
};

enum task_scan_cfg {
    TASK_SCAN_CFG_DURATION_SCAN_PASSIVE,
    TASK_SCAN_CFG_DURATION_SCAN_ACTIVE,
    TASK_SCAN_CFG_DURATION_SCAN_JOIN_ACTIVE,
};
# 12 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c" 2
int hal_wifi_start_firmware_task(void)
{
    static StackType_t wifi_fw_stack[(1536)];
    static StaticTask_t wifi_fw_task;

    bl_pm_init();
    xTaskCreateStatic(wifi_main, (char*)"fw", (1536), 
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c" 3 4
                                                              ((void *)0)
# 18 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/platform/hosal/bl602_hal/hal_wifi.c"
                                                                  , (30), wifi_fw_stack, &wifi_fw_task);

    return 0;
}
