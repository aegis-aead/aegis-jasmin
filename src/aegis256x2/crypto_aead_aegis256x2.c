#include <stddef.h>

#include "crypto_aead_aegis256x2.h"

typedef struct Params {
    unsigned char       *c;
    unsigned long long   clen;
    unsigned char       *mac;
    unsigned char        maclen;
    unsigned char       *m;
    unsigned long long   mlen;
    const unsigned char *ad;
    unsigned long long   adlen;
    const unsigned char *k;
    const unsigned char *npub;
} Params;

extern int _aegis256x2_encrypt(const Params *params);
extern int _aegis256x2_decrypt(const Params *params);
extern int _aegis256x2_mac(const Params *params);
extern int _aegis256x2_mac_verify(const Params *params);

int
crypto_aead_aegis256x2_encrypt_detached(unsigned char       *c,
                                        unsigned char       *mac,
                                        unsigned long long  *maclen_p,
                                        const unsigned char *m,
                                        unsigned long long   mlen,
                                        const unsigned char *ad,
                                        unsigned long long   adlen,
                                        const unsigned char *nsec,
                                        const unsigned char *npub,
                                        const unsigned char *k)
{
    const Params params = { c, mlen, mac, 16, (unsigned char *) m, mlen, ad, adlen, k, npub };

    (void) nsec;

    if (maclen_p != NULL) {
        *maclen_p = 16;
    }
    return _aegis256x2_encrypt(&params);
}

int
crypto_aead_aegis256x2_decrypt_detached(unsigned char       *m,
                                        unsigned char       *nsec,
                                        const unsigned char *c,
                                        unsigned long long   clen,
                                        const unsigned char *mac,
                                        const unsigned char *ad,
                                        unsigned long long   adlen,
                                        const unsigned char *npub,
                                        const unsigned char *k)
{
    const Params params = {
        (unsigned char *) c, clen, (unsigned char *) mac, 16, m, clen, ad, adlen, k, npub
    };

    (void) nsec;

    return _aegis256x2_decrypt(&params);
}

int
crypto_aead_aegis256x2t32_encrypt_detached(unsigned char       *c,
                                           unsigned char       *mac,
                                           unsigned long long  *maclen_p,
                                           const unsigned char *m,
                                           unsigned long long   mlen,
                                           const unsigned char *ad,
                                           unsigned long long   adlen,
                                           const unsigned char *nsec,
                                           const unsigned char *npub,
                                           const unsigned char *k)
{
    const Params params = { c, mlen, mac, 32, (unsigned char *) m, mlen, ad, adlen, k, npub };

    (void) nsec;

    if (maclen_p != NULL) {
        *maclen_p = 32;
    }
    return _aegis256x2_encrypt(&params);
}

int
crypto_aead_aegis256x2t32_decrypt_detached(unsigned char       *m,
                                           unsigned char       *nsec,
                                           const unsigned char *c,
                                           unsigned long long   clen,
                                           const unsigned char *mac,
                                           const unsigned char *ad,
                                           unsigned long long   adlen,
                                           const unsigned char *npub,
                                           const unsigned char *k)
{
    const Params params = {
        (unsigned char *) c, clen, (unsigned char *) mac, 32, m, clen, ad, adlen, k, npub
    };

    (void) nsec;

    return _aegis256x2_decrypt(&params);
}

int
crypto_aead_aegis256x2_encrypt(unsigned char       *c,
                               unsigned long long  *clen_p,
                               const unsigned char *m,
                               unsigned long long   mlen,
                               const unsigned char *ad,
                               unsigned long long   adlen,
                               const unsigned char *nsec,
                               const unsigned char *npub,
                               const unsigned char *k)
{
    (void) nsec;

    if (clen_p != NULL) {
        *clen_p = mlen + 16;
    }
    return crypto_aead_aegis256x2_encrypt_detached(
        c, c + mlen, NULL, m, mlen, ad, adlen, NULL, npub, k);
}

int
crypto_aead_aegis256x2_decrypt(unsigned char       *m,
                               unsigned long long  *mlen_p,
                               unsigned char       *nsec,
                               const unsigned char *c,
                               unsigned long long   clen,
                               const unsigned char *ad,
                               unsigned long long   adlen,
                               const unsigned char *npub,
                               const unsigned char *k)
{
    (void) nsec;

    if (clen < 16) {
        return -1;
    }
    if (mlen_p != NULL) {
        *mlen_p = clen - 16;
    }
    return crypto_aead_aegis256x2_decrypt_detached(
        m, NULL, c, clen - 16, c + clen - 16, ad, adlen, npub, k);
}

int
crypto_aead_aegis256x2t32_encrypt(unsigned char       *c,
                                  unsigned long long  *clen_p,
                                  const unsigned char *m,
                                  unsigned long long   mlen,
                                  const unsigned char *ad,
                                  unsigned long long   adlen,
                                  const unsigned char *nsec,
                                  const unsigned char *npub,
                                  const unsigned char *k)
{
    (void) nsec;

    if (clen_p != NULL) {
        *clen_p = mlen + 32;
    }
    return crypto_aead_aegis256x2t32_encrypt_detached(
        c, c + mlen, NULL, m, mlen, ad, adlen, NULL, npub, k);
}

int
crypto_aead_aegis256x2t32_decrypt(unsigned char       *m,
                                  unsigned long long  *mlen_p,
                                  unsigned char       *nsec,
                                  const unsigned char *c,
                                  unsigned long long   clen,
                                  const unsigned char *ad,
                                  unsigned long long   adlen,
                                  const unsigned char *npub,
                                  const unsigned char *k)
{
    (void) nsec;

    if (clen < 32) {
        return -1;
    }
    if (mlen_p != NULL) {
        *mlen_p = clen - 32;
    }
    return crypto_aead_aegis256x2t32_decrypt_detached(
        m, NULL, c, clen - 32, c + clen - 32, ad, adlen, npub, k);
}

int
crypto_aead_aegis256x2_mac(unsigned char       *mac,
                           const unsigned char *m,
                           unsigned long long   mlen,
                           const unsigned char *npub,
                           const unsigned char *k)
{
    const Params params = { NULL, 0, mac, 16, NULL, 0, m, mlen, k, npub };
    return _aegis256x2_mac(&params);
}

int
crypto_aead_aegis256x2_mac_verify(const unsigned char *mac,
                                  const unsigned char *m,
                                  unsigned long long   mlen,
                                  const unsigned char *npub,
                                  const unsigned char *k)
{
    const Params params = {
        NULL, 0, (unsigned char *) mac, 16, NULL, 0, m, mlen, k, npub
    };
    return _aegis256x2_mac_verify(&params);
}

int
crypto_aead_aegis256x2t32_mac(unsigned char       *mac,
                              const unsigned char *m,
                              unsigned long long   mlen,
                              const unsigned char *npub,
                              const unsigned char *k)
{
    const Params params = { NULL, 0, mac, 32, NULL, 0, m, mlen, k, npub };
    return _aegis256x2_mac(&params);
}

int
crypto_aead_aegis256x2t32_mac_verify(const unsigned char *mac,
                                     const unsigned char *m,
                                     unsigned long long   mlen,
                                     const unsigned char *npub,
                                     const unsigned char *k)
{
    const Params params = {
        NULL, 0, (unsigned char *) mac, 32, NULL, 0, m, mlen, k, npub
    };
    return _aegis256x2_mac_verify(&params);
}
