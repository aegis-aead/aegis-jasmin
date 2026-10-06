	.att_syntax
	.text
	.p2align	5
	.global	_aegis128x2_mac_verify
	.global	_aegis128x2_mac
	.global	_aegis128x2_decrypt
	.global	_aegis128x2_encrypt
	.type	_aegis128x2_mac_verify, %function
_aegis128x2_mac_verify:
	movq	%rsp, %r10
	leaq	-128(%rsp), %rsp
	andq	$-32, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 96(%rsp)
// declassify_val u64 96(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%rsi), %ymm0
	vbroadcasti128	(%rdi), %ymm1
// declassify_val u256 %ymm1
	vpxor	%ymm1, %ymm0, %ymm4
	vpxor	glob_data + 64(%rip), %ymm0, %ymm2
	vmovdqu	%ymm4, %ymm8
	vmovdqu	glob_data + 32(%rip), %ymm7
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 32(%rip), %ymm9
	vmovdqu	%ymm2, %ymm5
	vpxor	glob_data + 32(%rip), %ymm0, %ymm3
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm4, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm11
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm9
	vpxor	%ymm0, %ymm5, %ymm10
	vaesenc	%ymm2, %ymm3, %ymm0
	vaesenc	%ymm3, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm5
	vaesenc	%ymm10, %ymm11, %ymm10
	vpxor	%ymm1, %ymm8, %ymm4
	vaesenc	%ymm11, %ymm6, %ymm1
	vaesenc	%ymm6, %ymm7, %ymm3
	vaesenc	%ymm7, %ymm8, %ymm6
	vaesenc	%ymm4, %ymm9, %ymm9
	movq	96(%rsp), %rsi
	andq	$-64, %rsi
	xorl	%edi, %edi
	jmp 	.L_aegis128x2_mac_verify$8
	.p2align	5
.L_aegis128x2_mac_verify$9:
	vmovdqu	(%rdx,%rdi), %ymm7
	vmovdqu	32(%rdx,%rdi), %ymm4
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm4
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm4, %ymm8, %ymm9
	addq	$64, %rdi
.L_aegis128x2_mac_verify$8:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128x2_mac_verify$9
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	cmpq	$0, %rsi
	jbe 	.L_aegis128x2_mac_verify$5
	addq	%rdi, %rdx
	vpxor	%ymm4, %ymm4, %ymm4
	vmovdqu	%ymm4, 32(%rsp)
	vmovdqu	%ymm4, 64(%rsp)
	xorl	%edi, %edi
	jmp 	.L_aegis128x2_mac_verify$6
.L_aegis128x2_mac_verify$7:
	movb	(%rdx,%rdi), %r8b
	movb	%r8b, 32(%rsp,%rdi)
	incq	%rdi
.L_aegis128x2_mac_verify$6:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128x2_mac_verify$7
	vmovdqu	32(%rsp), %ymm7
	vmovdqu	64(%rsp), %ymm4
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm4
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm4, %ymm8, %ymm9
.L_aegis128x2_mac_verify$5:
	movq	96(%rsp), %rdx
	movzbq	%cl, %rsi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm3, %ymm4
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm4
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm4, %ymm8, %ymm9
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac_verify$3
	vpxor	%ymm6, %ymm9, %ymm4
	vpxor	%ymm5, %ymm10, %ymm7
	vpxor	%ymm3, %ymm4, %ymm4
	vpxor	%ymm2, %ymm7, %ymm7
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	%ymm0, %ymm7, %ymm8
	vperm2i128	$129, %ymm4, %ymm4, %ymm7
	vperm2i128	$129, %ymm8, %ymm8, %ymm4
	jmp 	.L_aegis128x2_mac_verify$4
.L_aegis128x2_mac_verify$3:
	vpxor	%ymm6, %ymm9, %ymm4
	vpxor	%ymm3, %ymm4, %ymm4
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	%ymm10, %ymm4, %ymm4
	vpxor	%ymm5, %ymm4, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vperm2i128	$128, %ymm4, %ymm4, %ymm7
	vperm2i128	$129, %ymm4, %ymm4, %ymm4
