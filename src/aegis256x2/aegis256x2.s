	.att_syntax
	.text
	.p2align	5
	.global	_aegis256x2_mac_verify
	.global	_aegis256x2_mac
	.global	_aegis256x2_decrypt
	.global	_aegis256x2_encrypt
	.type	_aegis256x2_mac_verify, %function
_aegis256x2_mac_verify:
	movq	%rsp, %r10
	leaq	-64(%rsp), %rsp
	andq	$-32, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 32(%rsp)
// declassify_val u64 32(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%rsi), %ymm0
	vbroadcasti128	16(%rsi), %ymm1
	vbroadcasti128	(%rdi), %ymm2
// declassify_val u256 %ymm2
	vbroadcasti128	16(%rdi), %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm0, %ymm2
	vpxor	%ymm3, %ymm1, %ymm3
	vpxor	glob_data + 96(%rip), %ymm0, %ymm7
	vpxor	glob_data + 64(%rip), %ymm1, %ymm8
	vmovdqu	%ymm2, %ymm4
	vmovdqu	%ymm3, %ymm5
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm10
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm8, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm10, %ymm7
	vaesenc	%ymm10, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	movq	32(%rsp), %rsi
	andq	$-32, %rsi
	xorl	%r8d, %r8d
	jmp 	.L_aegis256x2_mac_verify$11
	.p2align	5
.L_aegis256x2_mac_verify$12:
	vmovdqu	(%rdx,%r8), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	addq	$32, %r8
.L_aegis256x2_mac_verify$11:
	cmpq	%rsi, %r8
	jb  	.L_aegis256x2_mac_verify$12
	movq	32(%rsp), %rdi
	subq	%r8, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_mac_verify$5
	addq	%r8, %rdx
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac_verify$10
	vmovdqu	(%rdx,%r8), %xmm1
	vmovdqu	%xmm1, (%rsp,%r8)
	addq	$16, %r8
.L_aegis256x2_mac_verify$10:
	movq	%rdi, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac_verify$9
	movq	(%rdx,%r8), %rsi
	movq	%rsi, (%rsp,%r8)
	addq	$8, %r8
.L_aegis256x2_mac_verify$9:
	movq	%rdi, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac_verify$8
	movl	(%rdx,%r8), %esi
	movl	%esi, (%rsp,%r8)
	addq	$4, %r8
.L_aegis256x2_mac_verify$8:
	movq	%rdi, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac_verify$7
	movw	(%rdx,%r8), %si
	movw	%si, (%rsp,%r8)
	addq	$2, %r8
.L_aegis256x2_mac_verify$7:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis256x2_mac_verify$6
	movb	(%rdx,%r8), %dl
	movb	%dl, (%rsp,%r8)
.L_aegis256x2_mac_verify$6:
	vmovdqu	(%rsp), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
.L_aegis256x2_mac_verify$5:
	movq	32(%rsp), %rdx
	movzbq	%cl, %rsi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm0, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	cmpb	$16, %cl
	je  	.L_aegis256x2_mac_verify$3
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm8, %ymm0, %ymm2
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm7, %ymm2, %ymm2
	vperm2i128	$129, %ymm1, %ymm1, %ymm1
	vperm2i128	$129, %ymm2, %ymm2, %ymm2
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vaesenc	%ymm2, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	jmp 	.L_aegis256x2_mac_verify$4
.L_aegis256x2_mac_verify$3:
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm1
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vperm2i128	$129, %ymm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
.L_aegis256x2_mac_verify$4:
	movq	$2, %rdx
	movq	%rdx, (%rsp)
	movq	%rsi, 8(%rsp)
	vpxor	(%rsp), %ymm0, %ymm1
	vperm2i128	$128, %ymm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	cmpb	$16, %cl
	je  	.L_aegis256x2_mac_verify$1
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm8, %ymm0, %ymm0
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm7, %ymm0, %ymm0
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm1, %xmm2, %xmm2
	vpcmpeqq	%xmm0, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis256x2_mac_verify$2
