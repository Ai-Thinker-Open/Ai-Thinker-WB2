#ifndef MBEDTLS_GCM_ALT_H
#define MBEDTLS_GCM_ALT_H

#include <bl_sec.h>

/**
 * \brief          The GCM context structure.
 */
typedef struct mbedtls_gcm_context
{
    uint64_t len;                         /*!< The total length of the encrypted data. */
    uint64_t add_len;                     /*!< The total length of the additional data. */
    unsigned char base_ectr[16];          /*!< The first ECTR for tag. */
    unsigned char y[16];                  /*!< The Y working value. */
    int mode;                             /*!< The operation to perform:
                                               #MBEDTLS_GCM_ENCRYPT or
                                               #MBEDTLS_GCM_DECRYPT. */
    bl_sec_aes_t aes;
    bl_sec_gmac_t gmac;
}
mbedtls_gcm_context;

#endif /* gcm_alt.h */