.L_aegis128x2_mac_verify$4:
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	movq	$2, %rdx
	movq	%rdx, (%rsp)
	movq	%rsi, 8(%rsp)
	vpxor	(%rsp), %ymm3, %ymm0
	vperm2i128	$128, %ymm0, %ymm0, %ymm0
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm8
	vmovdqu	%ymm4, %ymm9
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm8, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm8, %ymm6
	vaesenc	%ymm7, %ymm9, %ymm8
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac_verify$1
	vpxor	%ymm6, %ymm8, %ymm0
	vpxor	%ymm5, %ymm10, %ymm5
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm2, %ymm5, %ymm5
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm4, %ymm5, %ymm5
	vmovdqu	(%rax), %xmm1
	vmovdqu	16(%rax), %xmm2
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpcmpeqq	%xmm5, %xmm2, %xmm2
	vpand	%xmm2, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128x2_mac_verify$2
.L_aegis128x2_mac_verify$1:
	vpxor	%ymm6, %ymm8, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm10, %ymm0, %ymm0
	vpxor	%ymm5, %ymm0, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vmovdqu	(%rax), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis128x2_mac_verify$2:
	movq	%r10, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-32, %rsp
	subq	$128, %rsp
	vmovdqu	%xmm2, 112(%rsp)
	vmovdqu	%xmm2, 96(%rsp)
	vmovdqu	%xmm2, 80(%rsp)
	vmovdqu	%xmm2, 64(%rsp)
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis128x2_mac, %function
_aegis128x2_mac:
	movq	%rsp, %r10
	leaq	-128(%rsp), %rsp
	andq	$-32, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 96(%rsp)
// declassify_val u64 96(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%rsi), %ymm0
	vbroadcasti128	(%rdi), %ymm1
// declassify_val u256 %ymm1
	vpxor	%ymm1, %ymm0, %ymm4
	vpxor	glob_data + 64(%rip), %ymm0, %ymm2
	vmovdqu	%ymm4, %ymm8
	vmovdqu	glob_data + 32(%rip), %ymm7
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 32(%rip), %ymm9
	vmovdqu	%ymm2, %ymm5
	vpxor	glob_data + 32(%rip), %ymm0, %ymm3
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm4, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm11
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm9
	vpxor	%ymm0, %ymm5, %ymm10
	vaesenc	%ymm2, %ymm3, %ymm0
	vaesenc	%ymm3, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm5
	vaesenc	%ymm10, %ymm11, %ymm10
	vpxor	%ymm1, %ymm8, %ymm4
	vaesenc	%ymm11, %ymm6, %ymm1
	vaesenc	%ymm6, %ymm7, %ymm3
	vaesenc	%ymm7, %ymm8, %ymm6
	vaesenc	%ymm4, %ymm9, %ymm9
	movq	96(%rsp), %rsi
	andq	$-64, %rsi
	xorl	%edi, %edi
	jmp 	.L_aegis128x2_mac$8
	.p2align	5
.L_aegis128x2_mac$9:
	vmovdqu	(%rdx,%rdi), %ymm7
	vmovdqu	32(%rdx,%rdi), %ymm4
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm4
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm4, %ymm8, %ymm9
	addq	$64, %rdi
.L_aegis128x2_mac$8:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128x2_mac$9
	movq	96(%rsp), %rsi
	subq	%rdi, %rsi
	cmpq	$0, %rsi
	jbe 	.L_aegis128x2_mac$5
	addq	%rdi, %rdx
	vpxor	%ymm4, %ymm4, %ymm4
	vmovdqu	%ymm4, 32(%rsp)
	vmovdqu	%ymm4, 64(%rsp)
	xorl	%edi, %edi
	jmp 	.L_aegis128x2_mac$6
.L_aegis128x2_mac$7:
	movb	(%rdx,%rdi), %r8b
	movb	%r8b, 32(%rsp,%rdi)
	incq	%rdi
