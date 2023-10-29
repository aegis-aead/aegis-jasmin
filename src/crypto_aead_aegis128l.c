#include <stddef.h>

#include "crypto_aead_aegis128l.h"

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

extern void _aegis128l_encrypt(const Params *params);
extern int  _aegis128l_decrypt(const Params *params);

int
crypto_aead_aegis128l_encrypt_detached(unsigned char       *c,
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
    _aegis128l_encrypt(&params);

    return 0;
}

int
crypto_aead_aegis128l_decrypt_detached(unsigned char       *m,
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
    return _aegis128l_decrypt(&params);
}

int
crypto_aead_aegis128lt32_encrypt_detached(unsigned char       *c,
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

    _aegis128l_encrypt(&params);

    if (maclen_p != NULL) {
        *maclen_p = 32;
    }
}

int
crypto_aead_aegis128lt32_decrypt_detached(unsigned char       *m,
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

    return _aegis128l_decrypt(&params);
}

int
crypto_aead_aegis128l_encrypt(unsigned char       *c,
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

    crypto_aead_aegis128l_encrypt_detached(c, c + mlen, NULL, m, mlen, ad, adlen, NULL, npub, k);

    if (clen_p != NULL) {
        *clen_p = mlen + 16;
    }
    return 0;
}

int
crypto_aead_aegis128l_decrypt(unsigned char       *m,
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
    return crypto_aead_aegis128l_decrypt_detached(
        m, NULL, c, clen - 16, c + clen - 16, ad, adlen, npub, k);
}

int
crypto_aead_aegis128lt32_encrypt(unsigned char       *c,
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
    crypto_aead_aegis128lt32_encrypt_detached(c, c + mlen, NULL, m, mlen, ad, adlen, NULL, npub, k);
    if (clen_p != NULL) {
        *clen_p = mlen + 32;
    }
}

int
crypto_aead_aegis128lt32_decrypt(unsigned char       *m,
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
        *mlen_p = clen - 32;
    }
    return crypto_aead_aegis128lt32_decrypt_detached(
        m, NULL, c, clen - 32, c + clen - 32, ad, adlen, npub, k);
}
