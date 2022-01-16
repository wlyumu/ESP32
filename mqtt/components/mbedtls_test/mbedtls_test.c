//
// Created by Lenovo on 2022-1-12.
//

#include <stdio.h>
#include "string.h"
#include "mbedtls/aes.h"
#include "mbedtls/md5.h"
#include "mbedtls/sha1.h"
#include "mbedtls/md.h"

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

    /*!初始化指定的aes上下文*/
    mbedtls_aes_init(&aes_ctx);
    /*!设置加密密钥*/
    mbedtls_aes_setkey_enc(&aes_ctx, key, 128);
    printf("要加密的数据: %s\n", plain);
    printf("加密的密码: %s\n", key);
    /*!执行AES单块加密
     *ctx：用于加密或解密的 AES 上下文。它必须被初始化并绑定到一个键。
     *mode：AES 操作：MBEDTLS_AES_ENCRYPT或MBEDTLS_AES_DECRYPT。
     *input：保存输入数据的缓冲区。它必须是可读的，并且16长度至少为Bytes。
     *output：将写入输出数据的缓冲区。它必须是可写的，并且16长度至少为Bytes。
     * */
    mbedtls_aes_crypt_ecb(&aes_ctx, MBEDTLS_AES_ENCRYPT, plain, cipher);
    printf("加密结果，二进制表示: ");
    for(int loop = 0; loop < 16; loop++)
    {
        printf("%02x", cipher[loop]);
    }
    printf("\r\n");

    /*!设置解密密钥*/
    mbedtls_aes_setkey_dec(&aes_ctx, key, 128);
    /*!执行AES单块解密*/
    mbedtls_aes_crypt_ecb(&aes_ctx, MBEDTLS_AES_DECRYPT, cipher, dec_plain);
    printf("解密后的数据: %s\n", dec_plain);
    /*!释放并清除指定的 AES 上下文*/
    mbedtls_aes_free(&aes_ctx);
}

/*!---------------AES-CBC--------------------------
 * 不容易主动攻击，安全性好于ECB，适合传输长度长的报文，是SSL、IPSec的标准。
 */
void mbedtls_aes_cbc_test(void)
{
    printf("AES-CBC 加密-数据块(128位)\n");
    int i;
    mbedtls_aes_context aes_ctx;
    //密钥数值
    unsigned char key[16] = {'c', 'b', 'c', 'p', 'a', 's', 's', 'w', 'o', 'r', 'd', '1', '2', '3', '4'};
    //iv
    unsigned char iv[16];
    //明文空间
    unsigned char plain[64] = "hello_worled1234";
    //解密后明文的空间
    unsigned char dec_plain[64] = {0};
    //密文空间
    unsigned char cipher[64] = {0};

    mbedtls_aes_init(&aes_ctx);
    mbedtls_aes_setkey_enc(&aes_ctx, key, 128);
    for(i = 0; i < 16; i++)
    {
        iv[i] = 0x01;
    }

    printf("要加密的数据: %s\n", plain);
    printf("加密的密码: %s\n", key);
    mbedtls_aes_crypt_cbc(&aes_ctx, MBEDTLS_AES_ENCRYPT, 64, iv, plain, cipher);
    printf("加密结果，二进制表示: ");
    for(int loop = 0; loop < 64; loop++)
    {
        printf("%02x", cipher[loop]);
    }
    printf("\r\n");

    //设置解密密钥
    mbedtls_aes_setkey_dec(&aes_ctx, key, 128);
    for(i = 0; i < 16; i++)
    {
        iv[i] = 0x01;
    }
    mbedtls_aes_crypt_cbc(&aes_ctx, MBEDTLS_AES_DECRYPT, 64, iv, cipher, dec_plain);
    printf("解密后的数据: %s\n", dec_plain);
    mbedtls_aes_free(&aes_ctx);
}

/*!---------------------------MD5----------------
 * MD5信息摘要算法（英语：MD5 Message-Digest Algorithm），
 * 一种被广泛使用的密码散列函数，可以产生出一个128位（16字节）
 * 的散列值（hash value），用于确保信息传输完整一致。
 * 应用场景：
 *  密码管理
 *  电子签名
 *  垃圾邮件筛选
 */

void mbedtls_md5_test(void)
{
    mbedtls_md5_context md5_ctx;

    uint8_t encrypt[] = "hello_world1234";
    uint8_t decrypt[16];

    /*!md5 初始化*/
    mbedtls_md5_init(&md5_ctx);
    mbedtls_md5_starts(&md5_ctx);
    mbedtls_md5_update(&md5_ctx, encrypt, strlen((char *)encrypt));
    mbedtls_md5_finish(&md5_ctx, decrypt);

    printf("MD5加密前:[%s]\n", encrypt);
    printf("MD5加密后(32位):");
    for(int i = 0; i < 16; i++)
    {
        printf("%02x", decrypt[i]);
    }
    printf("\r\n");

    mbedtls_md5_free(&md5_ctx);
}


/*!----------------------sha-1-------------------
 * HA-1（英语：Secure Hash Algorithm 1，中文名：安全散列算法1）是一种密码散列函数，
 * 美国国家安全局设计，并由美国国家标准技术研究所（NIST）发布为联邦数据处理标准（FIPS)。
 * SHA-1可以生成一个被称为消息摘要的160位（20字节）散列值，散列值通常的呈现形式为40个十六进制数。
 *
 * */
void mbedtls_sha_1_test(void)
{
    printf("SHA-1加密\r\n");
    mbedtls_sha1_context sha1_ctx;

    uint8_t encrypt[] = "hello_world1234";
    uint8_t decrypt[32];

    mbedtls_sha1_init(&sha1_ctx);
    mbedtls_sha1_starts(&sha1_ctx);
    mbedtls_sha1_update(&sha1_ctx, encrypt, strlen((char *)encrypt));
    mbedtls_sha1_finish(&sha1_ctx, decrypt);

    printf("SHA1加密前:[%s]\n", encrypt);
    printf("SHA1加密后(40位):");
    for(int i = 0; i < 20; i++)
    {
        printf("%02x", decrypt[i]);
    }
    printf("\r\n");

    mbedtls_sha1_free(&sha1_ctx);
}

/*!---------------------------hmac---------------------
 *
 */

int mbedtls_hmac_test(mbedtls_md_type_t md_type)
{
    int len, i;
    int ret;

    const char *key = "hmac1234";
    const char *message = "hello world";
    uint8_t  hmac[32];

    mbedtls_md_context_t md_ctx;
    const mbedtls_md_info_t  *info;
    printf("message is: %s\r\n", message);

    mbedtls_md_init(&md_ctx);

    info = mbedtls_md_info_from_type(md_type);

    ret = mbedtls_md_setup(&md_ctx, info, 1);
    if(ret != 0)
    {
        goto  exit;
    }

    ret = mbedtls_md_hmac_starts(&md_ctx, (uint8_t*)key, strlen(key));
    if(ret != 0)
    {
        goto exit;
    }

    ret = mbedtls_md_hmac_update(&md_ctx, (uint8_t*)message, strlen(message));
    if(ret != 0)
        goto exit;

    ret = mbedtls_md_hmac_finish(&md_ctx, hmac);
    if(ret != 0)
        goto exit;

    /* show */
    printf("%s hmac context is:[", mbedtls_md_get_name(info));
    len= mbedtls_md_get_size(info);
    for (i = 0; i < len; i++) {
        printf("%02x", hmac[i]);
    }
    printf("]\r\n");


    exit:
    mbedtls_md_free(&md_ctx);
    return ret;
}