.L_aegis256x2_mac_verify$1:
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm1
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vmovdqu	(%rax), %xmm0
	vpcmpeqq	%xmm1, %xmm0, %xmm0
	vpmovmskb	%xmm0, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis256x2_mac_verify$2:
	movq	%r10, %rsp
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
	.type	_aegis256x2_mac, %function
_aegis256x2_mac:
	movq	%rsp, %r10
	leaq	-64(%rsp), %rsp
	andq	$-32, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 32(%rsp)
// declassify_val u64 32(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%rsi), %ymm0
	vbroadcasti128	16(%rsi), %ymm1
	vbroadcasti128	(%rdi), %ymm2
// declassify_val u256 %ymm2
	vbroadcasti128	16(%rdi), %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm0, %ymm2
	vpxor	%ymm3, %ymm1, %ymm3
	vpxor	glob_data + 96(%rip), %ymm0, %ymm7
	vpxor	glob_data + 64(%rip), %ymm1, %ymm8
	vmovdqu	%ymm2, %ymm4
	vmovdqu	%ymm3, %ymm5
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm10
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm8, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm10, %ymm7
	vaesenc	%ymm10, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	movq	32(%rsp), %rsi
	andq	$-32, %rsi
	xorl	%r8d, %r8d
	jmp 	.L_aegis256x2_mac$11
	.p2align	5
.L_aegis256x2_mac$12:
	vmovdqu	(%rdx,%r8), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	addq	$32, %r8
.L_aegis256x2_mac$11:
	cmpq	%rsi, %r8
	jb  	.L_aegis256x2_mac$12
	movq	32(%rsp), %rdi
	subq	%r8, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_mac$5
	addq	%r8, %rdx
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac$10
	vmovdqu	(%rdx,%r8), %xmm1
	vmovdqu	%xmm1, (%rsp,%r8)
	addq	$16, %r8
.L_aegis256x2_mac$10:
	movq	%rdi, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac$9
	movq	(%rdx,%r8), %rsi
	movq	%rsi, (%rsp,%r8)
	addq	$8, %r8
.L_aegis256x2_mac$9:
	movq	%rdi, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac$8
	movl	(%rdx,%r8), %esi
	movl	%esi, (%rsp,%r8)
	addq	$4, %r8
.L_aegis256x2_mac$8:
	movq	%rdi, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_mac$7
	movw	(%rdx,%r8), %si
	movw	%si, (%rsp,%r8)
	addq	$2, %r8
.L_aegis256x2_mac$7:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis256x2_mac$6
	movb	(%rdx,%r8), %dl
	movb	%dl, (%rsp,%r8)
.L_aegis256x2_mac$6:
	vmovdqu	(%rsp), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
.L_aegis256x2_mac$5:
	movq	32(%rsp), %rdx
	xorl	%esi, %esi
	movzbq	%cl, %rdi
	shlq	$3, %rdi
	shlq	$3, %rdx
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rdi, 24(%rsp)
	vpxor	(%rsp), %ymm0, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	cmpb	$16, %cl
	je  	.L_aegis256x2_mac$3
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm8, %ymm0, %ymm2
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm7, %ymm2, %ymm2
	vperm2i128	$129, %ymm1, %ymm1, %ymm1
	vperm2i128	$129, %ymm2, %ymm2, %ymm2
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vaesenc	%ymm2, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	jmp 	.L_aegis256x2_mac$4
.L_aegis256x2_mac$3:
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm1
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vperm2i128	$129, %ymm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
.L_aegis256x2_mac$4:
	movq	$2, %rdx
	movq	%rdx, (%rsp)
	movq	%rdi, 8(%rsp)
	vpxor	(%rsp), %ymm0, %ymm1
	vperm2i128	$128, %ymm1, %ymm1, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	cmpb	$16, %cl
	je  	.L_aegis256x2_mac$1
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm8, %ymm0, %ymm0
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm7, %ymm0, %ymm0
	vmovdqu	%xmm1, (%rax)
	vmovdqu	%xmm0, 16(%rax)
	jmp 	.L_aegis256x2_mac$2
.L_aegis256x2_mac$1:
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm1
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vmovdqu	%xmm1, (%rax)
.L_aegis256x2_mac$2:
	movq	%rsi, %rax
	movq	%r10, %rsp
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
	.type	_aegis256x2_decrypt, %function
