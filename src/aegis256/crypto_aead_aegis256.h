#ifndef crypto_aead_aegis256_H
#define crypto_aead_aegis256_H

#include <stddef.h>

#if !defined(__clang__) && !defined(__GNUC__)
#    ifdef __attribute__
#        undef __attribute__
#    endif
#    define __attribute__(a)
#endif

#ifdef __cplusplus
#    ifdef __GNUC__
#        pragma GCC diagnostic ignored "-Wlong-long"
#    endif
extern "C" {
#endif

// AEGIS with a 16-bit mac.

#define crypto_aead_aegis256_KEYBYTES  32U
#define crypto_aead_aegis256_NSECBYTES 0U
#define crypto_aead_aegis256_NPUBBYTES 32U
#define crypto_aead_aegis256_ABYTES    16U

int crypto_aead_aegis256_encrypt(unsigned char       *c,
                                 unsigned long long  *clen_p,
                                 const unsigned char *m,
                                 unsigned long long   mlen,
                                 const unsigned char *ad,
                                 unsigned long long   adlen,
                                 const unsigned char *nsec,
                                 const unsigned char *npub,
                                 const unsigned char *k) __attribute__((nonnull(1, 8, 9)));

int crypto_aead_aegis256_decrypt(unsigned char       *m,
                                 unsigned long long  *mlen_p,
                                 unsigned char       *nsec,
                                 const unsigned char *c,
                                 unsigned long long   clen,
                                 const unsigned char *ad,
                                 unsigned long long   adlen,
                                 const unsigned char *npub,
                                 const unsigned char *k) __attribute__((warn_unused_result))
__attribute__((nonnull(4, 8, 9)));

int crypto_aead_aegis256_encrypt_detached(unsigned char       *c,
                                          unsigned char       *mac,
                                          unsigned long long  *maclen_p,
                                          const unsigned char *m,
                                          unsigned long long   mlen,
                                          const unsigned char *ad,
                                          unsigned long long   adlen,
                                          const unsigned char *nsec,
                                          const unsigned char *npub,
                                          const unsigned char *k)
    __attribute__((nonnull(1, 2, 9, 10)));

int crypto_aead_aegis256_decrypt_detached(unsigned char       *m,
                                          unsigned char       *nsec,
                                          const unsigned char *c,
                                          unsigned long long   clen,
                                          const unsigned char *mac,
                                          const unsigned char *ad,
                                          unsigned long long   adlen,
                                          const unsigned char *npub,
                                          const unsigned char *k)
    __attribute__((warn_unused_result)) __attribute__((nonnull(3, 5, 8, 9)));

// AEGIS with a 32-bit mac.

#define crypto_aead_aegis256t32_KEYBYTES  32U
#define crypto_aead_aegis256t32_NSECBYTES 0U
#define crypto_aead_aegis256t32_NPUBBYTES 32U
#define crypto_aead_aegis256t32_ABYTES    32U

int crypto_aead_aegis256t32_encrypt(unsigned char       *c,
                                    unsigned long long  *clen_p,
                                    const unsigned char *m,
                                    unsigned long long   mlen,
                                    const unsigned char *ad,
                                    unsigned long long   adlen,
                                    const unsigned char *nsec,
                                    const unsigned char *npub,
                                    const unsigned char *k) __attribute__((nonnull(1, 8, 9)));

int crypto_aead_aegis256t32_decrypt(unsigned char       *m,
                                    unsigned long long  *mlen_p,
                                    unsigned char       *nsec,
                                    const unsigned char *c,
                                    unsigned long long   clen,
                                    const unsigned char *ad,
                                    unsigned long long   adlen,
                                    const unsigned char *npub,
                                    const unsigned char *k) __attribute__((warn_unused_result))
__attribute__((nonnull(4, 8, 9)));

int crypto_aead_aegis256t32_encrypt_detached(unsigned char       *c,
                                             unsigned char       *mac,
                                             unsigned long long  *maclen_p,
                                             const unsigned char *m,
                                             unsigned long long   mlen,
                                             const unsigned char *ad,
                                             unsigned long long   adlen,
                                             const unsigned char *nsec,
                                             const unsigned char *npub,
                                             const unsigned char *k)
    __attribute__((nonnull(1, 2, 9, 10)));

int crypto_aead_aegis256t32_decrypt_detached(unsigned char       *m,
                                             unsigned char       *nsec,
                                             const unsigned char *c,
                                             unsigned long long   clen,
                                             const unsigned char *mac,
                                             const unsigned char *ad,
                                             unsigned long long   adlen,
                                             const unsigned char *npub,
                                             const unsigned char *k)
    __attribute__((warn_unused_result)) __attribute__((nonnull(3, 5, 8, 9)));

// AEGISMAC

int crypto_aead_aegis256_mac(unsigned char       *mac,
                             const unsigned char *m,
                             unsigned long long   mlen,
                             const unsigned char *npub,
                             const unsigned char *k)
    __attribute__((nonnull(1, 4, 5)));

int crypto_aead_aegis256_mac_verify(const unsigned char *mac,
                                    const unsigned char *m,
                                    unsigned long long   mlen,
                                    const unsigned char *npub,
                                    const unsigned char *k)
    __attribute__((warn_unused_result)) __attribute__((nonnull(1, 4, 5)));

int crypto_aead_aegis256t32_mac(unsigned char       *mac,
                                const unsigned char *m,
                                unsigned long long   mlen,
                                const unsigned char *npub,
                                const unsigned char *k)
    __attribute__((nonnull(1, 4, 5)));

int crypto_aead_aegis256t32_mac_verify(const unsigned char *mac,
                                       const unsigned char *m,
                                       unsigned long long   mlen,
                                       const unsigned char *npub,
                                       const unsigned char *k)
    __attribute__((warn_unused_result)) __attribute__((nonnull(1, 4, 5)));

#ifdef __cplusplus
}
#endif

#endif
