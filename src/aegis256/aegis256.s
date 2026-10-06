	.att_syntax
	.text
	.p2align	5
	.global	_aegis256_mac_verify
	.global	_aegis256_mac
	.global	_aegis256_decrypt
	.global	_aegis256_encrypt
	.type	_aegis256_mac_verify, %function
_aegis256_mac_verify:
	movq	%rsp, %r10
	leaq	-32(%rsp), %rsp
	andq	$-16, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 16(%rsp)
// declassify_val u64 16(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vmovdqu	(%rdi), %xmm2
// declassify_val u128 %xmm2
	vmovdqu	16(%rdi), %xmm3
// declassify_val u128 %xmm3
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	glob_data + 32(%rip), %xmm0, %xmm6
	vpxor	glob_data + 16(%rip), %xmm1, %xmm7
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm5
	vmovdqu	glob_data + 16(%rip), %xmm9
	vmovdqu	glob_data + 32(%rip), %xmm8
	vmovdqu	%xmm6, %xmm10
	vaesenc	%xmm0, %xmm7, %xmm11
	vaesenc	%xmm7, %xmm10, %xmm6
	vaesenc	%xmm10, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	movq	16(%rsp), %rsi
	andq	$-16, %rsi
	xorl	%edi, %edi
	jmp 	.L_aegis256_mac_verify$8
	.p2align	5
.L_aegis256_mac_verify$9:
	vmovdqu	(%rdx,%rdi), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	addq	$16, %rdi
.L_aegis256_mac_verify$8:
	cmpq	%rsi, %rdi
	jb  	.L_aegis256_mac_verify$9
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	cmpq	$0, %rsi
	jbe 	.L_aegis256_mac_verify$3
	addq	%rdi, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%edi, %edi
	movq	%rsi, %r8
	andq	$8, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_mac_verify$7
	movq	(%rdx,%rdi), %r8
	movq	%r8, (%rsp,%rdi)
	addq	$8, %rdi
.L_aegis256_mac_verify$7:
	movq	%rsi, %r8
	andq	$4, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_mac_verify$6
	movl	(%rdx,%rdi), %r8d
	movl	%r8d, (%rsp,%rdi)
	addq	$4, %rdi
.L_aegis256_mac_verify$6:
	movq	%rsi, %r8
	andq	$2, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_mac_verify$5
	movw	(%rdx,%rdi), %r8w
	movw	%r8w, (%rsp,%rdi)
	addq	$2, %rdi
.L_aegis256_mac_verify$5:
	andq	$1, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256_mac_verify$4
	movb	(%rdx,%rdi), %dl
	movb	%dl, (%rsp,%rdi)
.L_aegis256_mac_verify$4:
	vmovdqu	(%rsp), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
.L_aegis256_mac_verify$3:
	movzbq	%cl, %rdx
	movq	16(%rsp), %rsi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm0
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	cmpb	$16, %cl
	je  	.L_aegis256_mac_verify$1
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm7, %xmm8, %xmm1
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm6, %xmm1, %xmm1
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis256_mac_verify$2
.L_aegis256_mac_verify$1:
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqu	(%rax), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis256_mac_verify$2:
	movq	%r10, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$32, %rsp
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis256_mac, %function
_aegis256_mac:
	movq	%rsp, %r10
	leaq	-32(%rsp), %rsp
	andq	$-16, %rsp
	movq	16(%rdi), %rax
// declassify_val u64 %rax
	movb	24(%rdi), %cl
// declassify_val u8 %cl
	movq	48(%rdi), %rdx
// declassify_val u64 %rdx
	movq	56(%rdi), %rsi
	movq	%rsi, 16(%rsp)
// declassify_val u64 16(%rsp)
	movq	64(%rdi), %rsi
// declassify_val u64 %rsi
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%rsi), %xmm0
	vmovdqu	16(%rsi), %xmm1
	vmovdqu	(%rdi), %xmm2
// declassify_val u128 %xmm2
	vmovdqu	16(%rdi), %xmm3
// declassify_val u128 %xmm3
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	glob_data + 32(%rip), %xmm0, %xmm6
	vpxor	glob_data + 16(%rip), %xmm1, %xmm7
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm5
	vmovdqu	glob_data + 16(%rip), %xmm9
	vmovdqu	glob_data + 32(%rip), %xmm8
	vmovdqu	%xmm6, %xmm10
	vaesenc	%xmm0, %xmm7, %xmm11
	vaesenc	%xmm7, %xmm10, %xmm6
	vaesenc	%xmm10, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	movq	16(%rsp), %rsi
	andq	$-16, %rsi
	xorl	%edi, %edi
	jmp 	.L_aegis256_mac$8
	.p2align	5
