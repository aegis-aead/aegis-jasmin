all: tests

tests: test128l test128x2 test256 test256x2

asm: src/aegis128l/aegis128l.s src/aegis128x2/aegis128x2.s src/aegis256/aegis256.s src/aegis256x2/aegis256x2.s

src/aegis128l/aegis128l.o: src/aegis128l/aegis128l.s
	$(AS) -o src/aegis128l/aegis128l.o src/aegis128l/aegis128l.s

src/aegis128l/aegis128l.s: src/aegis128l/aegis128l.jazz
	jasmin-ct src/aegis128l/aegis128l.jazz && jasminc -stack-zero unrolled -stack-zero-size u128 -o src/aegis128l/aegis128l.s src/aegis128l/aegis128l.jazz

src/aegis128l/crypto_aead_aegis128l.o: src/aegis128l/crypto_aead_aegis128l.c src/aegis128l/crypto_aead_aegis128l.h
	$(CC) -O2 -c -o src/aegis128l/crypto_aead_aegis128l.o src/aegis128l/crypto_aead_aegis128l.c

src/aegis128x2/aegis128x2.o: src/aegis128x2/aegis128x2.s
	$(AS) -o src/aegis128x2/aegis128x2.o src/aegis128x2/aegis128x2.s

src/aegis128x2/aegis128x2.s: src/aegis128x2/aegis128x2.jazz
	jasmin-ct src/aegis128x2/aegis128x2.jazz && jasminc -stack-zero unrolled -stack-zero-size u128 -o src/aegis128x2/aegis128x2.s src/aegis128x2/aegis128x2.jazz

src/aegis128x2/crypto_aead_aegis128x2.o: src/aegis128x2/crypto_aead_aegis128x2.c src/aegis128x2/crypto_aead_aegis128x2.h
	$(CC) -O2 -c -o src/aegis128x2/crypto_aead_aegis128x2.o src/aegis128x2/crypto_aead_aegis128x2.c

src/aegis256/aegis256.o: src/aegis256/aegis256.s
	$(AS) -o src/aegis256/aegis256.o src/aegis256/aegis256.s

src/aegis256x2/aegis256x2.o: src/aegis256x2/aegis256x2.s
	$(AS) -o src/aegis256x2/aegis256x2.o src/aegis256x2/aegis256x2.s

src/aegis256/aegis256.s: src/aegis256/aegis256.jazz
	jasmin-ct src/aegis256/aegis256.jazz && jasminc -stack-zero unrolled -stack-zero-size u128 -o src/aegis256/aegis256.s src/aegis256/aegis256.jazz

src/aegis256x2/aegis256x2.s: src/aegis256x2/aegis256x2.jazz
	jasmin-ct src/aegis256x2/aegis256x2.jazz && jasminc -stack-zero unrolled -stack-zero-size u128 -o src/aegis256x2/aegis256x2.s src/aegis256x2/aegis256x2.jazz

src/aegis256/crypto_aead_aegis256.o: src/aegis256/crypto_aead_aegis256.c src/aegis256/crypto_aead_aegis256.h
	$(CC) -O2 -c -o src/aegis256/crypto_aead_aegis256.o src/aegis256/crypto_aead_aegis256.c

src/aegis256x2/crypto_aead_aegis256x2.o: src/aegis256x2/crypto_aead_aegis256x2.c src/aegis256x2/crypto_aead_aegis256x2.h
	$(CC) -O2 -c -o src/aegis256x2/crypto_aead_aegis256x2.o src/aegis256x2/crypto_aead_aegis256x2.c

test128l: src/aegis128l/aegis128l.o src/aegis128l/crypto_aead_aegis128l.o src/aegis128l/test128l.c
	$(CC) -O2 -o test128l src/aegis128l/aegis128l.o src/aegis128l/crypto_aead_aegis128l.o src/aegis128l/test128l.c

test128x2: src/aegis128x2/aegis128x2.o src/aegis128x2/crypto_aead_aegis128x2.o src/aegis128x2/test128x2.c
	$(CC) -O2 -o test128x2 src/aegis128x2/aegis128x2.o src/aegis128x2/crypto_aead_aegis128x2.o src/aegis128x2/test128x2.c

test256: src/aegis256/aegis256.o src/aegis256/crypto_aead_aegis256.o src/aegis256/test256.c
	$(CC) -O2 -o test256 src/aegis256/aegis256.o src/aegis256/crypto_aead_aegis256.o src/aegis256/test256.c

test256x2: src/aegis256x2/aegis256x2.o src/aegis256x2/crypto_aead_aegis256x2.o src/aegis256x2/test256x2.c
	$(CC) -O2 -o test256x2 src/aegis256x2/aegis256x2.o src/aegis256x2/crypto_aead_aegis256x2.o src/aegis256x2/test256x2.c

asmclean:
	rm -f src/*/*.s

clean:
	rm -f src/*/*.o test128l test128x2 test256 test256x2

distclean: clean asmclean
