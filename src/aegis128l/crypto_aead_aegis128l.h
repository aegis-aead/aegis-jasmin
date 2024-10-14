#ifndef crypto_aead_aegis128l_H
#define crypto_aead_aegis128l_H

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

#define crypto_aead_aegis128l_KEYBYTES  16U
#define crypto_aead_aegis128l_NSECBYTES 0U
#define crypto_aead_aegis128l_NPUBBYTES 16U
#define crypto_aead_aegis128l_ABYTES    16U

int crypto_aead_aegis128l_encrypt(unsigned char       *c,
                                  unsigned long long  *clen_p,
                                  const unsigned char *m,
                                  unsigned long long   mlen,
                                  const unsigned char *ad,
                                  unsigned long long   adlen,
                                  const unsigned char *nsec,
                                  const unsigned char *npub,
                                  const unsigned char *k) __attribute__((nonnull(1, 8, 9)));

int crypto_aead_aegis128l_decrypt(unsigned char       *m,
                                  unsigned long long  *mlen_p,
                                  unsigned char       *nsec,
                                  const unsigned char *c,
                                  unsigned long long   clen,
                                  const unsigned char *ad,
                                  unsigned long long   adlen,
                                  const unsigned char *npub,
                                  const unsigned char *k) __attribute__((warn_unused_result))
__attribute__((nonnull(4, 8, 9)));

int crypto_aead_aegis128l_encrypt_detached(unsigned char       *c,
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

int crypto_aead_aegis128l_decrypt_detached(unsigned char       *m,
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

#define crypto_aead_aegis128lt32_KEYBYTES  16U
#define crypto_aead_aegis128lt32_NSECBYTES 0U
#define crypto_aead_aegis128lt32_NPUBBYTES 16U
#define crypto_aead_aegis128lt32_ABYTES    32U

int crypto_aead_aegis128lt32_encrypt(unsigned char       *c,
                                     unsigned long long  *clen_p,
                                     const unsigned char *m,
                                     unsigned long long   mlen,
                                     const unsigned char *ad,
                                     unsigned long long   adlen,
                                     const unsigned char *nsec,
                                     const unsigned char *npub,
                                     const unsigned char *k) __attribute__((nonnull(1, 8, 9)));

int crypto_aead_aegis128lt32_decrypt(unsigned char       *m,
                                     unsigned long long  *mlen_p,
                                     unsigned char       *nsec,
                                     const unsigned char *c,
                                     unsigned long long   clen,
                                     const unsigned char *ad,
                                     unsigned long long   adlen,
                                     const unsigned char *npub,
                                     const unsigned char *k) __attribute__((warn_unused_result))
__attribute__((nonnull(4, 8, 9)));

int crypto_aead_aegis128lt32_encrypt_detached(unsigned char       *c,
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

int crypto_aead_aegis128lt32_decrypt_detached(unsigned char       *m,
                                              unsigned char       *nsec,
                                              const unsigned char *c,
                                              unsigned long long   clen,
                                              const unsigned char *mac,
                                              const unsigned char *ad,
                                              unsigned long long   adlen,
                                              const unsigned char *npub,
                                              const unsigned char *k)
    __attribute__((warn_unused_result)) __attribute__((nonnull(3, 5, 8, 9)));

#ifdef __cplusplus
}
#endif

#endif