.L_aegis256_mac$9:
	vmovdqu	(%rdx,%rdi), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	addq	$16, %rdi
.L_aegis256_mac$8:
	cmpq	%rsi, %rdi
	jb  	.L_aegis256_mac$9
	movq	16(%rsp), %rsi
	subq	%rdi, %rsi
	cmpq	$0, %rsi
	jbe 	.L_aegis256_mac$3
	addq	%rdi, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%edi, %edi
	movq	%rsi, %r8
	andq	$8, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_mac$7
	movq	(%rdx,%rdi), %r8
	movq	%r8, (%rsp,%rdi)
	addq	$8, %rdi
.L_aegis256_mac$7:
	movq	%rsi, %r8
	andq	$4, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_mac$6
	movl	(%rdx,%rdi), %r8d
	movl	%r8d, (%rsp,%rdi)
	addq	$4, %rdi
.L_aegis256_mac$6:
	movq	%rsi, %r8
	andq	$2, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_mac$5
	movw	(%rdx,%rdi), %r8w
	movw	%r8w, (%rsp,%rdi)
	addq	$2, %rdi
.L_aegis256_mac$5:
	andq	$1, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256_mac$4
	movb	(%rdx,%rdi), %dl
	movb	%dl, (%rsp,%rdi)
.L_aegis256_mac$4:
	vmovdqu	(%rsp), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
