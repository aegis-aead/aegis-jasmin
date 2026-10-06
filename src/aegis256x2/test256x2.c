
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "crypto_aead_aegis256x2.h"

static int
check_mac(void)
{
    unsigned char       k[32]    = { 0x10, 0x01 };
    unsigned char       npub[32] = { 0x10, 0x00, 0x02 };
    unsigned char       data[35];
    unsigned char       mac[32];
    static const unsigned char expected128[16] = { 0xfb, 0x31, 0x9c, 0xb6, 0xdd, 0x72, 0x8a, 0x76, 0x46, 0x06, 0xfb, 0x14, 0xd3, 0x7f, 0x2a, 0x5e };
    static const unsigned char expected256[32] = { 0x08, 0x44, 0xb2, 0x0e, 0xd5, 0x14, 0x7c, 0xea, 0xe8, 0x9c, 0x7a, 0x16, 0x02, 0x63, 0xaf, 0xd4, 0xb1, 0x38, 0x2d, 0x6b, 0x15, 0x4e, 0xcf, 0x56, 0x0c, 0xe8, 0xa3, 0x42, 0xcb, 0x6a, 0x8f, 0xd1 };
    int                 failed = 0;

    for (size_t i = 0; i < sizeof data; i++) {
        data[i] = (unsigned char) i;
    }

    crypto_aead_aegis256x2_mac(mac, data, sizeof data, npub, k);
    if (memcmp(mac, expected128, 16) != 0) {
        puts("mac128: wrong tag");
        failed = 1;
    }
    if (crypto_aead_aegis256x2_mac_verify(expected128, data, sizeof data, npub, k) != 0) {
        puts("mac128: valid tag rejected");
        failed = 1;
    }
    data[34] ^= 1;
    if (crypto_aead_aegis256x2_mac_verify(expected128, data, sizeof data, npub, k) != -1) {
        puts("mac128: forged tag accepted");
        failed = 1;
    }
    data[34] ^= 1;

    crypto_aead_aegis256x2t32_mac(mac, data, sizeof data, npub, k);
    if (memcmp(mac, expected256, 32) != 0) {
        puts("mac256: wrong tag");
        failed = 1;
    }
    if (crypto_aead_aegis256x2t32_mac_verify(expected256, data, sizeof data, npub, k) != 0) {
        puts("mac256: valid tag rejected");
        failed = 1;
    }
    data[34] ^= 1;
    if (crypto_aead_aegis256x2t32_mac_verify(expected256, data, sizeof data, npub, k) != -1) {
        puts("mac256: forged tag accepted");
        failed = 1;
    }

    printf("mac test vectors: %s\n", failed ? "FAILED" : "ok");

    return failed;
}

int
main(void)
{
    unsigned char k[32]    = { 0 };
    unsigned char npub[32] = { 0 };
    unsigned char mac[16]  = { 0 };
    unsigned char ad[33]   = { 0 };
    unsigned char m[42]    = { 0 };
    unsigned char ct[42]   = { 0 };

    memset(ad, 0x42, sizeof ad);
    k[0]    = 0x10;
    k[1]    = 0x01;
    npub[0] = 0x10;
    npub[2] = 0x02;

    crypto_aead_aegis256x2_encrypt_detached(ct, mac, NULL, m, sizeof m, ad, sizeof ad, NULL, npub,
                                            k);
    int ret = crypto_aead_aegis256x2_decrypt_detached(m, NULL, ct, sizeof ct, mac, ad, sizeof ad,
                                                      npub, k);

    for (size_t i = 0; i < sizeof m; i++) {
        printf("%02x", m[i]);
    }
    puts("");
    for (size_t i = 0; i < sizeof mac; i++) {
        printf("%02x", mac[i]);
    }
    puts("");
    printf("ret = %d\n", ret);

    const size_t   size = 1024 * 1024;
    unsigned char *buf  = (unsigned char *) malloc(size);
    memset(buf, 0x42, size);
    for (unsigned int i = 0; i < 300000; i++) {
        crypto_aead_aegis256x2_encrypt_detached(buf, mac, NULL, buf, size, ad, sizeof ad, NULL,
                                                npub, k);
    }
    for (size_t i = 0; i < sizeof mac; i++) {
        printf("%02x", mac[i]);
    }
    puts("");

    return check_mac();
}
