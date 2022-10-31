# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/applications/protocols/https_mbedtls/build_out/blog_testc//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc.c"
# 1 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc.h" 1



int blog_testc_init(void);

int blog_testc1_init(void);
int blog_testc2_init(void);
int blog_testc3_init(void);
int blog_testc4_init(void);
# 2 "/mnt/d/GitHub/bl_iot_sdk_for_aithinker/components/stage/blog_testc/blog_testc.c" 2

int blog_testc_init(void)
{
    blog_testc1_init();
    blog_testc2_init();
    blog_testc3_init();
    blog_testc4_init();

    return 0;
}
