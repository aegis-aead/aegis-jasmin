
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "crypto_aead_aegis128l.h"

static int
check_mac(void)
{
    unsigned char       k[16]    = { 0x10, 0x01 };
    unsigned char       npub[16] = { 0x10, 0x00, 0x02 };
    unsigned char       data[35];
    unsigned char       mac[32];
    static const unsigned char expected128[16] = { 0xd3, 0xf0, 0x9b, 0x28, 0x42, 0xad, 0x30, 0x16, 0x87, 0xd6, 0x90, 0x2c, 0x92, 0x1d, 0x78, 0x18 };
    static const unsigned char expected256[32] = { 0x94, 0x90, 0xe7, 0xc8, 0x9d, 0x42, 0x0c, 0x9f, 0x37, 0x41, 0x7f, 0xa6, 0x25, 0xeb, 0x38, 0xe8, 0xca, 0xd5, 0x3c, 0x5c, 0xbe, 0xc5, 0x52, 0x85, 0xe8, 0x49, 0x9e, 0xa4, 0x83, 0x77, 0xf2, 0xa3 };
    int                 failed = 0;

    for (size_t i = 0; i < sizeof data; i++) {
        data[i] = (unsigned char) i;
    }

    crypto_aead_aegis128l_mac(mac, data, sizeof data, npub, k);
    if (memcmp(mac, expected128, 16) != 0) {
        puts("mac128: wrong tag");
        failed = 1;
    }
    if (crypto_aead_aegis128l_mac_verify(expected128, data, sizeof data, npub, k) != 0) {
        puts("mac128: valid tag rejected");
        failed = 1;
    }
    data[34] ^= 1;
    if (crypto_aead_aegis128l_mac_verify(expected128, data, sizeof data, npub, k) != -1) {
        puts("mac128: forged tag accepted");
        failed = 1;
    }
    data[34] ^= 1;

    crypto_aead_aegis128lt32_mac(mac, data, sizeof data, npub, k);
    if (memcmp(mac, expected256, 32) != 0) {
        puts("mac256: wrong tag");
        failed = 1;
    }
    if (crypto_aead_aegis128lt32_mac_verify(expected256, data, sizeof data, npub, k) != 0) {
        puts("mac256: valid tag rejected");
        failed = 1;
    }
    data[34] ^= 1;
    if (crypto_aead_aegis128lt32_mac_verify(expected256, data, sizeof data, npub, k) != -1) {
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

    crypto_aead_aegis128l_encrypt_detached(ct, mac, NULL, m, sizeof m, ad, sizeof ad, NULL, npub,
                                           k);
    int ret =
        crypto_aead_aegis128l_decrypt_detached(m, NULL, ct, sizeof ct, mac, ad, sizeof ad, npub, k);

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
        crypto_aead_aegis128l_encrypt_detached(buf, mac, NULL, buf, size, ad, sizeof ad, NULL, npub,
                                               k);
    }
    for (size_t i = 0; i < sizeof mac; i++) {
        printf("%02x", mac[i]);
    }
    puts("");

    return check_mac();
}