.L_aegis128x2_mac$6:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128x2_mac$7
	vmovdqu	32(%rsp), %ymm7
	vmovdqu	64(%rsp), %ymm4
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm4
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm4, %ymm8, %ymm9
.L_aegis128x2_mac$5:
	movq	96(%rsp), %rdx
	xorl	%esi, %esi
	movzbq	%cl, %rdi
	shlq	$3, %rdi
	shlq	$3, %rdx
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rdi, 8(%rsp)
	movq	%rdi, 24(%rsp)
	vpxor	(%rsp), %ymm3, %ymm4
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm4, %ymm9, %ymm4
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm4, %ymm8, %ymm9
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac$3
	vpxor	%ymm6, %ymm9, %ymm4
	vpxor	%ymm5, %ymm10, %ymm7
	vpxor	%ymm3, %ymm4, %ymm4
	vpxor	%ymm2, %ymm7, %ymm7
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	%ymm0, %ymm7, %ymm8
	vperm2i128	$129, %ymm4, %ymm4, %ymm7
	vperm2i128	$129, %ymm8, %ymm8, %ymm4
	jmp 	.L_aegis128x2_mac$4
.L_aegis128x2_mac$3:
	vpxor	%ymm6, %ymm9, %ymm4
	vpxor	%ymm3, %ymm4, %ymm4
	vpxor	%ymm1, %ymm4, %ymm4
	vpxor	%ymm10, %ymm4, %ymm4
	vpxor	%ymm5, %ymm4, %ymm4
	vpxor	%ymm2, %ymm4, %ymm4
	vperm2i128	$128, %ymm4, %ymm4, %ymm7
	vperm2i128	$129, %ymm4, %ymm4, %ymm4
.L_aegis128x2_mac$4:
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm4, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	movq	$2, %rdx
	movq	%rdx, (%rsp)
	movq	%rdi, 8(%rsp)
	vpxor	(%rsp), %ymm3, %ymm0
	vperm2i128	$128, %ymm0, %ymm0, %ymm0
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm9
	vmovdqu	%ymm4, %ymm8
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm8
	vmovdqu	%ymm4, %ymm9
	vpxor	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm4, %ymm2, %ymm4
	vaesenc	%ymm2, %ymm5, %ymm2
	vaesenc	%ymm5, %ymm10, %ymm5
	vaesenc	%ymm11, %ymm1, %ymm10
	vpxor	%ymm0, %ymm8, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm8, %ymm6
	vaesenc	%ymm7, %ymm9, %ymm8
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac$1
	vpxor	%ymm6, %ymm8, %ymm0
	vpxor	%ymm5, %ymm10, %ymm5
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm2, %ymm5, %ymm5
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm4, %ymm5, %ymm5
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm5, 16(%rax)
	jmp 	.L_aegis128x2_mac$2
.L_aegis128x2_mac$1:
	vpxor	%ymm6, %ymm8, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm10, %ymm0, %ymm0
	vpxor	%ymm5, %ymm0, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vmovdqu	%xmm0, (%rax)
.L_aegis128x2_mac$2:
	movq	%rsi, %rax
	movq	%r10, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-32, %rsp
	subq	$128, %rsp
	vmovdqu	%xmm2, 112(%rsp)
	vmovdqu	%xmm2, 96(%rsp)
	vmovdqu	%xmm2, 80(%rsp)
	vmovdqu	%xmm2, 64(%rsp)
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis128x2_decrypt, %function
_aegis128x2_decrypt:
	movq	%rsp, %r11
	leaq	-192(%rsp), %rsp
	andq	$-32, %rsp
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	8(%rdi), %rsi
	movq	%rsi, 160(%rsp)