.L_aegis256_mac$3:
	movzbq	%cl, %rdx
	movq	16(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm0
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	cmpb	$16, %cl
	je  	.L_aegis256_mac$1
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm7, %xmm8, %xmm1
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm6, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	jmp 	.L_aegis256_mac$2
.L_aegis256_mac$1:
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
.L_aegis256_mac$2:
	movq	%rdi, %rax
	movq	%r10, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$32, %rsp
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis256_decrypt, %function
_aegis256_decrypt:
	movq	%rsp, %r11
	leaq	-32(%rsp), %rsp
	andq	$-16, %rsp
	movq	%rdi, %r8
	movq	(%r8), %rdx
// declassify_val u64 %rdx
	movq	8(%r8), %rsi
	movq	%rsi, 16(%rsp)
// declassify_val u64 16(%rsp)
	movq	16(%r8), %rax
// declassify_val u64 %rax
	movb	24(%r8), %cl
// declassify_val u8 %cl
	movq	32(%r8), %rsi
// declassify_val u64 %rsi
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 24(%rsp)
// declassify_val u64 24(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vmovdqu	(%r9), %xmm0
	vmovdqu	16(%r9), %xmm1
	vmovdqu	(%r8), %xmm2
// declassify_val u128 %xmm2
	vmovdqu	16(%r8), %xmm3
// declassify_val u128 %xmm3
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	glob_data + 32(%rip), %xmm0, %xmm6
	vpxor	glob_data + 16(%rip), %xmm1, %xmm7
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm5
	vmovdqu	glob_data + 16(%rip), %xmm9
	vmovdqu	glob_data + 32(%rip), %xmm8
	vmovdqu	%xmm6, %xmm10
	vaesenc	%xmm0, %xmm7, %xmm11
	vaesenc	%xmm7, %xmm10, %xmm6
	vaesenc	%xmm10, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	movq	24(%rsp), %r8
	andq	$-16, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_decrypt$20
	.p2align	5
.L_aegis256_decrypt$21:
	vmovdqu	(%rdi,%r9), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	addq	$16, %r9
.L_aegis256_decrypt$20:
	cmpq	%r8, %r9
	jb  	.L_aegis256_decrypt$21
	movq	24(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis256_decrypt$15
	addq	%r9, %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %r10
	andq	$8, %r10
	cmpq	$0, %r10
	je  	.L_aegis256_decrypt$19
	movq	(%rdi,%r9), %r10
	movq	%r10, (%rsp,%r9)
	addq	$8, %r9
.L_aegis256_decrypt$19:
	movq	%r8, %r10
	andq	$4, %r10
	cmpq	$0, %r10
	je  	.L_aegis256_decrypt$18
	movl	(%rdi,%r9), %r10d
	movl	%r10d, (%rsp,%r9)
	addq	$4, %r9
.L_aegis256_decrypt$18:
	movq	%r8, %r10
	andq	$2, %r10
	cmpq	$0, %r10
	je  	.L_aegis256_decrypt$17
	movw	(%rdi,%r9), %r10w
	movw	%r10w, (%rsp,%r9)
	addq	$2, %r9
.L_aegis256_decrypt$17:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$16
	movb	(%rdi,%r9), %dil
	movb	%dil, (%rsp,%r9)
.L_aegis256_decrypt$16:
	vmovdqu	(%rsp), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
.L_aegis256_decrypt$15:
	movq	16(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_decrypt$13
	.p2align	5
.L_aegis256_decrypt$14:
	vmovdqu	(%rdx,%r9), %xmm0
// declassify_val u128 %xmm0
	vaesenc	%xmm0, %xmm6, %xmm1
	vpxor	%xmm6, %xmm7, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm2, %xmm1, %xmm4
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsi,%r9)
	vmovdqu	16(%rdx,%r9), %xmm0
// declassify_val u128 %xmm0
	vaesenc	%xmm0, %xmm6, %xmm1
	vpxor	%xmm6, %xmm7, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm2, %xmm1, %xmm4
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsi,%r9)
	addq	$32, %r9
.L_aegis256_decrypt$13:
	cmpq	%r8, %r9
	jb  	.L_aegis256_decrypt$14
	movq	16(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$16, %rdi
	jb  	.L_aegis256_decrypt$12
	vmovdqu	(%rdx,%r9), %xmm0
// declassify_val u128 %xmm0
	vaesenc	%xmm0, %xmm6, %xmm1
	vpxor	%xmm6, %xmm7, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm5, %xmm2, %xmm2
	vpxor	%xmm4, %xmm1, %xmm1
	vpxor	%xmm3, %xmm2, %xmm2
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm2, %xmm1, %xmm4
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsi,%r9)
	addq	$-16, %rdi
	addq	$16, %r9
.L_aegis256_decrypt$12:
	cmpq	$0, %rdi
	jbe 	.L_aegis256_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	andq	$8, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$11
	movq	(%rdx,%r9), %r8
	movq	%r8, (%rsp,%r9)
	addq	$8, %r9
.L_aegis256_decrypt$11:
	movq	%rdi, %r8
	andq	$4, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$10
	movl	(%rdx,%r9), %r8d
	movl	%r8d, (%rsp,%r9)
	addq	$4, %r9
.L_aegis256_decrypt$10:
	movq	%rdi, %r8
	andq	$2, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$9
	movw	(%rdx,%r9), %r8w
	movw	%r8w, (%rsp,%r9)
	addq	$2, %r9
.L_aegis256_decrypt$9:
	movq	%rdi, %r8
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$8
	movb	(%rdx,%r9), %dl
	movb	%dl, (%rsp,%r9)
.L_aegis256_decrypt$8:
	vmovdqu	(%rsp), %xmm0
// declassify_val u128 %xmm0
	vpxor	%xmm7, %xmm5, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm0
	vmovq	%rdi, %xmm1
	vpbroadcastb	%xmm1, %xmm1
	vpcmpgtb	glob_data + 0(%rip), %xmm1, %xmm1
	vpand	%xmm0, %xmm1, %xmm1
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	andq	$8, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$7
	movq	(%rsp,%r9), %r8
	movq	%r8, (%rsi,%r9)
	addq	$8, %r9
.L_aegis256_decrypt$7:
	movq	%rdi, %r8
	andq	$4, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$6
	movl	(%rsp,%r9), %r8d
	movl	%r8d, (%rsi,%r9)
	addq	$4, %r9
.L_aegis256_decrypt$6:
	movq	%rdi, %r8
	andq	$2, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_decrypt$5
	movw	(%rsp,%r9), %r8w
	movw	%r8w, (%rsi,%r9)
	addq	$2, %r9
.L_aegis256_decrypt$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis256_decrypt$3
	movb	(%rsp,%r9), %dl
	movb	%dl, (%rsi,%r9)
.L_aegis256_decrypt$4:
.L_aegis256_decrypt$3:
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm0
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	cmpb	$16, %cl
	je  	.L_aegis256_decrypt$1
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm7, %xmm8, %xmm1
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm6, %xmm1, %xmm1
	vmovdqu	(%rax), %xmm2
	vmovdqu	16(%rax), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis256_decrypt$2
.L_aegis256_decrypt$1:
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqu	(%rax), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm1
	vpmovmskb	%xmm1, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
.L_aegis256_decrypt$2:
	movq	%r11, %rsp
	movq	%rsp, %rsi
	vpxor	%xmm2, %xmm2, %xmm2
	andq	$-16, %rsp
	subq	$32, %rsp
	vmovdqu	%xmm2, 16(%rsp)
	vmovdqu	%xmm2, (%rsp)
	movq	%rsi, %rsp
	ret
	.type	_aegis256_encrypt, %function
_aegis256_encrypt:
	movq	%rsp, %r11
	leaq	-32(%rsp), %rsp
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
	movq	%r9, 16(%rsp)
// declassify_val u64 16(%rsp)
	movq	48(%r8), %rdi
// declassify_val u64 %rdi
	movq	56(%r8), %r9
	movq	%r9, 24(%rsp)
// declassify_val u64 24(%rsp)
	movq	64(%r8), %r9
// declassify_val u64 %r9
	movq	72(%r8), %r8
// declassify_val u64 %r8
	vmovdqu	(%r9), %xmm0
	vmovdqu	16(%r9), %xmm1
	vmovdqu	(%r8), %xmm2
// declassify_val u128 %xmm2
	vmovdqu	16(%r8), %xmm3
// declassify_val u128 %xmm3
	vpxor	%xmm2, %xmm0, %xmm2
	vpxor	%xmm3, %xmm1, %xmm3
	vpxor	glob_data + 32(%rip), %xmm0, %xmm6
	vpxor	glob_data + 16(%rip), %xmm1, %xmm7
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm5
	vmovdqu	glob_data + 16(%rip), %xmm9
	vmovdqu	glob_data + 32(%rip), %xmm8
	vmovdqu	%xmm6, %xmm10
	vaesenc	%xmm0, %xmm7, %xmm11
	vaesenc	%xmm7, %xmm10, %xmm6
	vaesenc	%xmm10, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm1, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm2, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vaesenc	%xmm3, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	movq	24(%rsp), %r8
	andq	$-16, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_encrypt$20
	.p2align	5
.L_aegis256_encrypt$21:
	vmovdqu	(%rdi,%r9), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	addq	$16, %r9
.L_aegis256_encrypt$20:
	cmpq	%r8, %r9
	jb  	.L_aegis256_encrypt$21
	movq	24(%rsp), %r8
	subq	%r9, %r8
	cmpq	$0, %r8
	jbe 	.L_aegis256_encrypt$15
	addq	%r9, %rdi
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	movq	%r8, %r10
	andq	$8, %r10
	cmpq	$0, %r10
	je  	.L_aegis256_encrypt$19
	movq	(%rdi,%r9), %r10
	movq	%r10, (%rsp,%r9)
	addq	$8, %r9
.L_aegis256_encrypt$19:
	movq	%r8, %r10
	andq	$4, %r10
	cmpq	$0, %r10
	je  	.L_aegis256_encrypt$18
	movl	(%rdi,%r9), %r10d
	movl	%r10d, (%rsp,%r9)
	addq	$4, %r9
.L_aegis256_encrypt$18:
	movq	%r8, %r10
	andq	$2, %r10
	cmpq	$0, %r10
	je  	.L_aegis256_encrypt$17
	movw	(%rdi,%r9), %r10w
	movw	%r10w, (%rsp,%r9)
	addq	$2, %r9
.L_aegis256_encrypt$17:
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_encrypt$16
	movb	(%rdi,%r9), %dil
	movb	%dil, (%rsp,%r9)
.L_aegis256_encrypt$16:
	vmovdqu	(%rsp), %xmm0
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
.L_aegis256_encrypt$15:
	movq	16(%rsp), %r8
	andq	$-32, %r8
	xorl	%r9d, %r9d
	jmp 	.L_aegis256_encrypt$13
	.p2align	5
.L_aegis256_encrypt$14:
	vmovdqu	(%rsi,%r9), %xmm0
	vpxor	%xmm7, %xmm5, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm1
// declassify_val u128 %xmm1
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vmovdqu	%xmm1, (%rdx,%r9)
	vmovdqu	16(%rsi,%r9), %xmm0
	vpxor	%xmm7, %xmm5, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm1
// declassify_val u128 %xmm1
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vmovdqu	%xmm1, 16(%rdx,%r9)
	addq	$32, %r9
.L_aegis256_encrypt$13:
	cmpq	%r8, %r9
	jb  	.L_aegis256_encrypt$14
	movq	16(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$16, %rdi
	jb  	.L_aegis256_encrypt$12
	vmovdqu	(%rsi,%r9), %xmm0
	vpxor	%xmm7, %xmm5, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm1
// declassify_val u128 %xmm1
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vmovdqu	%xmm1, (%rdx,%r9)
	addq	$-16, %rdi
	addq	$16, %r9
.L_aegis256_encrypt$12:
	cmpq	$0, %rdi
	jbe 	.L_aegis256_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rdx
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %r8
	andq	$8, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_encrypt$11
	movq	(%rsi,%r9), %r8
	movq	%r8, (%rsp,%r9)
	addq	$8, %r9
.L_aegis256_encrypt$11:
	movq	%rdi, %r8
	andq	$4, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_encrypt$10
	movl	(%rsi,%r9), %r8d
	movl	%r8d, (%rsp,%r9)
	addq	$4, %r9
.L_aegis256_encrypt$10:
	movq	%rdi, %r8
	andq	$2, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_encrypt$9
	movw	(%rsi,%r9), %r8w
	movw	%r8w, (%rsp,%r9)
	addq	$2, %r9
.L_aegis256_encrypt$9:
	movq	%rdi, %r8
	andq	$1, %r8
	cmpq	$0, %r8
	je  	.L_aegis256_encrypt$8
	movb	(%rsi,%r9), %sil
	movb	%sil, (%rsp,%r9)
.L_aegis256_encrypt$8:
	vmovdqu	(%rsp), %xmm0
	vpxor	%xmm7, %xmm5, %xmm2
	vpand	%xmm8, %xmm9, %xmm3
	vpxor	%xmm3, %xmm2, %xmm2
	vpxor	%xmm6, %xmm2, %xmm2
	vpxor	%xmm2, %xmm0, %xmm1
// declassify_val u128 %xmm1
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	vmovdqu	%xmm1, (%rsp)
	xorl	%r9d, %r9d
	movq	%rdi, %rsi
	andq	$8, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256_encrypt$7
	movq	(%rsp,%r9), %r8
	movq	%r8, (%rdx,%r9)
	addq	$8, %r9
.L_aegis256_encrypt$7:
	movq	%rdi, %rsi
	andq	$4, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256_encrypt$6
	movl	(%rsp,%r9), %r8d
	movl	%r8d, (%rdx,%r9)
	addq	$4, %r9
.L_aegis256_encrypt$6:
	movq	%rdi, %rsi
	andq	$2, %rsi
	cmpq	$0, %rsi
	je  	.L_aegis256_encrypt$5
	movw	(%rsp,%r9), %r8w
	movw	%r8w, (%rdx,%r9)
	addq	$2, %r9
.L_aegis256_encrypt$5:
	andq	$1, %rdi
	cmpq	$0, %rdi
	je  	.L_aegis256_encrypt$3
	movb	(%rsp,%r9), %sil
	movb	%sil, (%rdx,%r9)
.L_aegis256_encrypt$4:
.L_aegis256_encrypt$3:
	movq	24(%rsp), %rsi
	movq	16(%rsp), %rdx
	xorl	%edi, %edi
	shlq	$3, %rsi
	shlq	$3, %rdx
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	vpxor	(%rsp), %xmm8, %xmm0
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm11
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm11, %xmm4, %xmm4
	vaesenc	%xmm0, %xmm6, %xmm0
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm5, %xmm9
	vaesenc	%xmm5, %xmm4, %xmm5
	vpxor	%xmm0, %xmm4, %xmm4
	cmpb	$16, %cl
	je  	.L_aegis256_encrypt$1
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm7, %xmm8, %xmm1
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm6, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rax)
	vmovdqu	%xmm1, 16(%rax)
	jmp 	.L_aegis256_encrypt$2
.L_aegis256_encrypt$1:
	vpxor	%xmm5, %xmm4, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rax)
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
G$iota0:
	.byte	  0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12,  13,  14,  15
G$c1:
	.byte	219,  61,  24,  85, 109, 194,  47, 241,  32,  17,  49,  66, 115, 181,  40, 221
G$c0:
	.byte	  0,   1,   1,   2,   3,   5,   8,  13,  21,  34,  55,  89, 144, 233, 121,  98
	.ident	"Jasmin Compiler 2026.09.0"
	.section	".note.GNU-stack", "", %progbits
