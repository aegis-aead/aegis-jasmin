# AEGIS implementation in Jasmin

An implementation of the [AEGIS-128L, AEGIS-128X2, AEGIS-256, and AEGIS-256X2](https://cfrg.github.io/draft-irtf-cfrg-aegis-aead/draft-irtf-cfrg-aegis-aead.html) ciphers for x86_64 CPUs with AESNI in the [Jasmin](https://github.com/jasmin-lang/jasmin) programming language.

![Throughput in Gb/s for 1 MiB inputs. Jasmin beats libaegis on AEGIS-128L, AEGIS-128X2, AEGIS-256 and AEGIS-256X2, by 7 to 8% for decryption and 16 to 30% for encryption, associated data and AEGIS-MAC.](.media/throughput.svg)