// declassify_val u64 160(%rsp)
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 168(%rsp)
// declassify_val u64 168(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	(%rdi), %ymm1
// declassify_val u256 %ymm1
	vpxor	%ymm1, %ymm0, %ymm4
	vpxor	glob_data + 64(%rip), %ymm0, %ymm2
	vmovdqu	%ymm4, %ymm8
	vmovdqu	glob_data + 32(%rip), %ymm7
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 32(%rip), %ymm9
	vmovdqu	%ymm2, %ymm5
	vpxor	glob_data + 32(%rip), %ymm0, %ymm3
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm4, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm11
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm9
	vpxor	%ymm0, %ymm5, %ymm10
	vaesenc	%ymm2, %ymm3, %ymm0
	vaesenc	%ymm3, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm3
	vaesenc	%ymm10, %ymm11, %ymm4
	vpxor	%ymm1, %ymm8, %ymm10
	vaesenc	%ymm11, %ymm6, %ymm1
	vaesenc	%ymm6, %ymm7, %ymm5
	vaesenc	%ymm7, %ymm8, %ymm6
	vaesenc	%ymm10, %ymm9, %ymm9
	movq	168(%rsp), %rdi
	andq	$-64, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_decrypt$15
	.p2align	5
.L_aegis128x2_decrypt$16:
	vmovdqu	(%r8,%r9), %ymm7
	vmovdqu	32(%r8,%r9), %ymm8
	vmovdqu	%ymm0, %ymm10
	vpxor	%ymm8, %ymm4, %ymm8
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm8, %ymm1, %ymm4
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm9
	addq	$64, %r9
