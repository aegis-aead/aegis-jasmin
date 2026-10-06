	.att_syntax
	.text
	.p2align	5
	.global	_aegis256_decrypt
	.global	_aegis256_encrypt
	.type	_aegis256_decrypt, %function
_aegis256_decrypt:
	movq	%rsp, %r11
	leaq	-48(%rsp), %rsp
	andq	$-16, %rsp
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 32(%rsp)
// declassify_val u64 32(%rsp)
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 40(%rsp)
// declassify_val u64 40(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%r9), %xmm0
	vmovdqu	16(%r9), %xmm1
	vmovdqu	(%rdi), %xmm2
// declassify_val u128 %xmm2
	vmovdqu	16(%rdi), %xmm3
// declassify_val u128 %xmm3
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	glob_data + 16(%rip), %xmm0, %xmm7
	vpxor	glob_data + 0(%rip), %xmm1, %xmm8
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm5
	vmovdqu	glob_data + 0(%rip), %xmm6
	vmovdqu	glob_data + 16(%rip), %xmm9
	vmovdqu	%xmm7, %xmm10
	vmovdqu	%xmm8, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm10, %xmm7
	vaesenc	%xmm10, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	movq	40(%rsp), %rdi
	andq	$-16, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_decrypt$16
	.p2align	5
