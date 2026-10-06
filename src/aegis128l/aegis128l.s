	.att_syntax
	.text
	.p2align	5
	.global	_aegis128l_mac_verify
	.global	_aegis128l_mac
	.global	_aegis128l_decrypt
	.global	_aegis128l_encrypt
	.type	_aegis128l_mac_verify, %function
_aegis128l_mac_verify:
	movq	%rsp, %r10
	leaq	-64(%rsp), %rsp
	andq	$-16, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 48(%rsp)
// declassify_val u64 48(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%rsi), %xmm0
	vmovdqu	(%rdi), %xmm1
// declassify_val u128 %xmm1
	vpxor	%xmm1, %xmm0, %xmm9
	vpxor	glob_data + 48(%rip), %xmm0, %xmm3
	vmovdqu	%xmm9, %xmm2
	vmovdqu	glob_data + 32(%rip), %xmm10
	vmovdqu	glob_data + 48(%rip), %xmm8
	vmovdqu	glob_data + 32(%rip), %xmm6
	vmovdqu	%xmm3, %xmm7
	vpxor	glob_data + 32(%rip), %xmm0, %xmm5
	vmovdqu	%xmm3, %xmm4
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	movq	48(%rsp), %rsi
	andq	$-32, %rsi
	xorl	%r8d, %r8d
	jmp 	.L_aegis128l_mac_verify$9
	.p2align	5
.L_aegis128l_mac_verify$10:
	vmovdqu	(%rdx,%r8), %xmm1
	vmovdqu	16(%rdx,%r8), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	addq	$32, %r8
.L_aegis128l_mac_verify$9:
	cmpq	%rsi, %r8
	jb  	.L_aegis128l_mac_verify$10
	movq	48(%rsp), %rdi
	subq	%r8, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_mac_verify$3
	addq	%r8, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac_verify$8
	vmovdqu	(%rdx,%r8), %xmm0
	vmovdqu	%xmm0, 16(%rsp,%r8)
	addq	$16, %r8
.L_aegis128l_mac_verify$8:
	movq	%rdi, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac_verify$7
	movq	(%rdx,%r8), %rsi
	movq	%rsi, 16(%rsp,%r8)
	addq	$8, %r8
.L_aegis128l_mac_verify$7:
	movq	%rdi, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac_verify$6
	movl	(%rdx,%r8), %esi
	movl	%esi, 16(%rsp,%r8)
	addq	$4, %r8
.L_aegis128l_mac_verify$6:
	movq	%rdi, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac_verify$5
	movw	(%rdx,%r8), %si
	movw	%si, 16(%rsp,%r8)
	addq	$2, %r8
.L_aegis128l_mac_verify$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis128l_mac_verify$4
	movb	(%rdx,%r8), %dl
	movb	%dl, 16(%rsp,%r8)
.L_aegis128l_mac_verify$4:
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
.L_aegis128l_mac_verify$3:
	movzbq	%cl, %rdx
	movq	48(%rsp), %rsi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm0
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	cmpb	$16, %cl
	je  	.L_aegis128l_mac_verify$1
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm7, %xmm9, %xmm1
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128l_mac_verify$2
.L_aegis128l_mac_verify$1:
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vmovdqu	(%rax), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis128l_mac_verify$2:
	movq	%r10, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$64, %rsp
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis128l_mac, %function
_aegis128l_mac:
	movq	%rsp, %r10
	leaq	-64(%rsp), %rsp
	andq	$-16, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 48(%rsp)
// declassify_val u64 48(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%rsi), %xmm0
	vmovdqu	(%rdi), %xmm1
// declassify_val u128 %xmm1
	vpxor	%xmm1, %xmm0, %xmm9
	vpxor	glob_data + 48(%rip), %xmm0, %xmm3
	vmovdqu	%xmm9, %xmm2
	vmovdqu	glob_data + 32(%rip), %xmm10
	vmovdqu	glob_data + 48(%rip), %xmm8
	vmovdqu	glob_data + 32(%rip), %xmm6
	vmovdqu	%xmm3, %xmm7
	vpxor	glob_data + 32(%rip), %xmm0, %xmm5
	vmovdqu	%xmm3, %xmm4
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	movq	48(%rsp), %rsi
	andq	$-32, %rsi
	xorl	%r8d, %r8d
	jmp 	.L_aegis128l_mac$9
	.p2align	5
.L_aegis128l_mac$10:
	vmovdqu	(%rdx,%r8), %xmm1
	vmovdqu	16(%rdx,%r8), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	addq	$32, %r8
