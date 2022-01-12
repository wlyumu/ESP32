//
// Created by Lenovo on 2022-1-12.
//

#include <stdio.h>
#include "string.h"
#include "mbedtls/aes.h"
#include "mbedtls/config.h"
#include "include/mbedtls_test.h"

void aes_ecb_crypt_test(void)
{
    printf("AES-ECB 加密-数据块(128位)，偏移量为0\n");

    mbedtls_aes_context aes_ctx;
    /*!密钥数值*/
    unsigned char key[16] = {'e', 'c', 'b', 'p', 'a', 's', 's', 'w', 'o', 'r', 'd', '1', '2', '3', '4'};
    /*!明文空间*/
    uint8_t  plain[16] = "test1234";
    /*!解密后明文空间*/
    uint8_t  dec_plain[16] = {0};
    /*!密文空间*/
    uint8_t  cipher[16] = {0};

    /*!初始化aes*/
    mbedtls_aes_init(&aes_ctx);
    mbedtls_aes_setkey_enc(&aes_ctx, key, 128);
    printf("要加密的数据: %s\n", plain);
    printf("加密的密码: %s\n", key);
    mbedtls_aes_crypt_ecb(&aes_ctx, MBEDTLS_AES_ENCRYPT, plain, cipher);
    printf("加密结果，二进制表示: ");
    for(int loop = 0; loop < 16; loop++)
    {
        printf("%02x", cipher[loop]);
    }
    printf("\r\n");

    //设置解密密钥
    mbedtls_aes_setkey_dec(&aes_ctx, key, 128);
    mbedtls_aes_crypt_ecb(&aes_ctx, MBEDTLS_AES_DECRYPT, cipher, dec_plain);
    printf("解密后的数据: %s\n", dec_plain);
    mbedtls_aes_free(&aes_ctx);
}