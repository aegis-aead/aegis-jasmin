	.att_syntax
	.text
	.p2align	5
	.global	_aegis256x2_decrypt
	.global	_aegis256x2_encrypt
	.type	_aegis256x2_decrypt, %function
_aegis256x2_decrypt:
	movq	%rsp, %r11
	leaq	-96(%rsp), %rsp
	andq	$-32, %rsp
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 64(%rsp)
// declassify_val u64 64(%rsp)
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 72(%rsp)
// declassify_val u64 72(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	16(%r9), %ymm1
	vbroadcasti128	(%rdi), %ymm2
// declassify_val u256 %ymm2
	vbroadcasti128	16(%rdi), %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm0, %ymm2
	vpxor	%ymm3, %ymm1, %ymm3
	vpxor	glob_data + 64(%rip), %ymm0, %ymm7
	vpxor	glob_data + 32(%rip), %ymm1, %ymm8
	vmovdqu	%ymm2, %ymm4
	vmovdqu	%ymm3, %ymm5
	vmovdqu	glob_data + 32(%rip), %ymm6
	vmovdqu	glob_data + 64(%rip), %ymm9
	vmovdqu	%ymm7, %ymm10
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm8, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm10, %ymm7
	vaesenc	%ymm10, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm0, %ymm0
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vpxor	glob_data + 0(%rip), %ymm0, %ymm0
	vpxor	glob_data + 0(%rip), %ymm1, %ymm1
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	vpxor	glob_data + 0(%rip), %ymm0, %ymm0
	vpxor	glob_data + 0(%rip), %ymm7, %ymm1
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	movq	72(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_decrypt$16
	.p2align	5
.L_aegis256x2_decrypt$17:
	vmovdqu	(%r8,%r9), %ymm1
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	addq	$32, %r9
.L_aegis256x2_decrypt$16:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_decrypt$17
	movq	72(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_decrypt$13
	addq	%r9, %r8
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_decrypt$14
.L_aegis256x2_decrypt$15:
	movb	(%r8,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256x2_decrypt$14:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_decrypt$15
	vmovdqu	(%rsp), %ymm1
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
.L_aegis256x2_decrypt$13:
	movq	64(%rsp), %rdi
	andq	$-64, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_decrypt$11
	.p2align	5
.L_aegis256x2_decrypt$12:
	vmovdqu	(%rax,%r9), %ymm12
// declassify_val u256 %ymm12
	vpxor	%ymm8, %ymm5, %ymm1
	vpand	%ymm0, %ymm6, %ymm2
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vpxor	%ymm1, %ymm12, %ymm2
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vmovdqu	%ymm2, (%rsi,%r9)
	vmovdqu	32(%rax,%r9), %ymm12
// declassify_val u256 %ymm12
	vpxor	%ymm8, %ymm5, %ymm2
	vpand	%ymm0, %ymm6, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm1, %ymm2, %ymm2
	vpxor	%ymm2, %ymm12, %ymm2
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	vmovdqu	%ymm2, 32(%rsi,%r9)
	addq	$64, %r9
.L_aegis256x2_decrypt$11:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_decrypt$12
	movq	64(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$32, %rdi
	jbe 	.L_aegis256x2_decrypt$10
	vmovdqu	(%rax,%r9), %ymm12
// declassify_val u256 %ymm12
	vpxor	%ymm8, %ymm5, %ymm1
	vpand	%ymm0, %ymm6, %ymm2
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm1, %ymm12, %ymm1
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vmovdqu	%ymm1, (%rsi,%r9)
	addq	$-32, %rdi
	addq	$32, %r9
.L_aegis256x2_decrypt$10:
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_decrypt$8
.L_aegis256x2_decrypt$9:
	movb	(%rax,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256x2_decrypt$8:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_decrypt$9
	vmovdqu	(%rsp), %ymm12
// declassify_val u256 %ymm12
	vpxor	%ymm8, %ymm5, %ymm1
	vpand	%ymm0, %ymm6, %ymm2
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm1, %ymm1
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm1, %ymm12, %ymm1
	vmovdqu	%ymm1, 32(%rsp)
	movq	%rdi, %r9
	jmp 	.L_aegis256x2_decrypt$6
.L_aegis256x2_decrypt$7:
	movb	$0, 32(%rsp,%r9)
	incq	%r9
.L_aegis256x2_decrypt$6:
	cmpq	$32, %r9
	jb  	.L_aegis256x2_decrypt$7
	vmovdqu	32(%rsp), %ymm2
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vmovdqu	%ymm1, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_decrypt$4
.L_aegis256x2_decrypt$5:
	movb	(%rsp,%r9), %r10b
	movb	%r10b, (%rsi,%r9)
	incq	%r9
.L_aegis256x2_decrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_decrypt$5
.L_aegis256x2_decrypt$3:
	movq	72(%rsp), %rax
	movq	64(%rsp), %rsi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rax, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm0, %ymm1
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm2
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm2, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm2, %ymm4
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm2
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm2, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm2, %ymm4
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm2
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm2, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm2, %ymm4
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	cmpb	$16, %dl
	je  	.L_aegis256x2_decrypt$1
	vpxor	%ymm5, %ymm4, %ymm2
	vpxor	%ymm8, %ymm0, %ymm0
	vpxor	%ymm6, %ymm2, %ymm2
	vpxor	%ymm1, %ymm0, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vextracti128	$1, %ymm0, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm3
	vmovdqu	(%rcx), %xmm0
	vmovdqu	16(%rcx), %xmm2
	vpcmpeqq	%xmm1, %xmm0, %xmm0
	vpcmpeqq	%xmm3, %xmm2, %xmm2
	vpand	%xmm2, %xmm0, %xmm0
	vpmovmskb	%xmm0, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis256x2_decrypt$2
.L_aegis256x2_decrypt$1:
	vpxor	%ymm5, %ymm4, %ymm2
	vpxor	%ymm6, %ymm2, %ymm2
	vpxor	%ymm0, %ymm2, %ymm2
	vpxor	%ymm8, %ymm2, %ymm2
	vpxor	%ymm1, %ymm2, %ymm2
	vextracti128	$1, %ymm2, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	(%rcx), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis256x2_decrypt$2:
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-32, %rsp
	subq	$96, %rsp
	vmovdqu	%xmm2, 80(%rsp)
	vmovdqu	%xmm2, 64(%rsp)
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis256x2_encrypt, %function
_aegis256x2_encrypt:
	movq	%rsp, %r11
	leaq	-64(%rsp), %rsp
	andq	$-32, %rsp
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	40(%rdi), %r9
	movq	%r9, 32(%rsp)
// declassify_val u64 32(%rsp)
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 40(%rsp)
// declassify_val u64 40(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	16(%r9), %ymm1
	vbroadcasti128	(%rdi), %ymm2
// declassify_val u256 %ymm2
	vbroadcasti128	16(%rdi), %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm0, %ymm2
	vpxor	%ymm3, %ymm1, %ymm3
	vpxor	glob_data + 64(%rip), %ymm0, %ymm7
	vpxor	glob_data + 32(%rip), %ymm1, %ymm8
	vmovdqu	%ymm2, %ymm4
	vmovdqu	%ymm3, %ymm5
	vmovdqu	glob_data + 32(%rip), %ymm6
	vmovdqu	glob_data + 64(%rip), %ymm9
	vmovdqu	%ymm7, %ymm10
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm8, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm10, %ymm7
	vaesenc	%ymm10, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vmovdqu	%ymm7, %ymm11
	vpxor	%ymm0, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vpxor	glob_data + 0(%rip), %ymm0, %ymm0
	vpxor	glob_data + 0(%rip), %ymm7, %ymm7
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vpxor	glob_data + 0(%rip), %ymm0, %ymm0
	vpxor	glob_data + 0(%rip), %ymm1, %ymm1
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm2
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	vpxor	glob_data + 0(%rip), %ymm0, %ymm0
	vpxor	glob_data + 0(%rip), %ymm2, %ymm1
	vmovdqu	%ymm1, %ymm2
	vpxor	%ymm3, %ymm4, %ymm12
	vaesenc	%ymm2, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm2, %ymm4
	movq	40(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_encrypt$14
	.p2align	5
.L_aegis256x2_encrypt$15:
	vmovdqu	(%r8,%r9), %ymm2
	vmovdqu	%ymm1, %ymm7
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	addq	$32, %r9
.L_aegis256x2_encrypt$14:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_encrypt$15
	movq	40(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_encrypt$11
	addq	%r9, %r8
	vpxor	%ymm2, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_encrypt$12
.L_aegis256x2_encrypt$13:
	movb	(%r8,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256x2_encrypt$12:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_encrypt$13
	vmovdqu	(%rsp), %ymm2
	vmovdqu	%ymm1, %ymm7
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
.L_aegis256x2_encrypt$11:
	movq	32(%rsp), %rdi
	andq	$-64, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_encrypt$9
	.p2align	5
.L_aegis256x2_encrypt$10:
	vmovdqu	(%rsi,%r9), %ymm2
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm7
	vpxor	%ymm7, %ymm3, %ymm3
	vpxor	%ymm1, %ymm3, %ymm3
	vpxor	%ymm3, %ymm2, %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	vmovdqu	%ymm3, (%rax,%r9)
	vmovdqu	32(%rsi,%r9), %ymm1
	vpxor	%ymm8, %ymm5, %ymm2
	vpand	%ymm0, %ymm6, %ymm3
	vpxor	%ymm3, %ymm2, %ymm2
	vpxor	%ymm7, %ymm2, %ymm2
	vpxor	%ymm2, %ymm1, %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm1, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vmovdqu	%ymm3, 32(%rax,%r9)
	addq	$64, %r9
.L_aegis256x2_encrypt$9:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_encrypt$10
	movq	32(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$32, %rdi
	jb  	.L_aegis256x2_encrypt$8
	vmovdqu	(%rsi,%r9), %ymm2
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm7
	vmovdqu	%ymm1, %ymm11
	vpxor	%ymm7, %ymm3, %ymm1
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm1, %ymm2, %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vmovdqu	%ymm3, (%rax,%r9)
	addq	$-32, %rdi
	addq	$32, %r9
.L_aegis256x2_encrypt$8:
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%ymm2, %ymm2, %ymm2
	vmovdqu	%ymm2, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_encrypt$6
.L_aegis256x2_encrypt$7:
	movb	(%rsi,%r9), %r10b
	movb	%r10b, (%rsp,%r9)
	incq	%r9
.L_aegis256x2_encrypt$6:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_encrypt$7
	vmovdqu	(%rsp), %ymm2
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm7
	vmovdqu	%ymm1, %ymm11
	vpxor	%ymm7, %ymm3, %ymm1
	vpxor	%ymm11, %ymm1, %ymm1
	vpxor	%ymm1, %ymm2, %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm11, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm11, %ymm4
	vmovdqu	%ymm3, (%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_encrypt$4
.L_aegis256x2_encrypt$5:
	movb	(%rsp,%r9), %r10b
	movb	%r10b, (%rax,%r9)
	incq	%r9
.L_aegis256x2_encrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis256x2_encrypt$5
.L_aegis256x2_encrypt$3:
	movq	40(%rsp), %rax
	movq	32(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rax, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm0, %ymm2
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm1, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm1, %ymm4
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	vmovdqu	%ymm1, %ymm7
	vpxor	%ymm2, %ymm4, %ymm12
	vaesenc	%ymm7, %ymm8, %ymm1
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vaesenc	%ymm12, %ymm7, %ymm4
	cmpb	$16, %dl
	je  	.L_aegis256x2_encrypt$1
	vpxor	%ymm5, %ymm4, %ymm2
	vpxor	%ymm8, %ymm0, %ymm0
	vpxor	%ymm6, %ymm2, %ymm2
	vpxor	%ymm1, %ymm0, %ymm0
	vextracti128	$1, %ymm2, %xmm1
	vextracti128	$1, %ymm0, %xmm3
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm0, %xmm3, %xmm3
	vmovdqu	%xmm1, (%rcx)
	vmovdqu	%xmm3, 16(%rcx)
	jmp 	.L_aegis256x2_encrypt$2
.L_aegis256x2_encrypt$1:
	vpxor	%ymm5, %ymm4, %ymm2
	vpxor	%ymm6, %ymm2, %ymm2
	vpxor	%ymm0, %ymm2, %ymm2
	vpxor	%ymm8, %ymm2, %ymm2
	vpxor	%ymm1, %ymm2, %ymm2
	vextracti128	$1, %ymm2, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
.L_aegis256x2_encrypt$2:
	movq	%rdi, %rax
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-32, %rsp
	subq	$64, %rsp
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.data
	.p2align	5
glob_data:
G$ctx:
	.byte	  0,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
	.byte	  1,   1,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
G$c1:
	.byte	219,  61,  24,  85, 109, 194,  47, 241,  32,  17,  49,  66, 115, 181,  40, 221
	.byte	219,  61,  24,  85, 109, 194,  47, 241,  32,  17,  49,  66, 115, 181,  40, 221
G$c0:
	.byte	  0,   1,   1,   2,   3,   5,   8,  13,  21,  34,  55,  89, 144, 233, 121,  98
	.byte	  0,   1,   1,   2,   3,   5,   8,  13,  21,  34,  55,  89, 144, 233, 121,  98
	.ident	"Jasmin Compiler 2026.09.0"
	.section	".note.GNU-stack", "", %progbits