_aegis256x2_decrypt:
	movq	%rsp, %r11
	leaq	-64(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rdi, %r8
	movq	(%r8), %rdx
// declassify_val u64 %rdx
	movq	8(%r8), %rsi
	movq	%rsi, 32(%rsp)
// declassify_val u64 32(%rsp)
	movq	16(%r8), %rax
// declassify_val u64 %rax
	movb	24(%r8), %cl
// declassify_val u8 %cl
	movq	32(%r8), %rsi
// declassify_val u64 %rsi
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 40(%rsp)
// declassify_val u64 40(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	16(%r9), %ymm1
	vbroadcasti128	(%r8), %ymm2
// declassify_val u256 %ymm2
	vbroadcasti128	16(%r8), %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm0, %ymm2
	vpxor	%ymm3, %ymm1, %ymm3
	vpxor	glob_data + 96(%rip), %ymm0, %ymm7
	vpxor	glob_data + 64(%rip), %ymm1, %ymm8
	vmovdqu	%ymm2, %ymm4
	vmovdqu	%ymm3, %ymm5
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm10
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm8, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm10, %ymm7
	vaesenc	%ymm10, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	movq	40(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_decrypt$23
	.p2align	5
.L_aegis256x2_decrypt$24:
	vmovdqu	(%rdi,%r9), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	addq	$32, %r9
.L_aegis256x2_decrypt$23:
	cmpq	%r8, %r9
	jb  	.L_aegis256x2_decrypt$24
	movq	40(%rsp), %r10
	subq	%r9, %r10
	cmpq	$0, %r10
	jbe 	.L_aegis256x2_decrypt$17
	addq	%r9, %rdi
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$22
	vmovdqu	(%rdi,%r8), %xmm1
	vmovdqu	%xmm1, (%rsp,%r8)
	addq	$16, %r8
.L_aegis256x2_decrypt$22:
	movq	%r10, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$21
	movq	(%rdi,%r8), %r9
	movq	%r9, (%rsp,%r8)
	addq	$8, %r8
.L_aegis256x2_decrypt$21:
	movq	%r10, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$20
	movl	(%rdi,%r8), %r9d
	movl	%r9d, (%rsp,%r8)
	addq	$4, %r8
.L_aegis256x2_decrypt$20:
	movq	%r10, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$19
	movw	(%rdi,%r8), %r9w
	movw	%r9w, (%rsp,%r8)
	addq	$2, %r8
.L_aegis256x2_decrypt$19:
	andq	$1, %r10
	cmpq	$0, %r10
	je  	.L_aegis256x2_decrypt$18
	movb	(%rdi,%r8), %dil
	movb	%dil, (%rsp,%r8)
.L_aegis256x2_decrypt$18:
	vmovdqu	(%rsp), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
.L_aegis256x2_decrypt$17:
	movq	32(%rsp), %r8
	andq	$-64, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_decrypt$15
	.p2align	5
.L_aegis256x2_decrypt$16:
	vmovdqu	(%rdx,%r9), %ymm1
// declassify_val u256 %ymm1
	vaesenc	%ymm1, %ymm7, %ymm2
	vpxor	%ymm7, %ymm8, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm5, %ymm3, %ymm3
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm3, %ymm2, %ymm4
	vpxor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsi,%r9)
	vmovdqu	32(%rdx,%r9), %ymm1
// declassify_val u256 %ymm1
	vaesenc	%ymm1, %ymm7, %ymm2
	vpxor	%ymm7, %ymm8, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm5, %ymm3, %ymm3
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm3, %ymm2, %ymm4
	vpxor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm1, 32(%rsi,%r9)
	addq	$64, %r9
.L_aegis256x2_decrypt$15:
	cmpq	%r8, %r9
	jb  	.L_aegis256x2_decrypt$16
	movq	32(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$32, %rdi
	jb  	.L_aegis256x2_decrypt$14
	vmovdqu	(%rdx,%r9), %ymm1
// declassify_val u256 %ymm1
	vaesenc	%ymm1, %ymm7, %ymm2
	vpxor	%ymm7, %ymm8, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm5, %ymm3, %ymm3
	vpxor	%ymm4, %ymm2, %ymm2
	vpxor	%ymm9, %ymm3, %ymm3
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm3, %ymm2, %ymm4
	vpxor	%ymm3, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsi,%r9)
	addq	$-32, %rdi
	addq	$32, %r9
.L_aegis256x2_decrypt$14:
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$13
	vmovdqu	(%rdx,%r8), %xmm1
	vmovdqu	%xmm1, (%rsp,%r8)
	addq	$16, %r8
.L_aegis256x2_decrypt$13:
	movq	%rdi, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$12
	movq	(%rdx,%r8), %r9
	movq	%r9, (%rsp,%r8)
	addq	$8, %r8
.L_aegis256x2_decrypt$12:
	movq	%rdi, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$11
	movl	(%rdx,%r8), %r9d
	movl	%r9d, (%rsp,%r8)
	addq	$4, %r8
.L_aegis256x2_decrypt$11:
	movq	%rdi, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$10
	movw	(%rdx,%r8), %r9w
	movw	%r9w, (%rsp,%r8)
	addq	$2, %r8
.L_aegis256x2_decrypt$10:
	movq	%rdi, %r9
	andq	$1, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$9
	movb	(%rdx,%r8), %dl
	movb	%dl, (%rsp,%r8)
.L_aegis256x2_decrypt$9:
	vmovdqu	(%rsp), %ymm1
// declassify_val u256 %ymm1
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm9, %ymm3, %ymm3
	vpxor	%ymm7, %ymm3, %ymm3
	vpxor	%ymm3, %ymm1, %ymm1
	vmovq	%rdi, %xmm2
	vpbroadcastb	%xmm2, %ymm2
	vpcmpgtb	glob_data + 0(%rip), %ymm2, %ymm2
	vpand	%ymm1, %ymm2, %ymm2
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vmovdqu	%ymm1, (%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$8
	vmovdqu	(%rsp,%r8), %xmm1
	vmovdqu	%xmm1, (%rsi,%r8)
	addq	$16, %r8
.L_aegis256x2_decrypt$8:
	movq	%rdi, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$7
	movq	(%rsp,%r8), %r9
	movq	%r9, (%rsi,%r8)
	addq	$8, %r8
.L_aegis256x2_decrypt$7:
	movq	%rdi, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$6
	movl	(%rsp,%r8), %r9d
	movl	%r9d, (%rsi,%r8)
	addq	$4, %r8
.L_aegis256x2_decrypt$6:
	movq	%rdi, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_decrypt$5
	movw	(%rsp,%r8), %r9w
	movw	%r9w, (%rsi,%r8)
	addq	$2, %r8
.L_aegis256x2_decrypt$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis256x2_decrypt$3
	movb	(%rsp,%r8), %dl
	movb	%dl, (%rsi,%r8)
.L_aegis256x2_decrypt$4:
.L_aegis256x2_decrypt$3:
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	shlq	$3, %rdx
	shlq	$3, %rsi
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm0, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	cmpb	$16, %cl
	je  	.L_aegis256x2_decrypt$1
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm8, %ymm0, %ymm0
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm7, %ymm0, %ymm0
	vextracti128	$1, %ymm1, %xmm2
	vextracti128	$1, %ymm0, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm1, %xmm2, %xmm2
	vpcmpeqq	%xmm0, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis256x2_decrypt$2
.L_aegis256x2_decrypt$1:
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm1
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vextracti128	$1, %ymm1, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqu	(%rax), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm0
	vpmovmskb	%xmm0, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis256x2_decrypt$2:
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
	.type	_aegis256x2_encrypt, %function
_aegis256x2_encrypt:
	movq	%rsp, %r11
	leaq	-64(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rdi, %r8
	movq	(%r8), %rdx
// declassify_val u64 %rdx
	movq	16(%r8), %rax
// declassify_val u64 %rax
	movb	24(%r8), %cl
// declassify_val u8 %cl
	movq	32(%r8), %rsi
// declassify_val u64 %rsi
	movq	40(%r8), %r9
	movq	%r9, 32(%rsp)
// declassify_val u64 32(%rsp)
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 40(%rsp)
// declassify_val u64 40(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	16(%r9), %ymm1
	vbroadcasti128	(%r8), %ymm2
// declassify_val u256 %ymm2
	vbroadcasti128	16(%r8), %ymm3
// declassify_val u256 %ymm3
	vpxor	%ymm2, %ymm0, %ymm2
	vpxor	%ymm3, %ymm1, %ymm3
	vpxor	glob_data + 96(%rip), %ymm0, %ymm7
	vpxor	glob_data + 64(%rip), %ymm1, %ymm8
	vmovdqu	%ymm2, %ymm4
	vmovdqu	%ymm3, %ymm5
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm10
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm8, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm10, %ymm7
	vaesenc	%ymm10, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm9, %ymm9
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm0, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm9, %ymm8
	vaesenc	%ymm9, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm2, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	glob_data + 32(%rip), %ymm0, %ymm0
	vpxor	glob_data + 32(%rip), %ymm7, %ymm7
	vaesenc	%ymm3, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	movq	40(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_encrypt$23
	.p2align	5
.L_aegis256x2_encrypt$24:
	vmovdqu	(%rdi,%r9), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	addq	$32, %r9
.L_aegis256x2_encrypt$23:
	cmpq	%r8, %r9
	jb  	.L_aegis256x2_encrypt$24
	movq	40(%rsp), %r10
	subq	%r9, %r10
	cmpq	$0, %r10
	jbe 	.L_aegis256x2_encrypt$17
	addq	%r9, %rdi
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$22
	vmovdqu	(%rdi,%r8), %xmm1
	vmovdqu	%xmm1, (%rsp,%r8)
	addq	$16, %r8
.L_aegis256x2_encrypt$22:
	movq	%r10, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$21
	movq	(%rdi,%r8), %r9
	movq	%r9, (%rsp,%r8)
	addq	$8, %r8
.L_aegis256x2_encrypt$21:
	movq	%r10, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$20
	movl	(%rdi,%r8), %r9d
	movl	%r9d, (%rsp,%r8)
	addq	$4, %r8
.L_aegis256x2_encrypt$20:
	movq	%r10, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$19
	movw	(%rdi,%r8), %r9w
	movw	%r9w, (%rsp,%r8)
	addq	$2, %r8
.L_aegis256x2_encrypt$19:
	andq	$1, %r10
	cmpq	$0, %r10
	je  	.L_aegis256x2_encrypt$18
	movb	(%rdi,%r8), %dil
	movb	%dil, (%rsp,%r8)
.L_aegis256x2_encrypt$18:
	vmovdqu	(%rsp), %ymm1
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
.L_aegis256x2_encrypt$17:
	movq	32(%rsp), %r8
	andq	$-64, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256x2_encrypt$15
	.p2align	5
.L_aegis256x2_encrypt$16:
	vmovdqu	(%rsi,%r9), %ymm1
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm9, %ymm3, %ymm3
	vpxor	%ymm7, %ymm3, %ymm3
	vpxor	%ymm3, %ymm1, %ymm2
// declassify_val u256 %ymm2
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vmovdqu	%ymm2, (%rdx,%r9)
	vmovdqu	32(%rsi,%r9), %ymm1
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm9, %ymm3, %ymm3
	vpxor	%ymm7, %ymm3, %ymm3
	vpxor	%ymm3, %ymm1, %ymm2
// declassify_val u256 %ymm2
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vmovdqu	%ymm2, 32(%rdx,%r9)
	addq	$64, %r9
.L_aegis256x2_encrypt$15:
	cmpq	%r8, %r9
	jb  	.L_aegis256x2_encrypt$16
	movq	32(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$32, %rdi
	jb  	.L_aegis256x2_encrypt$14
	vmovdqu	(%rsi,%r9), %ymm1
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm9, %ymm3, %ymm3
	vpxor	%ymm7, %ymm3, %ymm3
	vpxor	%ymm3, %ymm1, %ymm2
// declassify_val u256 %ymm2
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vmovdqu	%ymm2, (%rdx,%r9)
	addq	$-32, %rdi
	addq	$32, %r9
.L_aegis256x2_encrypt$14:
	cmpq	$0, %rdi
	jbe 	.L_aegis256x2_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%ymm1, %ymm1, %ymm1
	vmovdqu	%ymm1, (%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$13
	vmovdqu	(%rsi,%r8), %xmm1
	vmovdqu	%xmm1, (%rsp,%r8)
	addq	$16, %r8
.L_aegis256x2_encrypt$13:
	movq	%rdi, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$12
	movq	(%rsi,%r8), %r9
	movq	%r9, (%rsp,%r8)
	addq	$8, %r8
.L_aegis256x2_encrypt$12:
	movq	%rdi, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$11
	movl	(%rsi,%r8), %r9d
	movl	%r9d, (%rsp,%r8)
	addq	$4, %r8
.L_aegis256x2_encrypt$11:
	movq	%rdi, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$10
	movw	(%rsi,%r8), %r9w
	movw	%r9w, (%rsp,%r8)
	addq	$2, %r8
.L_aegis256x2_encrypt$10:
	movq	%rdi, %r9
	andq	$1, %r9
	cmpq	$0, %r9
	je  	.L_aegis256x2_encrypt$9
	movb	(%rsi,%r8), %sil
	movb	%sil, (%rsp,%r8)
.L_aegis256x2_encrypt$9:
	vmovdqu	(%rsp), %ymm1
	vpxor	%ymm8, %ymm5, %ymm3
	vpand	%ymm0, %ymm6, %ymm9
	vpxor	%ymm9, %ymm3, %ymm3
	vpxor	%ymm7, %ymm3, %ymm3
	vpxor	%ymm3, %ymm1, %ymm2
// declassify_val u256 %ymm2
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	vmovdqu	%ymm2, (%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_encrypt$8
	vmovdqu	(%rsp,%r8), %xmm1
	vmovdqu	%xmm1, (%rdx,%r8)
	addq	$16, %r8
.L_aegis256x2_encrypt$8:
	movq	%rdi, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_encrypt$7
	movq	(%rsp,%r8), %rsi
	movq	%rsi, (%rdx,%r8)
	addq	$8, %r8
.L_aegis256x2_encrypt$7:
	movq	%rdi, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_encrypt$6
	movl	(%rsp,%r8), %esi
	movl	%esi, (%rdx,%r8)
	addq	$4, %r8
.L_aegis256x2_encrypt$6:
	movq	%rdi, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256x2_encrypt$5
	movw	(%rsp,%r8), %si
	movw	%si, (%rdx,%r8)
	addq	$2, %r8
.L_aegis256x2_encrypt$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis256x2_encrypt$3
	movb	(%rsp,%r8), %sil
	movb	%sil, (%rdx,%r8)
.L_aegis256x2_encrypt$4:
.L_aegis256x2_encrypt$3:
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rdx
	shlq	$3, %rsi
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm0, %ymm1
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm1, %ymm7, %ymm1
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm8, %ymm0, %ymm8
	vaesenc	%ymm0, %ymm6, %ymm0
	vaesenc	%ymm6, %ymm5, %ymm6
	vaesenc	%ymm5, %ymm4, %ymm5
	vpxor	%ymm1, %ymm4, %ymm4
	cmpb	$16, %cl
	je  	.L_aegis256x2_encrypt$1
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm8, %ymm0, %ymm0
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm7, %ymm0, %ymm0
	vextracti128	$1, %ymm1, %xmm2
	vextracti128	$1, %ymm0, %xmm3
	vpxor	%xmm1, %xmm2, %xmm1
	vpxor	%xmm0, %xmm3, %xmm0
	vmovdqu	%xmm1, (%rax)
	vmovdqu	%xmm0, 16(%rax)
	jmp 	.L_aegis256x2_encrypt$2
.L_aegis256x2_encrypt$1:
	vpxor	%ymm5, %ymm4, %ymm1
	vpxor	%ymm6, %ymm1, %ymm1
	vpxor	%ymm0, %ymm1, %ymm1
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm7, %ymm1, %ymm1
	vextracti128	$1, %ymm1, %xmm0
	vpxor	%xmm1, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
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
G$iota0:
	.byte	  0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12,  13,  14,  15
	.byte	 16,  17,  18,  19,  20,  21,  22,  23,  24,  25,  26,  27,  28,  29,  30,  31
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