.L_aegis256_decrypt$17:
	vmovdqu	(%r8,%r9), %xmm0
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	addq	$16, %r9
.L_aegis256_decrypt$16:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_decrypt$17
	movq	40(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis256_decrypt$13
	addq	%r9, %r8
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_decrypt$14
.L_aegis256_decrypt$15:
	movb	(%r8,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256_decrypt$14:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_decrypt$15
	vmovdqu	(%rsp), %xmm0
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
.L_aegis256_decrypt$13:
	movq	32(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_decrypt$11
	.p2align	5
.L_aegis256_decrypt$12:
	vmovdqu	(%rax,%r9), %xmm12
// declassify_val u128 %xmm12
	vpxor	%xmm8, %xmm5, %xmm0
	vpand	%xmm9, %xmm6, %xmm1
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm1
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vmovdqu	%xmm1, (%rsi,%r9)
	vmovdqu	16(%rax,%r9), %xmm12
// declassify_val u128 %xmm12
	vpxor	%xmm8, %xmm5, %xmm1
	vpand	%xmm9, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	vpxor	%xmm1, %xmm12, %xmm1
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	vmovdqu	%xmm1, 16(%rsi,%r9)
	addq	$32, %r9
.L_aegis256_decrypt$11:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_decrypt$12
	movq	32(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$16, %rdi
	jbe 	.L_aegis256_decrypt$10
	vmovdqu	(%rax,%r9), %xmm12
// declassify_val u128 %xmm12
	vpxor	%xmm8, %xmm5, %xmm0
	vpand	%xmm9, %xmm6, %xmm1
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm11, %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm0
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm0, (%rsi,%r9)
	addq	$-16, %rdi
	addq	$16, %r9
.L_aegis256_decrypt$10:
	cmpq	$0, %rdi
	jbe 	.L_aegis256_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_decrypt$8
.L_aegis256_decrypt$9:
	movb	(%rax,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256_decrypt$8:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_decrypt$9
	vmovdqu	(%rsp), %xmm12
// declassify_val u128 %xmm12
	vpxor	%xmm8, %xmm5, %xmm0
	vpand	%xmm9, %xmm6, %xmm1
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm0, %xmm0
	vpxor	%xmm11, %xmm0, %xmm0
	vpxor	%xmm0, %xmm12, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	movq	%rdi, %r9
	jmp 	.L_aegis256_decrypt$6
.L_aegis256_decrypt$7:
	movb	$0, 16(%rsp,%r9)
	incq	%r9
.L_aegis256_decrypt$6:
	cmpq	$16, %r9
	jb  	.L_aegis256_decrypt$7
	vmovdqu	16(%rsp), %xmm1
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_decrypt$4
.L_aegis256_decrypt$5:
	movb	(%rsp,%r9), %r10b
	movb	%r10b, (%rsi,%r9)
	incq	%r9
.L_aegis256_decrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_decrypt$5
.L_aegis256_decrypt$3:
	movq	40(%rsp), %rax
	movq	32(%rsp), %rsi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	vpxor	(%rsp), %xmm9, %xmm0
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm1
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm1, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm1, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm1
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm1, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm1, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm1
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm1, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm1, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	cmpb	$16, %dl
	je  	.L_aegis256_decrypt$1
	vpxor	%xmm5, %xmm4, %xmm1
	vpxor	%xmm8, %xmm9, %xmm2
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqu	(%rcx), %xmm0
	vmovdqu	16(%rcx), %xmm3
	vpcmpeqq	%xmm1, %xmm0, %xmm0
	vpcmpeqq	%xmm2, %xmm3, %xmm3
	vpand	%xmm3, %xmm0, %xmm0
	vpmovmskb	%xmm0, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis256_decrypt$2
.L_aegis256_decrypt$1:
	vpxor	%xmm5, %xmm4, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm9, %xmm1, %xmm1
	vpxor	%xmm8, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	vmovdqu	(%rcx), %xmm0
	vpcmpeqq	%xmm1, %xmm0, %xmm0
	vpmovmskb	%xmm0, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis256_decrypt$2:
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$48, %rsp
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis256_encrypt, %function
_aegis256_encrypt:
	movq	%rsp, %r11
	leaq	-32(%rsp), %rsp
	andq	$-16, %rsp
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	40(%rdi), %r9
	movq	%r9, 16(%rsp)
// declassify_val u64 16(%rsp)
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 24(%rsp)
// declassify_val u64 24(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%r9), %xmm0
	vmovdqu	16(%r9), %xmm1
	vmovdqu	(%rdi), %xmm2
// declassify_val u128 %xmm2
	vmovdqu	16(%rdi), %xmm3
// declassify_val u128 %xmm3
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	glob_data + 16(%rip), %xmm0, %xmm7
	vpxor	glob_data + 0(%rip), %xmm1, %xmm8
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm5
	vmovdqu	glob_data + 0(%rip), %xmm6
	vmovdqu	glob_data + 16(%rip), %xmm9
	vmovdqu	%xmm7, %xmm10
	vmovdqu	%xmm8, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm10, %xmm7
	vaesenc	%xmm10, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vmovdqu	%xmm7, %xmm11
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm11, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm11, %xmm4
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm1
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	vpxor	%xmm2, %xmm4, %xmm12
	vaesenc	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm1, %xmm4
	vmovdqu	%xmm0, %xmm1
	vpxor	%xmm3, %xmm4, %xmm12
	vaesenc	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm1, %xmm4
	movq	24(%rsp), %rdi
	andq	$-16, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_encrypt$14
	.p2align	5
.L_aegis256_encrypt$15:
	vmovdqu	(%r8,%r9), %xmm1
	vmovdqu	%xmm0, %xmm7
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	addq	$16, %r9
.L_aegis256_encrypt$14:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_encrypt$15
	movq	24(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis256_encrypt$11
	addq	%r9, %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%xmm1, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_encrypt$12
.L_aegis256_encrypt$13:
	movb	(%r8,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256_encrypt$12:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_encrypt$13
	vmovdqu	(%rsp), %xmm1
	vmovdqu	%xmm0, %xmm7
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
.L_aegis256_encrypt$11:
	movq	16(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_encrypt$9
	.p2align	5
.L_aegis256_encrypt$10:
	vmovdqu	(%rsi,%r9), %xmm1
	vpxor	%xmm8, %xmm5, %xmm2
	vpand	%xmm9, %xmm6, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm0, %xmm2, %xmm2
	vpxor	%xmm2, %xmm1, %xmm2
// declassify_val u128 %xmm2
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	vmovdqu	%xmm2, (%rax,%r9)
	vmovdqu	16(%rsi,%r9), %xmm0
	vpxor	%xmm8, %xmm5, %xmm1
	vpand	%xmm9, %xmm6, %xmm2
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm7, %xmm1, %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
// declassify_val u128 %xmm2
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vmovdqu	%xmm2, 16(%rax,%r9)
	addq	$32, %r9
.L_aegis256_encrypt$9:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_encrypt$10
	movq	16(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$16, %rdi
	jb  	.L_aegis256_encrypt$8
	vmovdqu	(%rsi,%r9), %xmm1
	vpxor	%xmm8, %xmm5, %xmm2
	vpand	%xmm9, %xmm6, %xmm3
	vmovdqu	%xmm0, %xmm7
	vpxor	%xmm3, %xmm2, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
// declassify_val u128 %xmm2
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vmovdqu	%xmm2, (%rax,%r9)
	addq	$-16, %rdi
	addq	$16, %r9
.L_aegis256_encrypt$8:
	cmpq	$0, %rdi
	jbe 	.L_aegis256_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%xmm1, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_encrypt$6
.L_aegis256_encrypt$7:
	movb	(%rsi,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256_encrypt$6:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_encrypt$7
	vmovdqu	(%rsp), %xmm1
	vpxor	%xmm8, %xmm5, %xmm2
	vpand	%xmm9, %xmm6, %xmm3
	vmovdqu	%xmm0, %xmm7
	vpxor	%xmm3, %xmm2, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm0, %xmm1, %xmm2
// declassify_val u128 %xmm2
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vmovdqu	%xmm2, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_encrypt$4
.L_aegis256_encrypt$5:
	movb	(%rsp,%r9), %r10b
	movb	%r10b, (%rax,%r9)
	incq	%r9
.L_aegis256_encrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis256_encrypt$5
.L_aegis256_encrypt$3:
	movq	24(%rsp), %rax
	movq	16(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	vpxor	(%rsp), %xmm9, %xmm1
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm0, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm0, %xmm4
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	vmovdqu	%xmm0, %xmm7
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm0
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm6, %xmm9
	vaesenc	%xmm6, %xmm5, %xmm6
	vaesenc	%xmm5, %xmm4, %xmm5
	vaesenc	%xmm12, %xmm7, %xmm4
	cmpb	$16, %dl
	je  	.L_aegis256_encrypt$1
	vpxor	%xmm5, %xmm4, %xmm1
	vpxor	%xmm8, %xmm9, %xmm2
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm0, %xmm2, %xmm2
	vmovdqu	%xmm1, (%rcx)
	vmovdqu	%xmm2, 16(%rcx)
	jmp 	.L_aegis256_encrypt$2
.L_aegis256_encrypt$1:
	vpxor	%xmm5, %xmm4, %xmm1
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm9, %xmm1, %xmm1
	vpxor	%xmm8, %xmm1, %xmm1
	vpxor	%xmm0, %xmm1, %xmm1
	vmovdqu	%xmm1, (%rcx)
.L_aegis256_encrypt$2:
	movq	%rdi, %rax
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$32, %rsp
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.data
	.p2align	5
glob_data:
G$c1:
	.byte	219,  61,  24,  85, 109, 194,  47, 241,  32,  17,  49,  66, 115, 181,  40, 221
G$c0:
	.byte	  0,   1,   1,   2,   3,   5,   8,  13,  21,  34,  55,  89, 144, 233, 121,  98
	.ident	"Jasmin Compiler 2026.09.0"
	.section	".note.GNU-stack", "", %progbits