.L_aegis128x2_decrypt$15:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_decrypt$16
	movq	168(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128x2_decrypt$12
	addq	%r9, %r8
	vpxor	%ymm7, %ymm7, %ymm7
	vmovdqu	%ymm7, 32(%rsp)
	vmovdqu	%ymm7, 64(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_decrypt$13
.L_aegis128x2_decrypt$14:
	movb	(%r8,%r9), %r10b
	movb	%r10b, 32(%rsp,%r9)
	incq	%r9
.L_aegis128x2_decrypt$13:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_decrypt$14
	vmovdqu	32(%rsp), %ymm7
	vmovdqu	64(%rsp), %ymm8
	vmovdqu	%ymm0, %ymm10
	vpxor	%ymm8, %ymm4, %ymm8
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm8, %ymm1, %ymm4
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm9
.L_aegis128x2_decrypt$12:
	movq	160(%rsp), %rdi
	andq	$-64, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_decrypt$10
	.p2align	5
.L_aegis128x2_decrypt$11:
	vmovdqu	(%rax,%r9), %ymm7
	vmovdqu	32(%rax,%r9), %ymm8
// declassify_val u256 %ymm7
// declassify_val u256 %ymm8
	vpand	%ymm1, %ymm5, %ymm10
	vpand	%ymm0, %ymm2, %ymm11
	vpxor	%ymm6, %ymm2, %ymm12
	vpxor	%ymm3, %ymm5, %ymm13
	vpxor	%ymm10, %ymm12, %ymm12
	vpxor	%ymm11, %ymm13, %ymm13
	vpxor	%ymm12, %ymm7, %ymm7
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	%ymm0, %ymm10
	vpxor	%ymm8, %ymm4, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm11, %ymm1, %ymm4
	vpxor	%ymm7, %ymm9, %ymm11
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm11, %ymm10, %ymm9
	vmovdqu	%ymm7, (%rsi,%r9)
	vmovdqu	%ymm8, 32(%rsi,%r9)
	addq	$64, %r9
.L_aegis128x2_decrypt$10:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_decrypt$11
	movq	160(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128x2_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%ymm7, %ymm7, %ymm7
	vmovdqu	%ymm7, 32(%rsp)
	vmovdqu	%ymm7, 64(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_decrypt$8
.L_aegis128x2_decrypt$9:
	movb	(%rax,%r9), %r8b
	movb	%r8b, 32(%rsp,%r9)
	incq	%r9
.L_aegis128x2_decrypt$8:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_decrypt$9
	vmovdqu	32(%rsp), %ymm7
	vmovdqu	64(%rsp), %ymm8
// declassify_val u256 %ymm7
// declassify_val u256 %ymm8
	vpand	%ymm1, %ymm5, %ymm10
	vpand	%ymm0, %ymm2, %ymm11
	vpxor	%ymm6, %ymm2, %ymm12
	vpxor	%ymm3, %ymm5, %ymm13
	vpxor	%ymm10, %ymm12, %ymm12
	vpxor	%ymm11, %ymm13, %ymm13
	vpxor	%ymm12, %ymm7, %ymm7
	vpxor	%ymm13, %ymm8, %ymm8
	vmovdqu	%ymm7, 96(%rsp)
	vmovdqu	%ymm8, 128(%rsp)
	movq	%rdi, %r9
	jmp 	.L_aegis128x2_decrypt$6
.L_aegis128x2_decrypt$7:
	movb	$0, 96(%rsp,%r9)
	incq	%r9
.L_aegis128x2_decrypt$6:
	cmpq	$64, %r9
	jb  	.L_aegis128x2_decrypt$7
	vmovdqu	96(%rsp), %ymm10
	vmovdqu	128(%rsp), %ymm11
	vmovdqu	%ymm0, %ymm12
	vpxor	%ymm11, %ymm4, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm11, %ymm1, %ymm4
	vpxor	%ymm10, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm12, %ymm9
	vmovdqu	%ymm7, 32(%rsp)
	vmovdqu	%ymm8, 64(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_decrypt$4
.L_aegis128x2_decrypt$5:
	movb	32(%rsp,%r9), %r8b
	movb	%r8b, (%rsi,%r9)
	incq	%r9
.L_aegis128x2_decrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_decrypt$5
.L_aegis128x2_decrypt$3:
	movq	168(%rsp), %rax
	movq	160(%rsp), %rsi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rax, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm5, %ymm7
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm4, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm11
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm11, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm10, %ymm4
	vaesenc	%ymm11, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm8
	vmovdqu	%ymm0, %ymm9
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm8, %ymm6
	vaesenc	%ymm7, %ymm9, %ymm8
	cmpb	$16, %dl
	je  	.L_aegis128x2_decrypt$1
	vpxor	%ymm6, %ymm8, %ymm6
	vpxor	%ymm4, %ymm5, %ymm5
	vpxor	%ymm3, %ymm6, %ymm6
	vpxor	%ymm2, %ymm5, %ymm5
	vpxor	%ymm1, %ymm6, %ymm6
	vpxor	%ymm0, %ymm5, %ymm5
	vextracti128	$1, %ymm6, %xmm0
	vextracti128	$1, %ymm5, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128x2_decrypt$2
.L_aegis128x2_decrypt$1:
	vpxor	%ymm6, %ymm8, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm5, %ymm0, %ymm0
	vpxor	%ymm4, %ymm0, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	(%rcx), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis128x2_decrypt$2:
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-32, %rsp
	subq	$192, %rsp
	vmovdqu	%xmm2, 176(%rsp)
	vmovdqu	%xmm2, 160(%rsp)
	vmovdqu	%xmm2, 144(%rsp)
	vmovdqu	%xmm2, 128(%rsp)
	vmovdqu	%xmm2, 112(%rsp)
	vmovdqu	%xmm2, 96(%rsp)
	vmovdqu	%xmm2, 80(%rsp)
	vmovdqu	%xmm2, 64(%rsp)
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis128x2_encrypt, %function
_aegis128x2_encrypt:
	movq	%rsp, %r11
	leaq	-128(%rsp), %rsp
	andq	$-32, %rsp
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	40(%rdi), %r8
	movq	%r8, 96(%rsp)
// declassify_val u64 96(%rsp)
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 104(%rsp)
// declassify_val u64 104(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	(%rdi), %ymm1
// declassify_val u256 %ymm1
	vpxor	%ymm1, %ymm0, %ymm4
	vpxor	glob_data + 64(%rip), %ymm0, %ymm2
	vmovdqu	%ymm4, %ymm8
	vmovdqu	glob_data + 32(%rip), %ymm7
	vmovdqu	glob_data + 64(%rip), %ymm6
	vmovdqu	glob_data + 32(%rip), %ymm9
	vmovdqu	%ymm2, %ymm5
	vpxor	glob_data + 32(%rip), %ymm0, %ymm3
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm4, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vaesenc	%ymm5, %ymm4, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm9
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm10
	vpxor	%ymm0, %ymm5, %ymm11
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm11, %ymm9, %ymm5
	vpxor	%ymm1, %ymm8, %ymm11
	vaesenc	%ymm9, %ymm6, %ymm9
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm11, %ymm10, %ymm8
	vpxor	glob_data + 0(%rip), %ymm9, %ymm11
	vpxor	glob_data + 0(%rip), %ymm2, %ymm2
	vmovdqu	%ymm2, %ymm9
	vpxor	%ymm0, %ymm5, %ymm10
	vaesenc	%ymm2, %ymm3, %ymm0
	vaesenc	%ymm3, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm3
	vaesenc	%ymm10, %ymm11, %ymm4
	vpxor	%ymm1, %ymm8, %ymm10
	vaesenc	%ymm11, %ymm6, %ymm1
	vaesenc	%ymm6, %ymm7, %ymm5
	vaesenc	%ymm7, %ymm8, %ymm6
	vaesenc	%ymm10, %ymm9, %ymm9
	movq	104(%rsp), %rdi
	andq	$-64, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_encrypt$13
	.p2align	5
.L_aegis128x2_encrypt$14:
	vmovdqu	(%r8,%r9), %ymm7
	vmovdqu	32(%r8,%r9), %ymm8
	vmovdqu	%ymm0, %ymm10
	vpxor	%ymm8, %ymm4, %ymm8
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm8, %ymm1, %ymm4
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm9
	addq	$64, %r9
.L_aegis128x2_encrypt$13:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_encrypt$14
	movq	104(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128x2_encrypt$10
	addq	%r9, %r8
	vpxor	%ymm7, %ymm7, %ymm7
	vmovdqu	%ymm7, 32(%rsp)
	vmovdqu	%ymm7, 64(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_encrypt$11
.L_aegis128x2_encrypt$12:
	movb	(%r8,%r9), %r10b
	movb	%r10b, 32(%rsp,%r9)
	incq	%r9
.L_aegis128x2_encrypt$11:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_encrypt$12
	vmovdqu	32(%rsp), %ymm7
	vmovdqu	64(%rsp), %ymm8
	vmovdqu	%ymm0, %ymm10
	vpxor	%ymm8, %ymm4, %ymm8
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm8, %ymm1, %ymm4
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm10, %ymm9
.L_aegis128x2_encrypt$10:
	movq	96(%rsp), %rdi
	andq	$-64, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_encrypt$8
	.p2align	5
.L_aegis128x2_encrypt$9:
	vmovdqu	(%rsi,%r9), %ymm7
	vmovdqu	32(%rsi,%r9), %ymm8
	vpand	%ymm1, %ymm5, %ymm10
	vpand	%ymm0, %ymm2, %ymm11
	vpxor	%ymm6, %ymm2, %ymm12
	vpxor	%ymm3, %ymm5, %ymm13
	vpxor	%ymm10, %ymm12, %ymm12
	vpxor	%ymm11, %ymm13, %ymm13
	vpxor	%ymm12, %ymm7, %ymm10
	vpxor	%ymm13, %ymm8, %ymm11
// declassify_val u256 %ymm10
// declassify_val u256 %ymm11
	vmovdqu	%ymm0, %ymm12
	vpxor	%ymm8, %ymm4, %ymm8
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm8, %ymm1, %ymm4
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm12, %ymm9
	vmovdqu	%ymm10, (%rax,%r9)
	vmovdqu	%ymm11, 32(%rax,%r9)
	addq	$64, %r9
.L_aegis128x2_encrypt$8:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_encrypt$9
	movq	96(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128x2_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%ymm7, %ymm7, %ymm7
	vmovdqu	%ymm7, 32(%rsp)
	vmovdqu	%ymm7, 64(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_encrypt$6
.L_aegis128x2_encrypt$7:
	movb	(%rsi,%r9), %r8b
	movb	%r8b, 32(%rsp,%r9)
	incq	%r9
.L_aegis128x2_encrypt$6:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_encrypt$7
	vmovdqu	32(%rsp), %ymm7
	vmovdqu	64(%rsp), %ymm8
	vpand	%ymm1, %ymm5, %ymm10
	vpand	%ymm0, %ymm2, %ymm11
	vpxor	%ymm6, %ymm2, %ymm12
	vpxor	%ymm3, %ymm5, %ymm13
	vpxor	%ymm10, %ymm12, %ymm12
	vpxor	%ymm11, %ymm13, %ymm13
	vpxor	%ymm12, %ymm7, %ymm10
	vpxor	%ymm13, %ymm8, %ymm11
// declassify_val u256 %ymm10
// declassify_val u256 %ymm11
	vmovdqu	%ymm0, %ymm12
	vpxor	%ymm8, %ymm4, %ymm8
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm3
	vaesenc	%ymm8, %ymm1, %ymm4
	vpxor	%ymm7, %ymm9, %ymm7
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm5
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm7, %ymm12, %ymm9
	vmovdqu	%ymm10, 32(%rsp)
	vmovdqu	%ymm11, 64(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_encrypt$4
.L_aegis128x2_encrypt$5:
	movb	32(%rsp,%r9), %sil
	movb	%sil, (%rax,%r9)
	incq	%r9
.L_aegis128x2_encrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis128x2_encrypt$5
.L_aegis128x2_encrypt$3:
	movq	104(%rsp), %rax
	movq	96(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rax, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm5, %ymm7
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm4, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm3, %ymm2
	vaesenc	%ymm3, %ymm4, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm10
	vpxor	%ymm7, %ymm9, %ymm11
	vaesenc	%ymm1, %ymm5, %ymm1
	vaesenc	%ymm5, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm11, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm10, %ymm11
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm10, %ymm4
	vaesenc	%ymm11, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm9
	vmovdqu	%ymm0, %ymm8
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm9, %ymm10
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm10, %ymm8, %ymm8
	vmovdqu	%ymm0, %ymm9
	vpxor	%ymm7, %ymm5, %ymm10
	vaesenc	%ymm0, %ymm2, %ymm0
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm4, %ymm5, %ymm4
	vaesenc	%ymm10, %ymm1, %ymm5
	vpxor	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm3, %ymm6, %ymm3
	vaesenc	%ymm6, %ymm8, %ymm6
	vaesenc	%ymm7, %ymm9, %ymm8
	cmpb	$16, %dl
	je  	.L_aegis128x2_encrypt$1
	vpxor	%ymm6, %ymm8, %ymm6
	vpxor	%ymm4, %ymm5, %ymm5
	vpxor	%ymm3, %ymm6, %ymm6
	vpxor	%ymm2, %ymm5, %ymm5
	vpxor	%ymm1, %ymm6, %ymm6
	vpxor	%ymm0, %ymm5, %ymm5
	vextracti128	$1, %ymm6, %xmm0
	vextracti128	$1, %ymm5, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rcx)
	vmovdqu	%xmm1, 16(%rcx)
	jmp 	.L_aegis128x2_encrypt$2
.L_aegis128x2_encrypt$1:
	vpxor	%ymm6, %ymm8, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm5, %ymm0, %ymm0
	vpxor	%ymm4, %ymm0, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm0, (%rcx)
.L_aegis128x2_encrypt$2:
	movq	%rdi, %rax
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-32, %rsp
	subq	$128, %rsp
	vmovdqu	%xmm2, 112(%rsp)
	vmovdqu	%xmm2, 96(%rsp)
	vmovdqu	%xmm2, 80(%rsp)
	vmovdqu	%xmm2, 64(%rsp)
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
