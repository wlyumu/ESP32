#include <string.h>
#include <stdlib.h>

#include "mbedtls/platform.h"
#include "mbedtls/net_sockets.h"
#include "mbedtls/esp_debug.h"
#include "mbedtls/ssl.h"
#include "mbedtls/entropy.h"
#include "mbedtls/ctr_drbg.h"
#include "mbedtls/error.h"
#include "mbedtls/certs.h"


int mbedtls_hmac_sha1(mbedtls_md_type_t md_type)
{
    int len;
    int ret;

    const char *key = "mculover666";
    const char *message = "hello world";
    uint8_t hmac[32];

    mbedtls_md_context_t ctx;
    const mbedtls_md_info_t *info;

    mbedtls_md_init(&ctx);

    info = mbedtls_md_info_from_type(md_type);

    ret = mbedtls_md_setup(&ctx, info, 1);
    if(ret != 0)
    {
        goto exit;
    }

    ret = mbedtls_md_hmac_starts(&ctx, (uint8_t *)key, strlen(key));
    if(ret != 0)
    goto exit;

    ret = mbedtls_md_hmac_update(&ctx, (uint8_t *)message, strlen(message));
    if(ret != 0)
    goto exit;

    ret = mbedtls_md_hmac_finish(&ctx, hmac);
    if(ret != 0)
    goto exit;

    printf("%s hmac context is:[", mbedtls_md_get_name(info));
    len = mbedtls_md_get_size(info);
    for (int i = 0; i < len; i++)
    {
        /* code */
        printf("%02x", hmac[i]);
    }

    printf("]\r\n");
    

exit:
    mbedtls_md_free(&ctx);

    return ret;
}