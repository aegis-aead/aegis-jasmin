
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "crypto_aead_aegis128x2.h"

static int
check_mac(void)
{
    unsigned char       k[16]    = { 0x10, 0x01 };
    unsigned char       npub[16] = { 0x10, 0x00, 0x02 };
    unsigned char       data[35];
    unsigned char       mac[32];
    static const unsigned char expected128[16] = { 0x68, 0x73, 0xee, 0x34, 0xe6, 0xb5, 0xc5, 0x91, 0x43, 0xb6, 0xd3, 0x5c, 0x5e, 0x4f, 0x2c, 0x6e };
    static const unsigned char expected256[32] = { 0xaf, 0xcb, 0xa3, 0xfc, 0x2d, 0x63, 0xc8, 0xd6, 0xc7, 0xf2, 0xd6, 0x3f, 0x3e, 0xc8, 0xfb, 0xbb, 0xaf, 0x02, 0x2e, 0x15, 0xac, 0x12, 0x0e, 0x78, 0xff, 0xa7, 0x75, 0x5a, 0xbc, 0xcd, 0x95, 0x9c };
    int                 failed = 0;

    for (size_t i = 0; i < sizeof data; i++) {
        data[i] = (unsigned char) i;
    }

    crypto_aead_aegis128x2_mac(mac, data, sizeof data, npub, k);
    if (memcmp(mac, expected128, 16) != 0) {
        puts("mac128: wrong tag");
        failed = 1;
    }
    if (crypto_aead_aegis128x2_mac_verify(expected128, data, sizeof data, npub, k) != 0) {
        puts("mac128: valid tag rejected");
        failed = 1;
    }
    data[34] ^= 1;
    if (crypto_aead_aegis128x2_mac_verify(expected128, data, sizeof data, npub, k) != -1) {
        puts("mac128: forged tag accepted");
        failed = 1;
    }
    data[34] ^= 1;

    crypto_aead_aegis128x2t32_mac(mac, data, sizeof data, npub, k);
    if (memcmp(mac, expected256, 32) != 0) {
        puts("mac256: wrong tag");
        failed = 1;
    }
    if (crypto_aead_aegis128x2t32_mac_verify(expected256, data, sizeof data, npub, k) != 0) {
        puts("mac256: valid tag rejected");
        failed = 1;
    }
    data[34] ^= 1;
    if (crypto_aead_aegis128x2t32_mac_verify(expected256, data, sizeof data, npub, k) != -1) {
        puts("mac256: forged tag accepted");
        failed = 1;
    }

    printf("mac test vectors: %s\n", failed ? "FAILED" : "ok");

    return failed;
}

int
main(void)
{
    unsigned char k[16]    = { 0 };
    unsigned char npub[16] = { 0 };
    unsigned char mac[16]  = { 0 };
    unsigned char ad[33]   = { 0 };
    unsigned char m[42]    = { 0 };
    unsigned char ct[42]   = { 0 };

    memset(ad, 0x42, sizeof ad);
    k[0]    = 0x10;
    k[1]    = 0x01;
    npub[0] = 0x10;
    npub[2] = 0x02;

    crypto_aead_aegis128x2_encrypt_detached(ct, mac, NULL, m, sizeof m, ad, sizeof ad, NULL, npub,
                                            k);
    for (size_t i = 0; i < sizeof m; i++) {
        printf("%02x", ct[i]);
    }
   puts("");
    int ret = crypto_aead_aegis128x2_decrypt_detached(m, NULL, ct, sizeof ct, mac, ad, sizeof ad,
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
        crypto_aead_aegis128x2_encrypt_detached(buf, mac, NULL, buf, size, ad, sizeof ad, NULL,
                                                npub, k);
    }
    for (size_t i = 0; i < sizeof mac; i++) {
        printf("%02x", mac[i]);
    }
    puts("");

    return check_mac();
}
