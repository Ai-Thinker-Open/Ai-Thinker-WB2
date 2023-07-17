/**
 * @file aiot_coap_api.h
 * @brief COAP模块头文件, 提供设备通过COAP连云的能力
 *
 * @copyright Copyright (C) 2015-2018 Alibaba Group Holding Limited
 *
 * @details
 *
 * COAP模块用于建立与阿里云物联网平台的连接, API使用流程如下:
 *
 * 1. 调用 @ref aiot_coap_init 初始化COAP会话, 获取会话句柄
 *
 * 2. 调用 @ref aiot_coap_setopt 配置COAP会话的参数, 常用配置项见 @ref aiot_coap_setopt 的说明
 *
 * 3. 调用 @ref aiot_coap_auth 使得设备获取连云需要的auth_token. 这一步执行成功才能进行消息的收发.
 *
 * 4. 调用 @ref aiot_coap_send 往云端发布消息
 *
 * 5. 启动一个线程, 线程中持续调用 @ref aiot_coap_recv 接收网络上的coap报文
 *
 */

#ifndef __AIOT_COAP_API_H__
#define __AIOT_COAP_API_H__

#if defined(__cplusplus)
extern "C" {
#endif

#include <stdint.h>

/**
 * @brief -0x0800~-0x08FF表达SDK在COAP模块内的状态码
 */
#define STATE_COAP_BASE                                             (-0x0800)

/**
 * @brief COAP收发消息时, SDK反馈COAP消息内容的状态码
 *
 */
#define STATE_COAP_LOG_HEXDUMP                                      (-0x0801)

/**
 * @brief COAP收发消息时, 消息header中type字段非法
 *
 */
#define STATE_COAP_HEADER_TYPE_ERROR                                (-0x0802)

/**
 * @brief COAP收发消息时, 消息header中code字段中的前三个bit所对应的数字是0/2/4/5之外的数字
 *
 */
#define STATE_COAP_HEADER_CODE_ERROR                                (-0x0802)

/**
 * @brief 接收COAP消息时, 收到的报文长度还不够header的长度(4个字节)
 *
 */
#define STATE_COAP_MSG_LEN_ERROR                                    (-0x0803)

/**
 * @brief 接收COAP消息时, 收到的token的长度小于header中的tkl字段
 *
 */
#define STATE_COAP_MSG_TOKEN_LEN_TOO_SHORT                          (-0x0804)

/**
 * @brief 接收COAP消息时, 收到的option的数据超过COAP_DEFAULT_OPTION_CNT_MAX(15)限制
 *
 */
#define STATE_COAP_RX_OPTION_CNT_EXCEED_LIMIT                       (-0x0805)

/**
 * @brief 收到的报文中的option的opt_delta的第一个字段为13, 但报文的长度不足, 不足以完整地解出option字段
 *
 */
#define STATE_COAP_OPT_DELTA_THIRTEEN_OPT_LEN_ERROR                 (-0x0806)

/**
 * @brief option结束的地方, 没有0XFF这个标记位
 *
 */
#define STATE_COAP_OPTION_END_NOT_FOUND                             (-0x0807)

/**
 * @brief 发送报文的时候, uri按照"/"拆分成分段后, 分段总数超出COAP_DEFAULT_OPTION_CNT_MAX-2,即13个的限制
 *
 */
#define STATE_COAP_TX_URI_OPTION_CNT_EXCEED_LIMIT                   (-0x0808)

/**
 * @brief 创建待发送的COAP报文的时候, 为COAP报文分配内存失败
 *
 */
#define STATE_COAP_MALLOC_MSG_FAILED                                (-0x0809)

/**
 * @brief 创建待发送的COAP报文时, 为COAP报文中的payload字段分配内存失败
 *
 */
#define STATE_COAP_MALLOC_MSG_BUFFER_FAILED                         (-0x080A)

/**
 * @brief 创建待发送的COAP报文时, 出参的指针request为空
 *
 */
#define STATE_COAP_REQUEST_IS_NULL                                  (-0x080B)

/**
 * @brief 创建coap报文时, 当opt_delta第一个字段为14时, option内容太多,超出了总共发送buffer的大小
 *
 */
#define STATE_COAP_OPT_DELTA_FOURTEEN_OPT_LEN_ERROR                 (-0x080C)

/**
 * @brief 创建COAP空报文时, coap句柄为空, 出参的指针为空, 或者type字段为NON类型
 *
 */
#define STATE_COAP_EMPTY_MSG_PARAM_ERROR                            (-0x080D)

/**
 * @brief 创建COAP空报文时, 分配内存错误
 *
 */
#define STATE_COAP_EMPTY_MSG_MALLOC_FAILED                          (-0x080E)

/**
 * @brief 创建COAP消息时, option并没有按照顺序排列
 *
 */
#define STATE_COAP_OPTION_NOT_IN_ORDER                              (-0x080F)

/**
 * @brief 解析收到的COAP消息时, 版本号不对, 或则token长度超过8
 *
 */
#define STATE_COAP_HEADER_FORMAT_ERROR                              (-0x0810)

/**
 * @brief 创建coap报文时, option太多, 以至于塞满了发送的buffer
 *
 */
#define STATE_COAP_OPTION_BUFFER_TOO_SHORT                          (-0x081A)

/**
 * @brief 发送coap报文时, 报文为空
 *
 */
#define STATE_COAP_SEND_MESSAGE_IS_NULL                             (-0x081B)

/**
 * @brief 创建coap报文时, 为头部预留的空间小于4个字节, 无法存下头部
 *
 */
#define STATE_COAP_HEADER_BUFFER_IS_TOO_SHORT                       (-0x081C)

/**
 * @brief 创建coap报文时, 当opt_len第一个字段为13时, option内容太多,超出了总共发送buffer的大小
 *
 */
#define STATE_COAP_OPT_LEN_THIRTEEN_OPT_LEN_ERROR                   (-0x081D)

/**
 * @brief auth过程中, 创建psk的id失败
 *
 */
#define STATE_COAP_CREATE_PSK_FAILED                                (-0x081E)

/**
 * @brief coap实例设置网络参数失败
 *
 * @details 这里的参数包括host/port/cred/协议类型这4个字段
 *
 */
#define STATE_COAP_SET_NWK_PARMS_FAILED                             (-0x081F)

/**
 * @brief 发送网络报文时, coap实例还没经过初始化
 *
 */
#define STATE_COAP_SEND_HANDLE_IS_NULL                              (-0x0820)

/**
 * @brief 发送网络报文时, topic字段为空
 *
 */
#define STATE_COAP_SEND_TOPIC_IS_NULL                               (-0x0821)

/**
 * @brief 发送网络报文时, 所填入的request参数是一个空指针
 *
 */
#define STATE_COAP_SEND_REQUEST_IS_NULL                             (-0x0822)

/**
 * @brief 发送网络报文时, request参数中的payload字段是一个空指针
 *
 */
#define STATE_COAP_SEND_PAYLOAD_IS_NULL                             (-0x0823)

/**
 * @brief coap实例设置PSK参数失败
 *
 */
#define STATE_COAP_SET_PSK_FAILED                                   (-0x0824)

/**
 * @brief 与coap服务器进行dtls-psk握手失败
 *
 */
#define STATE_COAP_NWK_ESTABLISH_FAILED                             (-0x0825)

/**
 * @brief 调用 @ref aiot_coap_recv 进行收包时, coap句柄还没经过初始化
 *
 */
#define STATE_COAP_RECV_HANDLE_IS_NULL                              (-0x0826)

/**
 * @brief 调用 @ref aiot_coap_auth 获取auth token时, coap句柄还没经过初始化
 *
 */
#define STATE_COAP_AUTH_HANDLE_IS_NULL                              (-0x0827)

/**
 * @brief 调用 @ref aiot_coap_auth 获取auth token时, 设备的三元组为空
 *
 */
#define STATE_COAP_AUTH_DEVICE_INFO_MISSING                         (-0x0828)

/**
 * @brief 调用 @ref aiot_coap_auth 获取auth token时, 为计算签名分配内存失败
 *
 */
#define STATE_COAP_SIGN_SRC_MALLOC_FAILED                           (-0x0829)

/**
 * @brief 发送报文的时候, 所有option(包括uri拆散后得到的option和其他option)的总和超出COAP_DEFAULT_OPTION_CNT_MAX(15)的限制
 *
 */
#define STATE_COAP_TX_TOTAL_OPTION_CNT_EXCEED_LIMIT                 (-0x082A)

/**
 * @brief 在未得到auth token的情况下调用 @ref aiot_coap_recv 进行收包, 导致收包失败
 *
 */
#define STATE_COAP_RECV_WITHOUT_AUTHORIZATION                       (-0x082B)

/**
 * @brief 发出获取auth token的请求后, 并未在 @ref AIOT_COAPOPT_AUTH_TIMEOUT 设置的超时到达前获取到auth token
 *
 */
#define STATE_COAP_AUTH_TIMEOUT                                     (-0x082C)

/**
 * @brief 设备端发出获取auth token的请求后, 云端下行的报文中auth token字段为空
 *
 */
#define STATE_COAP_AUTH_RSP_TOKEN_IS_NULL                           (-0x082D)

/**
 * @brief SDK反馈auth token内容的状态码
 *
 */
#define STATE_COAP_AUTH_DEBUG                                       (-0x082E)

/**
 * @brief coap句柄为云端下行报文中的auth token分配内存进行存储时, 分配内存失败
 *
 */
#define STATE_COAP_AUTH_TOKEN_MALLOC_FAILED                         (-0x082F)

/**
 * @brief 用户要发送的消息既不是CON类型, 又不是NON类型
 *
 * @details 当前coap模块会默认为下行的CON消息回复ack报文, 因此用户无需再回复.
 * 当前用户能够发送的消息类型, 要么是CON类型, 要么是NON类型, 用户无法发送此外的其他类型
 *
 */
#define STATE_COAP_SEND_INVALID_MSG_TYPE                            (-0x0830)

/**
 * @brief coap句柄中的network句柄初始化失败
 *
 */
#define STATE_COAP_NWK_HANDLE_IS_NULL                               (-0x0831)

/**
 * @brief 调用 @ref aiot_coap_setopt 设置coap句柄参数时, coap句柄没有经过初始化, 或者传入的参数为空
 *
 */
#define AIOT_COAP_OPT_PARAMS_INVALID                                (-0x0832)

/**
 * @brief 调用 @ref aiot_coap_setopt 设置coap句柄参数时, option字段非法
 *
 */
#define STATE_COAP_INVALID_OPTION                                   (-0x0833)

/**
 * @brief 调用 @ref aiot_coap_send 发送消息时,消息的content format字段错误, 不在支持范围内
 *
 */
#define STATE_COAP_UNSUPPORTED_CONTENT_FORMAT                       (-0x0834)

/**
 * @brief 在未得到auth token的情况下调用 @ref aiot_coap_send 进行发包, 导致发包失败
 *
 */
#define STATE_COAP_SEND_WITHOUT_AUTHORIZATION                       (-0x0835)

/**
 * @brief 创建coap报文时, 当opt_len第一个字段为14时, option内容太多,超出了总共发送buffer的大小
 *
 */
#define STATE_COAP_OPT_LEN_FOURTEEN_OPT_LEN_ERROR                   (-0x0836)

/**
 * @brief 创建coap报文时, 为头部预留的空间小于4个字节, 无法存下头部
 *
 */
#define STATE_COAP_PAYLOAD_BUFFER_IS_TOO_SHORT                      (-0x0837)

/**
 * @brief 收到的coap报文中, 声明的option的长度比实际长度要大
 *
 */
#define STATE_COAP_OPTION_LEN_ERROR                                 (-0x0838)

/**
 * @brief 收到auth token时, SDK反馈auth token消息内容的状态码
 *
 */
#define STATE_COAP_LOG_AUTH_TOKEN                                   (-0x0839)

/**
 * @brief 收到auth token以外的其他内容时, SDK反馈消息内容的状态码
 *
 */
#define STATE_COAP_LOG_CONTENT                                      (-0x083A)

/**
 * @brief 请求消息长度不在范围内
 *
 */
#define STATE_COAP_INPUT_OUT_RANGE                                  (-0x083B)

/**
 * @brief 动态注册，接收的密钥长度超过内存长度，需要加大内存
 *
 */
#define STATE_COAP_DYNREG_SECRET_TOO_LONG                           (-0x0840)

/**
 * @brief 动态注册，coap handle为空
 *
 */
#define STATE_COAP_DYNREG_HANDLE_IS_NULL                            (-0x0841)

/**
 * @brief 动态注册，设备参数缺失
 *
 */
#define STATE_COAP_DYNREG_DEVICE_INFO_MISSING                       (-0x0842)

/**
 * @brief 动态注册，云端返回消息超时
 *
 */
#define STATE_COAP_DYNREG_TIMEOUT                                   (-0x0843)

/**
 * @brief 设备认证/动态注册，云端返回校验失败
 *
 */
#define STATE_COAP_AUTH_FAILED                                      (-0x0844)



/**
 * @brief COAP报文类型
 *
 * @details
 *
 * 传入 @ref aiot_coap_recv_handler_t 的COAP报文类型
 */
typedef enum {
    AIOT_COAPRECV_RESPONSE,
} aiot_coap_recv_type_t;

typedef struct {

    /**
     * @brief COAP报文类型, 更多信息请参考@ref aiot_coap_recv_type_t
     */

    aiot_coap_recv_type_t type;

    /**
     * @brief COAP报文结构体
     */
    struct {
        uint8_t    *payload;
        uint32_t    payload_len;
        uint8_t     rsp_code;
        uint32_t    msg_token;
        uint16_t    msg_id;
    } data;
} aiot_coap_recv_t;

/**
 * @brief COAP报文接收回调函数原型
 *
 * @param[in] handle COAP实例句柄
 * @param[in] packet COAP报文结构体指针, 指向所收到的COAP报文的内存地址
 * @param[in] userdata 用户上下文
 *
 * @return void
 */
typedef void (*aiot_coap_recv_handler_t)(void *handle,
        aiot_coap_recv_t *packet,
        void *userdata);

/**
 * @brief COAP内部事件类型
 */
typedef enum {

    /**
     * @brief 当COAP实例从云端获取到连云需要的auth_token时, 触发此事件
     */
    AIOT_COAPEVT_AUTH_TOKEN_RECEIVED,

    /**
     * @brief 当COAP实例所用的auth token过期(当前有效期为7天)时, 触发此事件
     */
    AIOT_COAPEVT_AUTH_TOKEN_EXPIRED,
} aiot_coap_event_type_t;

typedef struct {

    /**
     * @brief COAP事件类型, 更多信息请参考@ref aiot_coap_event_type_t
     */
    aiot_coap_event_type_t type;
} aiot_coap_event_t;

/**
 * @brief COAP事件回调函数
 *
 * @details
 *
 * 当COAP内部事件被触发时, 调用此函数. 如获取到auth_token的时候
 *
 */
typedef void (*aiot_coap_event_handler_t)(void *handle,
        aiot_coap_event_t *event,
        void *userdata);


/**
 * @brief @ref aiot_coap_setopt 函数的option参数. 对于下文每一个选项中的数据类型, 指的是@ref aiot_coap_setopt 中的data参数的数据类型
 *
 * @details
 *
 * 1. data的数据类型是char *时, 以配置@ref AIOT_COAPOPT_HOST 为例:
 *
 *    char *host = "xxx";
 *
 *    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_HOST, host);
 *
 * 2. data的数据类型是其他数据类型时, 以配置@ref AIOT_COAPOPT_PORT 为例:
 *
 *    uint16_t port = 5684;
 *
 *    aiot_coap_setopt(coap_handle, AIOT_COAPOPT_PORT, (void *)&port);
 */

typedef enum {

    /**
     * @brief COAP 服务器的域名地址或者ip地址
     *
     * @details
     *
     * 阿里云物联网平台域名地址列表(必须使用自己的product key替换${pk}):
     *
     * 使用dtls-psk证书方式建联:
     *
     * | 域名地址                                        | 区域    | 端口号
     * |-------------------------------------------------|---------|---------
     * | ${pk}.coap.cn-shanghai.link.aliyuncs.com        | 上海    | 5684
     * 数据类型: (char *)
     */
    AIOT_COAPOPT_HOST,

    /**
     * @brief COAP 服务器的端口号
     *
     * @details
     *
     * 连接阿里云物联网平台时:
     *
     * 目前采用的是dtls-psk方式, 端口号为5684
     *
     * 数据类型: (uint16_t *)
     */
    AIOT_COAPOPT_PORT,

    /**
     * @brief 设备的product key, 可从<a href="http://iot.console.aliyun.com/">阿里云物联网平台控制台</a>获取
     *
     * @details
     *
     * 数据类型: (char *)
     */
    AIOT_COAPOPT_PRODUCT_KEY,

    /**
     * @brief 设备的device name, 可从<a href="http://iot.console.aliyun.com/">阿里云物联网平台控制台</a>获取
     *
     * @details
     *
     * 数据类型: (char *)
     */
    AIOT_COAPOPT_DEVICE_NAME,

    /**
     * @brief 设备的device secret, 可从<a href="http://iot.console.aliyun.com/">阿里云物联网平台控制台</a>获取
     *
     * @details
     *
     * 数据类型: (char *)
     */
    AIOT_COAPOPT_DEVICE_SECRET,

    /**
     * @brief COAP建联时, 网络使用的安全凭据
     *
     * @details
     *
     * 该配置项用于为底层网络配置@ref aiot_sysdep_network_cred_t 安全凭据数据
     *
     * 由于当前只支持以dtls-psk方式建联, 因此需要将 @ref aiot_sysdep_network_cred_t 中option
     * 配置为@ref AIOT_SYSDEP_NETWORK_CRED_SVRCERT_PSK
     *
     * 数据类型: (aiot_sysdep_network_cred_t *)
     */
    AIOT_COAPOPT_CRED,

    /**
     * @brief COAP连云时, 获取auth_token的超时时间
     *
     * 数据类型: (uint32_t *) 默认值: (2 *1000) ms
     *
     */
    AIOT_COAPOPT_AUTH_TIMEOUT,

    /**
     * @brief COAP接收数据时, 在协议栈花费的最长时间
     *
     * @details
     *
     * 数据类型: (uint32_t *) 默认值: (2 * 1000) ms
     */
    AIOT_COAPOPT_RECV_TIMEOUT,

    /**
     * @brief COAP发送数据时, 在协议栈花费的最长时间
     *
     * @details
     *
     * 数据类型: (uint32_t *) 默认值: (2 * 1000) ms
     */

    AIOT_COAPOPT_SEND_TIMEOUT,

    /**
     * @brief 从COAP服务器收取的数据从此回调函数通知用户
     *
     * @details
     *
     * 1. 若没有配置该回调函数, 当有消息到达时会被丢弃
     *
     * 2. 若已配置该回调函数, 当有消息到达从此回调函数对用户进行通知
     *
     * 数据类型: ( @ref aiot_coap_recv_handler_t )
     */
    AIOT_COAPOPT_RECV_HANDLER,

    /**
     * @brief COAP客户端内部发生的事件会从此回调函数进行通知, 如获取到token等
     *
     * @details
     *
     * 数据类型: ( @ref aiot_coap_event_handler_t )
     */
    AIOT_COAPOPT_EVENT_HANDLER,

    /**
     * @brief 用户需要SDK暂存的上下文
     *
     * @details
     *
     * 上下文会在 @ref AIOT_COAPOPT_RECV_HANDLER 和 @ref AIOT_COAPOPT_EVENT_HANDLER 中传回给用户
     *
     * 数据类型: (void *)
     */
    AIOT_COAPOPT_USERDATA,

    /**
     * @brief 应用层数据PAYLOAD使用AES加密啊
     *
     * @details
     *
     * 数据类型: (uint8_t *) 取值范围: 0(关闭AES对称加密), 1(开启AES对称加密) 默认值: 0;
     */
    AIOT_COAPOPT_PAYLOAD_ENCRYPTION,
    AIOT_COAPOPT_MAX,
} aiot_coap_option_t;

/**
 * @brief @ref aiot_coap_send 函数的aiot_coap_request_t参数中的content_format字段.
 *
 * @details
 *
 * 阿里云常用的字段格式为AIOT_COAP_CT_APP_JSON, 即json格式, 以此为例:
 *
 *   aiot_coap_request_t req = {
 *        ...
 *        .content_format = AIOT_COAP_CT_APP_JSON,
 *    };
 *
 */
typedef enum {
    AIOT_COAP_CT_TEXT_PLAIN           = 0,   /**< text/plain (UTF-8) */
    AIOT_COAP_CT_APP_LINK_FORMAT      = 40,  /**< application/link-format */
    AIOT_COAP_CT_APP_XML              = 41,  /**< application/xml */
    AIOT_COAP_CT_APP_OCTET_STREAM     = 42,  /**< application/octet-stream */
    AIOT_COAP_CT_APP_RDF_XML          = 43,  /**< application/rdf+xml */
    AIOT_COAP_CT_APP_EXI              = 47,  /**< application/exi  */
    AIOT_COAP_CT_APP_JSON             = 50,  /**< application/json  */
    AIOT_COAP_CT_APP_CBOR             = 60   /**< application/cbor  */
} aiot_coap_content_format_t;

/**
 * @brief @ref aiot_coap_send 函数的aiot_coap_request_t参数中的msg_type字段.
 *
 * @details
 *
 * ACK和RST消息都是coap句柄自动发送的, 用户无需关心.
 * 用户能够自定义发送COAP的消息类型分为CON/NON两种.
 * 以发送AIOT_COAP_MSG_TYPE_CON消息为例:
 *
 *   aiot_coap_request_t req = {
 *        ...
 *        .msg_type = AIOT_COAP_MSG_TYPE_CON,
 *    };
 *
 */
typedef enum {

    /**
     * @brief confirmable消息类型
     *
     */
    AIOT_COAP_MSG_TYPE_CON  = 0x00,

    /**
     * @brief not confirmable消息类型
     *
     */
    AIOT_COAP_MSG_TYPE_NON  = 0x01,

    /**
     * @brief ack消息类型
     *
     * */
    AIOT_COAP_MSG_TYPE_ACK  = 0x02,  /**< CoAP ack message type */

    /**
     * @brief reset消息类型
     *
     */
    AIOT_COAP_MSG_TYPE_RST  = 0x03,  /**< CoAP reset message type */

    AIOT_COAP_MSG_TYPE_MAX  = 0x04,
} aiot_coap_msg_type_t;

/**
 * @brief @ref aiot_coap_send 函数的aiot_coap_request_t参数
 *
 * @details
 * coap请求消息的格式
 */
typedef struct {

    /**
     * @brief 用户要上传的数据, 其格式要和字段content_format一致.
     *
     */
    uint8_t                    *payload;
    /**
     * @brief 用户要上传的数据, 其格式要和字段content_format一致.
     *
     */
    uint32_t                    payload_len;

    /**
     * @brief @ref aiot_coap_msg_type_t 中所定义的消息类型
     *
     * @details 由于目前coap模块对于收到CON消息会自动回复ack报文,
     * 因此当前发送报文时消息类型仅限于AIOT_COAP_MSG_TYPE_CON和AIOT_COAP_MSG_TYPE_NON, 对于其他类型的报文不予以发送
     *
     */
    aiot_coap_msg_type_t       msg_type;

    /**
     * @brief @ref aiot_coap_content_format_t 中所定义的payload的格式
     *
     */
    aiot_coap_content_format_t content_format;

    /**
     * @brief 用户传入一个指针. 在coap模块发送该请求的时候, 会对该请求生成一个独一无二的token
     * 该指针用以存这个token. 用户可以在SDK外部读取该指针获悉该token的值.
     */
    uint32_t                   *msg_token;
} aiot_coap_request_t;


/**
 * @brief 初始化coap实例并设置默认参数
 *
 * @return void*
 * @retval 非NULL COAP实例句柄
 * @retval NULL 初始化失败, 一般是内存分配失败导致
 *
 */
void *aiot_coap_init(void);

/**
 * @brief 设置coap参数
 *
 * @details
 *
 * 下面列出常用的配置选项, 至少需要配置以下选项才可使用COAP的基本功能
 *
 * 其余配置选项均设有默认值, 可按业务需要进行调整
 *
 * + `AIOT_COAPOPT_HOST`: 配置连接的阿里云COAP站点地址
 *
 * + `AIOT_COAPOPT_PORT`: 配置连接的阿里云COAP站点端口号
 *
 * + `AIOT_COAPOPT_PRODUCT_KEY`: 配置设备的 productKey
 *
 * + `AIOT_COAPOPT_DEVICE_NAME`: 配置设备的 deviceName
 *
 * + `AIOT_COAPOPT_DEVICE_SECRET`: 配置设备的 deviceSecret
 *
 * + `AIOT_COAPOPT_NETWORK_CRED`: 配置建立COAP连接时的安全凭据
 *
 * + `AIOT_COAPOPT_RECV_HANDLER`: 配置默认的数据接收回调函数
 *
 * + `AIOT_COAPOPT_EVENT_HANDLER`: 配置COAP事件通知回调函数
 *
 * @param[in] handle COAP句柄
 * @param[in] option 配置选项, 更多信息请参考@ref aiot_coap_option_t
 * @param[in] data   配置选项数据, 更多信息请参考@ref aiot_coap_option_t
 *
 * @return int32_t
 * @retval <STATE_SUCCESS 参数设置失败, 更多信息请本文件后面关于错误码的定义
 * @retval =STATE_SUCCESS 参数设置成功
 *
 */
int32_t aiot_coap_setopt(void *handle, aiot_coap_option_t option, void *data);

/**
 * @brief 发送COAP报文
 *
 * @param[in] handle COAP句柄
 * @param[in] topic 目标topic
 * @param[in] message 指向要发送报文的内容的指针
 *
 * @return int32_t
 * @retval STATE_COAP_SEND_HANDLE_IS_NULL 发送的报文时, coap_handle为空
 * @retval STATE_COAP_SEND_TOPIC_IS_NULL 发送的报文时, topic为空
 * @retval STATE_COAP_SEND_REQUEST_IS_NULL 发送的报文时, request为空
 * @retval STATE_COAP_SEND_PAYLOAD_IS_NULL 发送的报文时, payload为空
 * @retval STATE_COAP_SEND_WITHOUT_AUTHORIZATION  发送消息时auth_token还没有获取到
 * @retval STATE_COAP_SEND_INVALID_MSG_TYPE 发送消息时, 消息的类型既不是CON, 也不是NON
 * @retval <STATE_SUCCESS的其他错误 主要是网络有关的, 具体见本文件下面的错误码定义
 * @retval STATE_SUCCESS 发送coap报文成功
 */
int32_t aiot_coap_send(void *handle, const char *topic, aiot_coap_request_t *message);

/**
 * @brief 从网络收取COAP报文
 *
 * @param[in] handle COAP句柄
 *
 * @return int32_t
 * @retval STATE_COAP_RECV_HANDLE_IS_NULL 收取网络报文时, coap handle为空
 * @retval STATE_COAP_RECV_WITHOUT_AUTHORIZATION 收取网络报文时, auth token还没有获取到
 * @retval <STATE_SUCCESS的其他错误 主要是网络有关的, 具体见本文件下面的错误码定义
 * @retval STATE_SUCCESS 收取COAP报文成功
 */
int32_t aiot_coap_recv(void *handle);

/**
 * @brief 释放COAP实例句柄的资源
 *
 * @param[in] handle 指向mqtt实例句柄的指针
 *
 * @return int32_t
 * @retval STATE_SUCCESS 执行成功
 *
 */
int32_t aiot_coap_deinit(void **handle);

/**
 * @brief 让coap模块与服务器通信, 并且获取auth token
 *
 * @param[in] handle COAP句柄
 *
 * @return int32_t
 * @retval STATE_COAP_AUTH_HANDLE_IS_NULL 获取auth token时coap handle为空
 * @retval STATE_COAP_AUTH_DEVICE_INFO_MISSING 获取auth token时设备的三元组为空
 * @retval STATE_COAP_SIGN_SRC_MALLOC_FAILED 获取auth token时为计算签名分配内存失败
 * @retval STATE_COAP_AUTH_TIMEOUT 获取auth token发生超时, 超过了 @ref AIOT_COAPOPT_AUTH_TIMEOUT 所定义的超时时间
 * @retval <STATE_SUCCESS的其他其他错误 主要是网络有关的, 具体见本文件下面的错误码定义
 * @retval =STATE_SUCCESS 获取auth token成功
 *
 */
int32_t aiot_coap_auth(void *handle);

/**
 * @brief 设备动态注册，返回设备密钥
 *
 * @param[in] handle COAP句柄
 * @param[in] product_secret 产品密钥
 * @param[out] out_secret 输出的设备密钥
 * @param[in]  out_secret_maxlen 保存设备密钥的内存大小
 *
 * @return int32_t
 * @retval STATE_COAP_AUTH_HANDLE_IS_NULL 获取device_secret时coap handle为空
 * @retval STATE_COAP_AUTH_DEVICE_INFO_MISSING 获取device_secret时设备的三元组为空
 * @retval STATE_COAP_SIGN_SRC_MALLOC_FAILED 获取device_secret时为计算签名分配内存失败
 * @retval STATE_COAP_AUTH_TIMEOUT 获取device_secret发生超时, 超过了 @ref AIOT_COAPOPT_AUTH_TIMEOUT 所定义的超时时间
 * @retval <STATE_SUCCESS的其他其他错误 主要是网络有关的, 具体见本文件下面的错误码定义
 * @retval =STATE_SUCCESS 获取device_secret成功
 *
 */
int32_t aiot_coap_dynreg(void *handle, const char *product_secret, char *out_secret, uint32_t out_secret_maxlen);


/**
 * @brief 设备主动请求下拉消息
 *
 * @param[in] handle COAP句柄
 * @param[in] counter 下拉的最大消息数
 *
 * @return int32_t
 * @retval <STATE_SUCCESS的其他其他错误 主要是网络有关的, 具体见本文件下面的错误码定义
 * @retval >=STATE_SUCCESS 返回coap协议的消息id
 *
 */
int32_t aiot_coap_request_message(void *handle, int32_t counter);

#if defined(__cplusplus)
}
#endif

#endif  /* __AIOT_COAP_API_H__ */

