	.att_syntax
	.text
	.p2align	5
	.global	_aegis128x2_mac_verify
	.global	_aegis128x2_mac
	.global	_aegis128x2_decrypt
	.global	_aegis128x2_encrypt
	.type	_aegis128x2_mac_verify, %function
_aegis128x2_mac_verify:
	movq	%rsp, %r11
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
	vpxor	glob_data + 128(%rip), %ymm0, %ymm7
	vmovdqu	%ymm4, %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm5
	vmovdqu	glob_data + 128(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm2
	vpxor	glob_data + 96(%rip), %ymm0, %ymm8
	vpxor	glob_data + 64(%rip), %ymm9, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm9
	vaesenc	%ymm1, %ymm9, %ymm7
	vaesenc	%ymm9, %ymm8, %ymm9
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm7, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm9, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm9
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm9, %ymm3, %ymm9
	vaesenc	%ymm2, %ymm4, %ymm1
	vaesenc	%ymm3, %ymm5, %ymm2
	vpxor	%ymm0, %ymm4, %ymm3
	vaesenc	%ymm5, %ymm6, %ymm4
	vpxor	%ymm10, %ymm6, %ymm5
	movq	96(%rsp), %rsi
	andq	$-64, %rsi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_mac_verify$12
	.p2align	5
.L_aegis128x2_mac_verify$13:
	vmovdqu	(%rdx,%r9), %ymm0
	vmovdqu	32(%rdx,%r9), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$64, %r9
.L_aegis128x2_mac_verify$12:
	cmpq	%rsi, %r9
	jb  	.L_aegis128x2_mac_verify$13
	movq	96(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis128x2_mac_verify$5
	addq	%r9, %rdx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %rsi
	andq	$32, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac_verify$11
	vmovdqu	(%rdx,%r9), %ymm0
	vmovdqu	%ymm0, 32(%rsp,%r9)
	addq	$32, %r9
.L_aegis128x2_mac_verify$11:
	movq	%r8, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac_verify$10
	vmovdqu	(%rdx,%r9), %xmm0
	vmovdqu	%xmm0, 32(%rsp,%r9)
	addq	$16, %r9
.L_aegis128x2_mac_verify$10:
	movq	%r8, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac_verify$9
	movq	(%rdx,%r9), %rsi
	movq	%rsi, 32(%rsp,%r9)
	addq	$8, %r9
.L_aegis128x2_mac_verify$9:
	movq	%r8, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac_verify$8
	movl	(%rdx,%r9), %esi
	movl	%esi, 32(%rsp,%r9)
	addq	$4, %r9
.L_aegis128x2_mac_verify$8:
	movq	%r8, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac_verify$7
	movw	(%rdx,%r9), %si
	movw	%si, 32(%rsp,%r9)
	addq	$2, %r9
.L_aegis128x2_mac_verify$7:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis128x2_mac_verify$6
	movb	(%rdx,%r9), %dl
	movb	%dl, 32(%rsp,%r9)
.L_aegis128x2_mac_verify$6:
	vmovdqu	32(%rsp), %ymm0
	vmovdqu	64(%rsp), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
.L_aegis128x2_mac_verify$5:
	movq	96(%rsp), %rdx
	movzbq	%cl, %rsi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm2, %ymm0
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac_verify$3
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm1, %ymm3, %ymm6
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm8, %ymm6, %ymm6
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm7, %ymm6, %ymm10
	vperm2i128	$129, %ymm0, %ymm0, %ymm6
	vperm2i128	$129, %ymm10, %ymm10, %ymm0
	jmp 	.L_aegis128x2_mac_verify$4
.L_aegis128x2_mac_verify$3:
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm8, %ymm0, %ymm0
	vperm2i128	$128, %ymm0, %ymm0, %ymm6
	vperm2i128	$129, %ymm0, %ymm0, %ymm0
.L_aegis128x2_mac_verify$4:
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	movq	$2, %rdx
	movq	%rdx, (%rsp)
	movq	%rsi, 8(%rsp)
	vpxor	(%rsp), %ymm2, %ymm0
	vperm2i128	$128, %ymm0, %ymm0, %ymm0
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac_verify$1
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm7, %ymm1, %ymm1
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128x2_mac_verify$2
.L_aegis128x2_mac_verify$1:
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm8, %ymm0, %ymm0
	vmovdqu	(%rax), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis128x2_mac_verify$2:
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
	.type	_aegis128x2_mac, %function
_aegis128x2_mac:
	movq	%rsp, %r11
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
	vpxor	glob_data + 128(%rip), %ymm0, %ymm7
	vmovdqu	%ymm4, %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm5
	vmovdqu	glob_data + 128(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm2
	vpxor	glob_data + 96(%rip), %ymm0, %ymm8
	vpxor	glob_data + 64(%rip), %ymm9, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm9
	vaesenc	%ymm1, %ymm9, %ymm7
	vaesenc	%ymm9, %ymm8, %ymm9
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm7, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm9, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm9
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm9, %ymm3, %ymm9
	vaesenc	%ymm2, %ymm4, %ymm1
	vaesenc	%ymm3, %ymm5, %ymm2
	vpxor	%ymm0, %ymm4, %ymm3
	vaesenc	%ymm5, %ymm6, %ymm4
	vpxor	%ymm10, %ymm6, %ymm5
	movq	96(%rsp), %rsi
	andq	$-64, %rsi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_mac$12
	.p2align	5
.L_aegis128x2_mac$13:
	vmovdqu	(%rdx,%r9), %ymm0
	vmovdqu	32(%rdx,%r9), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$64, %r9
.L_aegis128x2_mac$12:
	cmpq	%rsi, %r9
	jb  	.L_aegis128x2_mac$13
	movq	96(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis128x2_mac$5
	addq	%r9, %rdx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %rsi
	andq	$32, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac$11
	vmovdqu	(%rdx,%r9), %ymm0
	vmovdqu	%ymm0, 32(%rsp,%r9)
	addq	$32, %r9
.L_aegis128x2_mac$11:
	movq	%r8, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac$10
	vmovdqu	(%rdx,%r9), %xmm0
	vmovdqu	%xmm0, 32(%rsp,%r9)
	addq	$16, %r9
.L_aegis128x2_mac$10:
	movq	%r8, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac$9
	movq	(%rdx,%r9), %rsi
	movq	%rsi, 32(%rsp,%r9)
	addq	$8, %r9
.L_aegis128x2_mac$9:
	movq	%r8, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac$8
	movl	(%rdx,%r9), %esi
	movl	%esi, 32(%rsp,%r9)
	addq	$4, %r9
.L_aegis128x2_mac$8:
	movq	%r8, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_mac$7
	movw	(%rdx,%r9), %si
	movw	%si, 32(%rsp,%r9)
	addq	$2, %r9
.L_aegis128x2_mac$7:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis128x2_mac$6
	movb	(%rdx,%r9), %dl
	movb	%dl, 32(%rsp,%r9)
.L_aegis128x2_mac$6:
	vmovdqu	32(%rsp), %ymm0
	vmovdqu	64(%rsp), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
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
	vpxor	(%rsp), %ymm2, %ymm0
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac$3
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm1, %ymm3, %ymm6
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm8, %ymm6, %ymm6
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm7, %ymm6, %ymm10
	vperm2i128	$129, %ymm0, %ymm0, %ymm6
	vperm2i128	$129, %ymm10, %ymm10, %ymm0
	jmp 	.L_aegis128x2_mac$4
.L_aegis128x2_mac$3:
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm8, %ymm0, %ymm0
	vperm2i128	$128, %ymm0, %ymm0, %ymm6
	vperm2i128	$129, %ymm0, %ymm0, %ymm0
.L_aegis128x2_mac$4:
	vaesenc	%ymm6, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	movq	$2, %rdx
	movq	%rdx, (%rsp)
	movq	%rdi, 8(%rsp)
	vpxor	(%rsp), %ymm2, %ymm0
	vperm2i128	$128, %ymm0, %ymm0, %ymm0
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm11
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm11, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	cmpb	$16, %cl
	je  	.L_aegis128x2_mac$1
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm7, %ymm1, %ymm1
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	jmp 	.L_aegis128x2_mac$2
.L_aegis128x2_mac$1:
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm8, %ymm0, %ymm0
	vmovdqu	%xmm0, (%rax)
.L_aegis128x2_mac$2:
	movq	%rsi, %rax
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
	.type	_aegis128x2_decrypt, %function
_aegis128x2_decrypt:
	movq	%rsp, %r11
	leaq	-128(%rsp), %rsp
	andq	$-32, %rsp
	movq	%rdi, %r8
	movq	(%r8), %rdx
// declassify_val u64 %rdx
	movq	8(%r8), %rsi
	movq	%rsi, 96(%rsp)
// declassify_val u64 96(%rsp)
	movq	16(%r8), %rax
// declassify_val u64 %rax
	movb	24(%r8), %cl
// declassify_val u8 %cl
	movq	32(%r8), %rsi
// declassify_val u64 %rsi
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 104(%rsp)
// declassify_val u64 104(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	(%r8), %ymm1
// declassify_val u256 %ymm1
	vpxor	%ymm1, %ymm0, %ymm4
	vpxor	glob_data + 128(%rip), %ymm0, %ymm7
	vmovdqu	%ymm4, %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm5
	vmovdqu	glob_data + 128(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm2
	vpxor	glob_data + 96(%rip), %ymm0, %ymm8
	vpxor	glob_data + 64(%rip), %ymm9, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm9
	vaesenc	%ymm1, %ymm9, %ymm7
	vaesenc	%ymm9, %ymm8, %ymm9
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm7, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm9, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm9
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm9, %ymm3, %ymm9
	vaesenc	%ymm2, %ymm4, %ymm1
	vaesenc	%ymm3, %ymm5, %ymm2
	vpxor	%ymm0, %ymm4, %ymm3
	vaesenc	%ymm5, %ymm6, %ymm4
	vpxor	%ymm10, %ymm6, %ymm5
	movq	104(%rsp), %r8
	andq	$-64, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_decrypt$25
	.p2align	5
.L_aegis128x2_decrypt$26:
	vmovdqu	(%rdi,%r9), %ymm0
	vmovdqu	32(%rdi,%r9), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$64, %r9
.L_aegis128x2_decrypt$25:
	cmpq	%r8, %r9
	jb  	.L_aegis128x2_decrypt$26
	movq	104(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis128x2_decrypt$18
	addq	%r9, %rdi
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %r10
	andq	$32, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$24
	vmovdqu	(%rdi,%r9), %ymm0
	vmovdqu	%ymm0, 32(%rsp,%r9)
	addq	$32, %r9
.L_aegis128x2_decrypt$24:
	movq	%r8, %r10
	andq	$16, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$23
	vmovdqu	(%rdi,%r9), %xmm0
	vmovdqu	%xmm0, 32(%rsp,%r9)
	addq	$16, %r9
.L_aegis128x2_decrypt$23:
	movq	%r8, %r10
	andq	$8, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$22
	movq	(%rdi,%r9), %r10
	movq	%r10, 32(%rsp,%r9)
	addq	$8, %r9
.L_aegis128x2_decrypt$22:
	movq	%r8, %r10
	andq	$4, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$21
	movl	(%rdi,%r9), %r10d
	movl	%r10d, 32(%rsp,%r9)
	addq	$4, %r9
.L_aegis128x2_decrypt$21:
	movq	%r8, %r10
	andq	$2, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$20
	movw	(%rdi,%r9), %r10w
	movw	%r10w, 32(%rsp,%r9)
	addq	$2, %r9
.L_aegis128x2_decrypt$20:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis128x2_decrypt$19
	movb	(%rdi,%r9), %dil
	movb	%dil, 32(%rsp,%r9)
.L_aegis128x2_decrypt$19:
	vmovdqu	32(%rsp), %ymm0
	vmovdqu	64(%rsp), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
.L_aegis128x2_decrypt$18:
	movq	96(%rsp), %r8
	andq	$-64, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_decrypt$16
	.p2align	5
.L_aegis128x2_decrypt$17:
	vmovdqu	(%rdx,%r9), %ymm6
	vmovdqu	32(%rdx,%r9), %ymm0
// declassify_val u256 %ymm6
// declassify_val u256 %ymm0
	vaesenc	%ymm6, %ymm7, %ymm10
	vaesenc	%ymm0, %ymm9, %ymm11
	vpand	%ymm9, %ymm2, %ymm14
	vpand	%ymm7, %ymm8, %ymm12
	vpxor	%ymm4, %ymm8, %ymm15
	vpxor	%ymm1, %ymm2, %ymm13
	vpxor	%ymm14, %ymm15, %ymm14
	vpxor	%ymm12, %ymm13, %ymm13
	vpxor	%ymm5, %ymm10, %ymm10
	vpxor	%ymm3, %ymm11, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm13, %ymm11, %ymm3
	vpxor	%ymm14, %ymm10, %ymm5
	vpxor	%ymm14, %ymm6, %ymm6
	vpxor	%ymm13, %ymm0, %ymm0
	vmovdqu	%ymm6, (%rsi,%r9)
	vmovdqu	%ymm0, 32(%rsi,%r9)
	addq	$64, %r9
.L_aegis128x2_decrypt$16:
	cmpq	%r8, %r9
	jb  	.L_aegis128x2_decrypt$17
	movq	96(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis128x2_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %r10
	andq	$32, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$15
	vmovdqu	(%rdx,%r9), %ymm0
	vmovdqu	%ymm0, 32(%rsp,%r9)
	addq	$32, %r9
.L_aegis128x2_decrypt$15:
	movq	%r8, %r10
	andq	$16, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$14
	vmovdqu	(%rdx,%r9), %xmm0
	vmovdqu	%xmm0, 32(%rsp,%r9)
	addq	$16, %r9
.L_aegis128x2_decrypt$14:
	movq	%r8, %r10
	andq	$8, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$13
	movq	(%rdx,%r9), %r10
	movq	%r10, 32(%rsp,%r9)
	addq	$8, %r9
.L_aegis128x2_decrypt$13:
	movq	%r8, %r10
	andq	$4, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$12
	movl	(%rdx,%r9), %r10d
	movl	%r10d, 32(%rsp,%r9)
	addq	$4, %r9
.L_aegis128x2_decrypt$12:
	movq	%r8, %r10
	andq	$2, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$11
	movw	(%rdx,%r9), %r10w
	movw	%r10w, 32(%rsp,%r9)
	addq	$2, %r9
.L_aegis128x2_decrypt$11:
	movq	%r8, %r10
	andq	$1, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$10
	movb	(%rdx,%r9), %dl
	movb	%dl, 32(%rsp,%r9)
.L_aegis128x2_decrypt$10:
	vmovdqu	32(%rsp), %ymm6
	vmovdqu	64(%rsp), %ymm0
// declassify_val u256 %ymm6
// declassify_val u256 %ymm0
	vpand	%ymm9, %ymm2, %ymm14
	vpand	%ymm7, %ymm8, %ymm12
	vpxor	%ymm4, %ymm8, %ymm15
	vpxor	%ymm1, %ymm2, %ymm13
	vpxor	%ymm14, %ymm15, %ymm14
	vpxor	%ymm12, %ymm13, %ymm13
	vpxor	%ymm14, %ymm6, %ymm6
	vpxor	%ymm13, %ymm0, %ymm0
	vmovq	%r8, %xmm10
	vpbroadcastb	%xmm10, %ymm10
	vpcmpgtb	glob_data + 32(%rip), %ymm10, %ymm11
	vpcmpgtb	glob_data + 0(%rip), %ymm10, %ymm10
	vpand	%ymm6, %ymm11, %ymm11
	vpand	%ymm0, %ymm10, %ymm10
	vaesenc	%ymm11, %ymm7, %ymm11
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm10, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm11, %ymm5, %ymm5
	vmovdqu	%ymm6, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %r10
	andq	$32, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$9
	vmovdqu	32(%rsp,%r9), %ymm0
	vmovdqu	%ymm0, (%rsi,%r9)
	addq	$32, %r9
.L_aegis128x2_decrypt$9:
	movq	%r8, %r10
	andq	$16, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$8
	vmovdqu	32(%rsp,%r9), %xmm0
	vmovdqu	%xmm0, (%rsi,%r9)
	addq	$16, %r9
.L_aegis128x2_decrypt$8:
	movq	%r8, %r10
	andq	$8, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$7
	movq	32(%rsp,%r9), %r10
	movq	%r10, (%rsi,%r9)
	addq	$8, %r9
.L_aegis128x2_decrypt$7:
	movq	%r8, %r10
	andq	$4, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$6
	movl	32(%rsp,%r9), %r10d
	movl	%r10d, (%rsi,%r9)
	addq	$4, %r9
.L_aegis128x2_decrypt$6:
	movq	%r8, %r10
	andq	$2, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_decrypt$5
	movw	32(%rsp,%r9), %r10w
	movw	%r10w, (%rsi,%r9)
	addq	$2, %r9
.L_aegis128x2_decrypt$5:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis128x2_decrypt$3
	movb	32(%rsp,%r9), %dl
	movb	%dl, (%rsi,%r9)
.L_aegis128x2_decrypt$4:
.L_aegis128x2_decrypt$3:
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	shlq	$3, %rdx
	shlq	$3, %rsi
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm2, %ymm0
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	cmpb	$16, %cl
	je  	.L_aegis128x2_decrypt$1
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm7, %ymm1, %ymm1
	vextracti128	$1, %ymm0, %xmm2
	vextracti128	$1, %ymm1, %xmm3
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm3, %xmm1
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128x2_decrypt$2
.L_aegis128x2_decrypt$1:
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm8, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	(%rax), %xmm1
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
	.type	_aegis128x2_encrypt, %function
_aegis128x2_encrypt:
	movq	%rsp, %r11
	leaq	-128(%rsp), %rsp
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
	movq	%r9, 96(%rsp)
// declassify_val u64 96(%rsp)
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 104(%rsp)
// declassify_val u64 104(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vbroadcasti128	(%r9), %ymm0
	vbroadcasti128	(%r8), %ymm1
// declassify_val u256 %ymm1
	vpxor	%ymm1, %ymm0, %ymm4
	vpxor	glob_data + 128(%rip), %ymm0, %ymm7
	vmovdqu	%ymm4, %ymm6
	vmovdqu	glob_data + 96(%rip), %ymm5
	vmovdqu	glob_data + 128(%rip), %ymm3
	vmovdqu	glob_data + 96(%rip), %ymm9
	vmovdqu	%ymm7, %ymm2
	vpxor	glob_data + 96(%rip), %ymm0, %ymm8
	vpxor	glob_data + 64(%rip), %ymm9, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm9
	vaesenc	%ymm1, %ymm9, %ymm7
	vaesenc	%ymm9, %ymm8, %ymm9
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm7, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm9, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm10
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm9
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm10, %ymm11
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm10, %ymm3, %ymm10
	vaesenc	%ymm2, %ymm4, %ymm2
	vaesenc	%ymm3, %ymm5, %ymm3
	vpxor	%ymm11, %ymm4, %ymm4
	vaesenc	%ymm5, %ymm6, %ymm5
	vpxor	%ymm9, %ymm6, %ymm6
	vpxor	glob_data + 64(%rip), %ymm10, %ymm9
	vpxor	glob_data + 64(%rip), %ymm7, %ymm7
	vaesenc	%ymm1, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm2, %ymm8
	vaesenc	%ymm9, %ymm3, %ymm9
	vaesenc	%ymm2, %ymm4, %ymm1
	vaesenc	%ymm3, %ymm5, %ymm2
	vpxor	%ymm0, %ymm4, %ymm3
	vaesenc	%ymm5, %ymm6, %ymm4
	vpxor	%ymm10, %ymm6, %ymm5
	movq	104(%rsp), %r8
	andq	$-64, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_encrypt$25
	.p2align	5
.L_aegis128x2_encrypt$26:
	vmovdqu	(%rdi,%r9), %ymm0
	vmovdqu	32(%rdi,%r9), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
	addq	$64, %r9
.L_aegis128x2_encrypt$25:
	cmpq	%r8, %r9
	jb  	.L_aegis128x2_encrypt$26
	movq	104(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis128x2_encrypt$18
	addq	%r9, %rdi
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %r10
	andq	$32, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$24
	vmovdqu	(%rdi,%r9), %ymm0
	vmovdqu	%ymm0, 32(%rsp,%r9)
	addq	$32, %r9
.L_aegis128x2_encrypt$24:
	movq	%r8, %r10
	andq	$16, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$23
	vmovdqu	(%rdi,%r9), %xmm0
	vmovdqu	%xmm0, 32(%rsp,%r9)
	addq	$16, %r9
.L_aegis128x2_encrypt$23:
	movq	%r8, %r10
	andq	$8, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$22
	movq	(%rdi,%r9), %r10
	movq	%r10, 32(%rsp,%r9)
	addq	$8, %r9
.L_aegis128x2_encrypt$22:
	movq	%r8, %r10
	andq	$4, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$21
	movl	(%rdi,%r9), %r10d
	movl	%r10d, 32(%rsp,%r9)
	addq	$4, %r9
.L_aegis128x2_encrypt$21:
	movq	%r8, %r10
	andq	$2, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$20
	movw	(%rdi,%r9), %r10w
	movw	%r10w, 32(%rsp,%r9)
	addq	$2, %r9
.L_aegis128x2_encrypt$20:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis128x2_encrypt$19
	movb	(%rdi,%r9), %dil
	movb	%dil, 32(%rsp,%r9)
.L_aegis128x2_encrypt$19:
	vmovdqu	32(%rsp), %ymm0
	vmovdqu	64(%rsp), %ymm6
	vaesenc	%ymm0, %ymm7, %ymm10
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm10, %ymm5, %ymm5
.L_aegis128x2_encrypt$18:
	movq	96(%rsp), %r8
	andq	$-64, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128x2_encrypt$16
	.p2align	5
.L_aegis128x2_encrypt$17:
	vmovdqu	(%rsi,%r9), %ymm0
	vmovdqu	32(%rsi,%r9), %ymm6
	vpand	%ymm9, %ymm2, %ymm14
	vpand	%ymm7, %ymm8, %ymm12
	vpxor	%ymm4, %ymm8, %ymm15
	vpxor	%ymm1, %ymm2, %ymm13
	vpxor	%ymm14, %ymm15, %ymm14
	vpxor	%ymm12, %ymm13, %ymm13
	vpxor	%ymm14, %ymm0, %ymm10
	vpxor	%ymm13, %ymm6, %ymm11
// declassify_val u256 %ymm10
// declassify_val u256 %ymm11
	vaesenc	%ymm0, %ymm7, %ymm0
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm6, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm10, (%rdx,%r9)
	vmovdqu	%ymm11, 32(%rdx,%r9)
	addq	$64, %r9
.L_aegis128x2_encrypt$16:
	cmpq	%r8, %r9
	jb  	.L_aegis128x2_encrypt$17
	movq	96(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis128x2_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%ymm0, %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rsp)
	vmovdqu	%ymm0, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %r10
	andq	$32, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$15
	vmovdqu	(%rsi,%r9), %ymm0
	vmovdqu	%ymm0, 32(%rsp,%r9)
	addq	$32, %r9
.L_aegis128x2_encrypt$15:
	movq	%r8, %r10
	andq	$16, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$14
	vmovdqu	(%rsi,%r9), %xmm0
	vmovdqu	%xmm0, 32(%rsp,%r9)
	addq	$16, %r9
.L_aegis128x2_encrypt$14:
	movq	%r8, %r10
	andq	$8, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$13
	movq	(%rsi,%r9), %r10
	movq	%r10, 32(%rsp,%r9)
	addq	$8, %r9
.L_aegis128x2_encrypt$13:
	movq	%r8, %r10
	andq	$4, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$12
	movl	(%rsi,%r9), %r10d
	movl	%r10d, 32(%rsp,%r9)
	addq	$4, %r9
.L_aegis128x2_encrypt$12:
	movq	%r8, %r10
	andq	$2, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$11
	movw	(%rsi,%r9), %r10w
	movw	%r10w, 32(%rsp,%r9)
	addq	$2, %r9
.L_aegis128x2_encrypt$11:
	movq	%r8, %r10
	andq	$1, %r10
	cmpq	$0, %r10
	je  	.L_aegis128x2_encrypt$10
	movb	(%rsi,%r9), %dil
	movb	%dil, 32(%rsp,%r9)
.L_aegis128x2_encrypt$10:
	vmovdqu	32(%rsp), %ymm0
	vmovdqu	64(%rsp), %ymm6
	vpand	%ymm9, %ymm2, %ymm14
	vpand	%ymm7, %ymm8, %ymm12
	vpxor	%ymm4, %ymm8, %ymm15
	vpxor	%ymm1, %ymm2, %ymm13
	vpxor	%ymm14, %ymm15, %ymm14
	vpxor	%ymm12, %ymm13, %ymm13
	vpxor	%ymm14, %ymm0, %ymm10
	vpxor	%ymm13, %ymm6, %ymm11
// declassify_val u256 %ymm10
// declassify_val u256 %ymm11
	vaesenc	%ymm0, %ymm7, %ymm0
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm6, %ymm9, %ymm6
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm6, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm0, %ymm5, %ymm5
	vmovdqu	%ymm10, 32(%rsp)
	vmovdqu	%ymm11, 64(%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %rsi
	andq	$32, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_encrypt$9
	vmovdqu	32(%rsp,%r9), %ymm0
	vmovdqu	%ymm0, (%rdx,%r9)
	addq	$32, %r9
.L_aegis128x2_encrypt$9:
	movq	%r8, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_encrypt$8
	vmovdqu	32(%rsp,%r9), %xmm0
	vmovdqu	%xmm0, (%rdx,%r9)
	addq	$16, %r9
.L_aegis128x2_encrypt$8:
	movq	%r8, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_encrypt$7
	movq	32(%rsp,%r9), %rsi
	movq	%rsi, (%rdx,%r9)
	addq	$8, %r9
.L_aegis128x2_encrypt$7:
	movq	%r8, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_encrypt$6
	movl	32(%rsp,%r9), %esi
	movl	%esi, (%rdx,%r9)
	addq	$4, %r9
.L_aegis128x2_encrypt$6:
	movq	%r8, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128x2_encrypt$5
	movw	32(%rsp,%r9), %si
	movw	%si, (%rdx,%r9)
	addq	$2, %r9
.L_aegis128x2_encrypt$5:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis128x2_encrypt$3
	movb	32(%rsp,%r9), %dil
	movb	%dil, (%rdx,%r9)
.L_aegis128x2_encrypt$4:
.L_aegis128x2_encrypt$3:
	movq	104(%rsp), %rdx
	movq	96(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rdx
	shlq	$3, %rsi
	movq	%rdx, (%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rsi, 24(%rsp)
	vpxor	(%rsp), %ymm2, %ymm0
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm10
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm10, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	vaesenc	%ymm0, %ymm7, %ymm6
	vaesenc	%ymm7, %ymm8, %ymm7
	vaesenc	%ymm0, %ymm9, %ymm0
	vaesenc	%ymm8, %ymm1, %ymm8
	vaesenc	%ymm9, %ymm2, %ymm9
	vaesenc	%ymm1, %ymm3, %ymm1
	vaesenc	%ymm2, %ymm4, %ymm2
	vpxor	%ymm0, %ymm3, %ymm3
	vaesenc	%ymm4, %ymm5, %ymm4
	vpxor	%ymm6, %ymm5, %ymm5
	cmpb	$16, %cl
	je  	.L_aegis128x2_encrypt$1
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm1, %ymm3, %ymm1
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm8, %ymm1, %ymm1
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm7, %ymm1, %ymm1
	vextracti128	$1, %ymm0, %xmm2
	vextracti128	$1, %ymm1, %xmm3
	vpxor	%xmm0, %xmm2, %xmm0
	vpxor	%xmm1, %xmm3, %xmm1
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	jmp 	.L_aegis128x2_encrypt$2
.L_aegis128x2_encrypt$1:
	vpxor	%ymm4, %ymm5, %ymm0
	vpxor	%ymm2, %ymm0, %ymm0
	vpxor	%ymm9, %ymm0, %ymm0
	vpxor	%ymm3, %ymm0, %ymm0
	vpxor	%ymm1, %ymm0, %ymm0
	vpxor	%ymm8, %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpxor	%xmm0, %xmm1, %xmm0
	vmovdqu	%xmm0, (%rax)
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
G$iota1:
	.byte	 32,  33,  34,  35,  36,  37,  38,  39,  40,  41,  42,  43,  44,  45,  46,  47
	.byte	 48,  49,  50,  51,  52,  53,  54,  55,  56,  57,  58,  59,  60,  61,  62,  63
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