.L_aegis128l_mac$9:
	cmpq	%rsi, %r8
	jb  	.L_aegis128l_mac$10
	movq	48(%rsp), %rdi
	subq	%r8, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_mac$3
	addq	%r8, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac$8
	vmovdqu	(%rdx,%r8), %xmm0
	vmovdqu	%xmm0, 16(%rsp,%r8)
	addq	$16, %r8
.L_aegis128l_mac$8:
	movq	%rdi, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac$7
	movq	(%rdx,%r8), %rsi
	movq	%rsi, 16(%rsp,%r8)
	addq	$8, %r8
.L_aegis128l_mac$7:
	movq	%rdi, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac$6
	movl	(%rdx,%r8), %esi
	movl	%esi, 16(%rsp,%r8)
	addq	$4, %r8
.L_aegis128l_mac$6:
	movq	%rdi, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_mac$5
	movw	(%rdx,%r8), %si
	movw	%si, 16(%rsp,%r8)
	addq	$2, %r8
.L_aegis128l_mac$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis128l_mac$4
	movb	(%rdx,%r8), %dl
	movb	%dl, 16(%rsp,%r8)
.L_aegis128l_mac$4:
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
.L_aegis128l_mac$3:
	movzbq	%cl, %rdx
	movq	48(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm1
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	cmpb	$16, %cl
	je  	.L_aegis128l_mac$1
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm7, %xmm9, %xmm1
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	jmp 	.L_aegis128l_mac$2
.L_aegis128l_mac$1:
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
.L_aegis128l_mac$2:
	movq	%rdi, %rax
	movq	%r10, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$64, %rsp
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis128l_decrypt, %function
_aegis128l_decrypt:
	movq	%rsp, %r11
	leaq	-64(%rsp), %rsp
	andq	$-16, %rsp
	movq	%rdi, %r8
	movq	(%r8), %rdx
// declassify_val u64 %rdx
	movq	8(%r8), %rsi
	movq	%rsi, 48(%rsp)
// declassify_val u64 48(%rsp)
	movq	16(%r8), %rax
// declassify_val u64 %rax
	movb	24(%r8), %cl
// declassify_val u8 %cl
	movq	32(%r8), %rsi
// declassify_val u64 %rsi
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 56(%rsp)
// declassify_val u64 56(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%r8), %xmm1
// declassify_val u128 %xmm1
	vpxor	%xmm1, %xmm0, %xmm9
	vpxor	glob_data + 48(%rip), %xmm0, %xmm3
	vmovdqu	%xmm9, %xmm2
	vmovdqu	glob_data + 32(%rip), %xmm10
	vmovdqu	glob_data + 48(%rip), %xmm8
	vmovdqu	glob_data + 32(%rip), %xmm6
	vmovdqu	%xmm3, %xmm7
	vpxor	glob_data + 32(%rip), %xmm0, %xmm5
	vmovdqu	%xmm3, %xmm4
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	movq	56(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_decrypt$22
	.p2align	5
.L_aegis128l_decrypt$23:
	vmovdqu	(%rdi,%r9), %xmm1
	vmovdqu	16(%rdi,%r9), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	addq	$32, %r9
.L_aegis128l_decrypt$22:
	cmpq	%r8, %r9
	jb  	.L_aegis128l_decrypt$23
	movq	56(%rsp), %r10
	subq	%r9, %r10
	cmpq	$0, %r10
	jbe 	.L_aegis128l_decrypt$16
	addq	%r9, %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$21
	vmovdqu	(%rdi,%r8), %xmm0
	vmovdqu	%xmm0, 16(%rsp,%r8)
	addq	$16, %r8
.L_aegis128l_decrypt$21:
	movq	%r10, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$20
	movq	(%rdi,%r8), %r9
	movq	%r9, 16(%rsp,%r8)
	addq	$8, %r8
.L_aegis128l_decrypt$20:
	movq	%r10, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$19
	movl	(%rdi,%r8), %r9d
	movl	%r9d, 16(%rsp,%r8)
	addq	$4, %r8
.L_aegis128l_decrypt$19:
	movq	%r10, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$18
	movw	(%rdi,%r8), %r9w
	movw	%r9w, 16(%rsp,%r8)
	addq	$2, %r8
.L_aegis128l_decrypt$18:
	andq	$1, %r10
	cmpq	$0, %r10
	je  	.L_aegis128l_decrypt$17
	movb	(%rdi,%r8), %dil
	movb	%dil, 16(%rsp,%r8)
.L_aegis128l_decrypt$17:
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
.L_aegis128l_decrypt$16:
	movq	48(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_decrypt$14
	.p2align	5
.L_aegis128l_decrypt$15:
	vmovdqu	(%rdx,%r9), %xmm3
	vmovdqu	16(%rdx,%r9), %xmm0
// declassify_val u128 %xmm3
// declassify_val u128 %xmm0
	vaesenc	%xmm3, %xmm4, %xmm1
	vaesenc	%xmm0, %xmm6, %xmm11
	vpand	%xmm6, %xmm8, %xmm14
	vpand	%xmm4, %xmm5, %xmm12
	vpxor	%xmm10, %xmm5, %xmm15
	vpxor	%xmm7, %xmm8, %xmm13
	vpxor	%xmm14, %xmm15, %xmm14
	vpxor	%xmm12, %xmm13, %xmm13
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm9, %xmm11, %xmm11
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm8, %xmm10, %xmm8
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm13, %xmm11, %xmm9
	vpxor	%xmm14, %xmm1, %xmm2
	vpxor	%xmm14, %xmm3, %xmm1
	vpxor	%xmm13, %xmm0, %xmm0
	vmovdqu	%xmm1, (%rsi,%r9)
	vmovdqu	%xmm0, 16(%rsi,%r9)
	addq	$32, %r9
.L_aegis128l_decrypt$14:
	cmpq	%r8, %r9
	jb  	.L_aegis128l_decrypt$15
	movq	48(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$13
	vmovdqu	(%rdx,%r8), %xmm0
	vmovdqu	%xmm0, 16(%rsp,%r8)
	addq	$16, %r8
.L_aegis128l_decrypt$13:
	movq	%rdi, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$12
	movq	(%rdx,%r8), %r9
	movq	%r9, 16(%rsp,%r8)
	addq	$8, %r8
.L_aegis128l_decrypt$12:
	movq	%rdi, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$11
	movl	(%rdx,%r8), %r9d
	movl	%r9d, 16(%rsp,%r8)
	addq	$4, %r8
.L_aegis128l_decrypt$11:
	movq	%rdi, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$10
	movw	(%rdx,%r8), %r9w
	movw	%r9w, 16(%rsp,%r8)
	addq	$2, %r8
.L_aegis128l_decrypt$10:
	movq	%rdi, %r9
	andq	$1, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$9
	movb	(%rdx,%r8), %dl
	movb	%dl, 16(%rsp,%r8)
.L_aegis128l_decrypt$9:
	vmovdqu	16(%rsp), %xmm3
	vmovdqu	32(%rsp), %xmm0
// declassify_val u128 %xmm3
// declassify_val u128 %xmm0
	vpand	%xmm6, %xmm8, %xmm14
	vpand	%xmm4, %xmm5, %xmm12
	vpxor	%xmm10, %xmm5, %xmm15
	vpxor	%xmm7, %xmm8, %xmm13
	vpxor	%xmm14, %xmm15, %xmm14
	vpxor	%xmm12, %xmm13, %xmm13
	vpxor	%xmm14, %xmm3, %xmm1
	vpxor	%xmm13, %xmm0, %xmm0
	vmovq	%rdi, %xmm3
	vpbroadcastb	%xmm3, %xmm3
	vpcmpgtb	glob_data + 16(%rip), %xmm3, %xmm11
	vpcmpgtb	glob_data + 0(%rip), %xmm3, %xmm3
	vpand	%xmm1, %xmm11, %xmm11
	vpand	%xmm0, %xmm3, %xmm3
	vaesenc	%xmm11, %xmm4, %xmm11
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm3
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm3, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm11, %xmm2, %xmm2
	vmovdqu	%xmm1, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$8
	vmovdqu	16(%rsp,%r8), %xmm0
	vmovdqu	%xmm0, (%rsi,%r8)
	addq	$16, %r8
.L_aegis128l_decrypt$8:
	movq	%rdi, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$7
	movq	16(%rsp,%r8), %r9
	movq	%r9, (%rsi,%r8)
	addq	$8, %r8
.L_aegis128l_decrypt$7:
	movq	%rdi, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$6
	movl	16(%rsp,%r8), %r9d
	movl	%r9d, (%rsi,%r8)
	addq	$4, %r8
.L_aegis128l_decrypt$6:
	movq	%rdi, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_decrypt$5
	movw	16(%rsp,%r8), %r9w
	movw	%r9w, (%rsi,%r8)
	addq	$2, %r8
.L_aegis128l_decrypt$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis128l_decrypt$3
	movb	16(%rsp,%r8), %dl
	movb	%dl, (%rsi,%r8)
.L_aegis128l_decrypt$4:
.L_aegis128l_decrypt$3:
	movq	56(%rsp), %rsi
	movq	48(%rsp), %rdx
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm0
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	cmpb	$16, %cl
	je  	.L_aegis128l_decrypt$1
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm7, %xmm9, %xmm1
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128l_decrypt$2
.L_aegis128l_decrypt$1:
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vmovdqu	(%rax), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis128l_decrypt$2:
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$64, %rsp
	vmovdqu	%xmm2, 48(%rsp)
	vmovdqu	%xmm2, 32(%rsp)
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis128l_encrypt, %function
_aegis128l_encrypt:
	movq	%rsp, %r11
	leaq	-64(%rsp), %rsp
	andq	$-16, %rsp
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
	movq	%r9, 48(%rsp)
// declassify_val u64 48(%rsp)
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 56(%rsp)
// declassify_val u64 56(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%r8), %xmm1
// declassify_val u128 %xmm1
	vpxor	%xmm1, %xmm0, %xmm9
	vpxor	glob_data + 48(%rip), %xmm0, %xmm3
	vmovdqu	%xmm9, %xmm2
	vmovdqu	glob_data + 32(%rip), %xmm10
	vmovdqu	glob_data + 48(%rip), %xmm8
	vmovdqu	glob_data + 32(%rip), %xmm6
	vmovdqu	%xmm3, %xmm7
	vpxor	glob_data + 32(%rip), %xmm0, %xmm5
	vmovdqu	%xmm3, %xmm4
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	movq	56(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_encrypt$22
	.p2align	5
.L_aegis128l_encrypt$23:
	vmovdqu	(%rdi,%r9), %xmm1
	vmovdqu	16(%rdi,%r9), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	addq	$32, %r9
.L_aegis128l_encrypt$22:
	cmpq	%r8, %r9
	jb  	.L_aegis128l_encrypt$23
	movq	56(%rsp), %r10
	subq	%r9, %r10
	cmpq	$0, %r10
	jbe 	.L_aegis128l_encrypt$16
	addq	%r9, %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%r10, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$21
	vmovdqu	(%rdi,%r8), %xmm0
	vmovdqu	%xmm0, 16(%rsp,%r8)
	addq	$16, %r8
.L_aegis128l_encrypt$21:
	movq	%r10, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$20
	movq	(%rdi,%r8), %r9
	movq	%r9, 16(%rsp,%r8)
	addq	$8, %r8
.L_aegis128l_encrypt$20:
	movq	%r10, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$19
	movl	(%rdi,%r8), %r9d
	movl	%r9d, 16(%rsp,%r8)
	addq	$4, %r8
.L_aegis128l_encrypt$19:
	movq	%r10, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$18
	movw	(%rdi,%r8), %r9w
	movw	%r9w, 16(%rsp,%r8)
	addq	$2, %r8
.L_aegis128l_encrypt$18:
	andq	$1, %r10
	cmpq	$0, %r10
	je  	.L_aegis128l_encrypt$17
	movb	(%rdi,%r8), %dil
	movb	%dil, 16(%rsp,%r8)
.L_aegis128l_encrypt$17:
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vaesenc	%xmm1, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
.L_aegis128l_encrypt$16:
	movq	48(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_encrypt$14
	.p2align	5
.L_aegis128l_encrypt$15:
	vmovdqu	(%rsi,%r9), %xmm1
	vmovdqu	16(%rsi,%r9), %xmm0
	vpand	%xmm6, %xmm8, %xmm14
	vpand	%xmm4, %xmm5, %xmm12
	vpxor	%xmm10, %xmm5, %xmm15
	vpxor	%xmm7, %xmm8, %xmm13
	vpxor	%xmm14, %xmm15, %xmm14
	vpxor	%xmm12, %xmm13, %xmm13
	vpxor	%xmm14, %xmm1, %xmm3
	vpxor	%xmm13, %xmm0, %xmm11
// declassify_val u128 %xmm3
// declassify_val u128 %xmm11
	vaesenc	%xmm1, %xmm4, %xmm1
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqu	%xmm3, (%rdx,%r9)
	vmovdqu	%xmm11, 16(%rdx,%r9)
	addq	$32, %r9
.L_aegis128l_encrypt$14:
	cmpq	%r8, %r9
	jb  	.L_aegis128l_encrypt$15
	movq	48(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %r9
	andq	$16, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$13
	vmovdqu	(%rsi,%r8), %xmm0
	vmovdqu	%xmm0, 16(%rsp,%r8)
	addq	$16, %r8
.L_aegis128l_encrypt$13:
	movq	%rdi, %r9
	andq	$8, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$12
	movq	(%rsi,%r8), %r9
	movq	%r9, 16(%rsp,%r8)
	addq	$8, %r8
.L_aegis128l_encrypt$12:
	movq	%rdi, %r9
	andq	$4, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$11
	movl	(%rsi,%r8), %r9d
	movl	%r9d, 16(%rsp,%r8)
	addq	$4, %r8
.L_aegis128l_encrypt$11:
	movq	%rdi, %r9
	andq	$2, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$10
	movw	(%rsi,%r8), %r9w
	movw	%r9w, 16(%rsp,%r8)
	addq	$2, %r8
.L_aegis128l_encrypt$10:
	movq	%rdi, %r9
	andq	$1, %r9
	cmpq	$0, %r9
	je  	.L_aegis128l_encrypt$9
	movb	(%rsi,%r8), %sil
	movb	%sil, 16(%rsp,%r8)
.L_aegis128l_encrypt$9:
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vpand	%xmm6, %xmm8, %xmm14
	vpand	%xmm4, %xmm5, %xmm12
	vpxor	%xmm10, %xmm5, %xmm15
	vpxor	%xmm7, %xmm8, %xmm13
	vpxor	%xmm14, %xmm15, %xmm14
	vpxor	%xmm12, %xmm13, %xmm13
	vpxor	%xmm14, %xmm1, %xmm3
	vpxor	%xmm13, %xmm0, %xmm11
// declassify_val u128 %xmm3
// declassify_val u128 %xmm11
	vaesenc	%xmm1, %xmm4, %xmm1
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm1, %xmm2, %xmm2
	vmovdqu	%xmm3, 16(%rsp)
	vmovdqu	%xmm11, 32(%rsp)
	xorl	%r8d, %r8d
	movq	%rdi, %rsi
	andq	$16, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_encrypt$8
	vmovdqu	16(%rsp,%r8), %xmm0
	vmovdqu	%xmm0, (%rdx,%r8)
	addq	$16, %r8
.L_aegis128l_encrypt$8:
	movq	%rdi, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_encrypt$7
	movq	16(%rsp,%r8), %rsi
	movq	%rsi, (%rdx,%r8)
	addq	$8, %r8
.L_aegis128l_encrypt$7:
	movq	%rdi, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_encrypt$6
	movl	16(%rsp,%r8), %esi
	movl	%esi, (%rdx,%r8)
	addq	$4, %r8
.L_aegis128l_encrypt$6:
	movq	%rdi, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis128l_encrypt$5
	movw	16(%rsp,%r8), %si
	movw	%si, (%rdx,%r8)
	addq	$2, %r8
.L_aegis128l_encrypt$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis128l_encrypt$3
	movb	16(%rsp,%r8), %sil
	movb	%sil, (%rdx,%r8)
.L_aegis128l_encrypt$4:
.L_aegis128l_encrypt$3:
	movq	56(%rsp), %rsi
	movq	48(%rsp), %rdx
	xorl	%edi, %edi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm0
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm11, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm0, %xmm4, %xmm3
	vaesenc	%xmm4, %xmm5, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm5, %xmm7, %xmm5
	vaesenc	%xmm6, %xmm8, %xmm6
	vaesenc	%xmm7, %xmm9, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vpxor	%xmm0, %xmm9, %xmm9
	vaesenc	%xmm10, %xmm2, %xmm10
	vpxor	%xmm3, %xmm2, %xmm2
	cmpb	$16, %cl
	je  	.L_aegis128l_encrypt$1
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm7, %xmm9, %xmm1
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm4, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	jmp 	.L_aegis128l_encrypt$2
.L_aegis128l_encrypt$1:
	vpxor	%xmm10, %xmm2, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
.L_aegis128l_encrypt$2:
	movq	%rdi, %rax
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
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
G$iota1:
	.byte	 16,  17,  18,  19,  20,  21,  22,  23,  24,  25,  26,  27,  28,  29,  30,  31
G$iota0:
	.byte	  0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12,  13,  14,  15
G$c1:
	.byte	219,  61,  24,  85, 109, 194,  47, 241,  32,  17,  49,  66, 115, 181,  40, 221
G$c0:
	.byte	  0,   1,   1,   2,   3,   5,   8,  13,  21,  34,  55,  89, 144, 233, 121,  98
	.ident	"Jasmin Compiler 2026.09.0"
	.section	".note.GNU-stack", "", %progbits
