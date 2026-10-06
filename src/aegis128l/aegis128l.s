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
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	48(%rdi), %rax
// declassify_val u64 %rax
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
	vpxor	%xmm1, %xmm0, %xmm2
	vpxor	glob_data + 16(%rip), %xmm0, %xmm3
	vmovdqu	%xmm2, %xmm8
	vmovdqu	glob_data + 0(%rip), %xmm7
	vmovdqu	glob_data + 16(%rip), %xmm6
	vmovdqu	glob_data + 0(%rip), %xmm5
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm11
	vpxor	glob_data + 0(%rip), %xmm0, %xmm2
	vmovdqu	%xmm3, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm3, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	movq	48(%rsp), %rsi
	andq	$-32, %rsi
	xorl	%edi, %edi
	jmp 	.L_aegis128l_mac_verify$6
	.p2align	5
.L_aegis128l_mac_verify$7:
	vmovdqu	(%rax,%rdi), %xmm1
	vmovdqu	16(%rax,%rdi), %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	addq	$32, %rdi
.L_aegis128l_mac_verify$6:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128l_mac_verify$7
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	cmpq	$0, %rsi
	jbe 	.L_aegis128l_mac_verify$3
	addq	%rdi, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%edi, %edi
	jmp 	.L_aegis128l_mac_verify$4
.L_aegis128l_mac_verify$5:
	movb	(%rax,%rdi), %r8b
	movb	%r8b, 16(%rsp,%rdi)
	incq	%rdi
.L_aegis128l_mac_verify$4:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128l_mac_verify$5
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
.L_aegis128l_mac_verify$3:
	movzbq	%dl, %rax
	movq	48(%rsp), %rsi
	shlq	$3, %rsi
	shlq	$3, %rax
	movq	%rsi, (%rsp)
	movq	%rax, 8(%rsp)
	vpxor	(%rsp), %xmm6, %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	cmpb	$16, %dl
	je  	.L_aegis128l_mac_verify$1
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm3, %xmm4, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm10, %xmm1, %xmm1
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128l_mac_verify$2
.L_aegis128l_mac_verify$1:
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	(%rcx), %xmm1
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
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	48(%rdi), %rax
// declassify_val u64 %rax
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
	vpxor	%xmm1, %xmm0, %xmm2
	vpxor	glob_data + 16(%rip), %xmm0, %xmm3
	vmovdqu	%xmm2, %xmm8
	vmovdqu	glob_data + 0(%rip), %xmm7
	vmovdqu	glob_data + 16(%rip), %xmm6
	vmovdqu	glob_data + 0(%rip), %xmm5
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm11
	vpxor	glob_data + 0(%rip), %xmm0, %xmm2
	vmovdqu	%xmm3, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm3, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	movq	48(%rsp), %rsi
	andq	$-32, %rsi
	xorl	%edi, %edi
	jmp 	.L_aegis128l_mac$6
	.p2align	5
.L_aegis128l_mac$7:
	vmovdqu	(%rax,%rdi), %xmm1
	vmovdqu	16(%rax,%rdi), %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	addq	$32, %rdi
.L_aegis128l_mac$6:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128l_mac$7
	movq	48(%rsp), %rsi
	subq	%rdi, %rsi
	cmpq	$0, %rsi
	jbe 	.L_aegis128l_mac$3
	addq	%rdi, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%edi, %edi
	jmp 	.L_aegis128l_mac$4
.L_aegis128l_mac$5:
	movb	(%rax,%rdi), %r8b
	movb	%r8b, 16(%rsp,%rdi)
	incq	%rdi
.L_aegis128l_mac$4:
	cmpq	%rsi, %rdi
	jb  	.L_aegis128l_mac$5
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
.L_aegis128l_mac$3:
	movzbq	%dl, %rax
	movq	48(%rsp), %rsi
	xorl	%edi, %edi
	shlq	$3, %rsi
	shlq	$3, %rax
	movq	%rsi, (%rsp)
	movq	%rax, 8(%rsp)
	vpxor	(%rsp), %xmm6, %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	cmpb	$16, %dl
	je  	.L_aegis128l_mac$1
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm3, %xmm4, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm10, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rcx)
	vmovdqu	%xmm1, 16(%rcx)
	jmp 	.L_aegis128l_mac$2
.L_aegis128l_mac$1:
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
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
	leaq	-96(%rsp), %rsp
	andq	$-16, %rsp
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	8(%rdi), %rsi
	movq	%rsi, 80(%rsp)
// declassify_val u64 80(%rsp)
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 88(%rsp)
// declassify_val u64 88(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%rdi), %xmm1
// declassify_val u128 %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	vpxor	glob_data + 16(%rip), %xmm0, %xmm3
	vmovdqu	%xmm2, %xmm8
	vmovdqu	glob_data + 0(%rip), %xmm7
	vmovdqu	glob_data + 16(%rip), %xmm6
	vmovdqu	glob_data + 0(%rip), %xmm5
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm11
	vpxor	glob_data + 0(%rip), %xmm0, %xmm2
	vmovdqu	%xmm3, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm3, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	movq	88(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_decrypt$15
	.p2align	5
.L_aegis128l_decrypt$16:
	vmovdqu	(%r8,%r9), %xmm1
	vmovdqu	16(%r8,%r9), %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	addq	$32, %r9
.L_aegis128l_decrypt$15:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_decrypt$16
	movq	88(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_decrypt$12
	addq	%r9, %r8
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_decrypt$13
.L_aegis128l_decrypt$14:
	movb	(%r8,%r9), %r10b
	movb	%r10b, 16(%rsp,%r9)
	incq	%r9
.L_aegis128l_decrypt$13:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_decrypt$14
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
.L_aegis128l_decrypt$12:
	movq	80(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_decrypt$10
	.p2align	5
.L_aegis128l_decrypt$11:
	vmovdqu	(%rax,%r9), %xmm0
	vmovdqu	16(%rax,%r9), %xmm1
// declassify_val u128 %xmm0
// declassify_val u128 %xmm1
	vpand	%xmm5, %xmm6, %xmm9
	vpand	%xmm10, %xmm2, %xmm11
	vpxor	%xmm7, %xmm2, %xmm12
	vpxor	%xmm3, %xmm6, %xmm13
	vpxor	%xmm9, %xmm12, %xmm12
	vpxor	%xmm11, %xmm13, %xmm13
	vpxor	%xmm12, %xmm0, %xmm0
	vpxor	%xmm13, %xmm1, %xmm1
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm1, %xmm4, %xmm12
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm0, (%rsi,%r9)
	vmovdqu	%xmm1, 16(%rsi,%r9)
	addq	$32, %r9
.L_aegis128l_decrypt$10:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_decrypt$11
	movq	80(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_decrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_decrypt$8
.L_aegis128l_decrypt$9:
	movb	(%rax,%r9), %r8b
	movb	%r8b, 16(%rsp,%r9)
	incq	%r9
.L_aegis128l_decrypt$8:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_decrypt$9
	vmovdqu	16(%rsp), %xmm0
	vmovdqu	32(%rsp), %xmm1
// declassify_val u128 %xmm0
// declassify_val u128 %xmm1
	vpand	%xmm5, %xmm6, %xmm9
	vpand	%xmm10, %xmm2, %xmm11
	vpxor	%xmm7, %xmm2, %xmm12
	vpxor	%xmm3, %xmm6, %xmm13
	vpxor	%xmm9, %xmm12, %xmm12
	vpxor	%xmm11, %xmm13, %xmm13
	vpxor	%xmm12, %xmm0, %xmm0
	vpxor	%xmm13, %xmm1, %xmm1
	vmovdqu	%xmm0, 48(%rsp)
	vmovdqu	%xmm1, 64(%rsp)
	movq	%rdi, %r9
	jmp 	.L_aegis128l_decrypt$6
.L_aegis128l_decrypt$7:
	movb	$0, 48(%rsp,%r9)
	incq	%r9
.L_aegis128l_decrypt$6:
	cmpq	$32, %r9
	jb  	.L_aegis128l_decrypt$7
	vmovdqu	48(%rsp), %xmm9
	vmovdqu	64(%rsp), %xmm11
	vmovdqu	%xmm10, %xmm12
	vpxor	%xmm11, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm9, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm12, %xmm8
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm1, 32(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_decrypt$4
.L_aegis128l_decrypt$5:
	movb	16(%rsp,%r9), %r8b
	movb	%r8b, (%rsi,%r9)
	incq	%r9
.L_aegis128l_decrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_decrypt$5
.L_aegis128l_decrypt$3:
	movq	88(%rsp), %rsi
	movq	80(%rsp), %rax
	shlq	$3, %rsi
	shlq	$3, %rax
	movq	%rsi, (%rsp)
	movq	%rax, 8(%rsp)
	vpxor	(%rsp), %xmm6, %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	cmpb	$16, %dl
	je  	.L_aegis128l_decrypt$1
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm3, %xmm4, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm10, %xmm1, %xmm1
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm2
	vpcmpeqq	%xmm1, %xmm3, %xmm3
	vpand	%xmm3, %xmm2, %xmm2
	vpmovmskb	%xmm2, %eax
	incq	%rax
	shrq	$16, %rax
	decq	%rax
	jmp 	.L_aegis128l_decrypt$2
.L_aegis128l_decrypt$1:
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	(%rcx), %xmm1
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
	subq	$96, %rsp
	vmovdqu	%xmm2, 80(%rsp)
	vmovdqu	%xmm2, 64(%rsp)
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
	movq	(%rdi), %rax
// declassify_val u64 %rax
	movq	16(%rdi), %rcx
// declassify_val u64 %rcx
	movb	24(%rdi), %dl
// declassify_val u8 %dl
	movq	32(%rdi), %rsi
// declassify_val u64 %rsi
	movq	40(%rdi), %r8
	movq	%r8, 48(%rsp)
// declassify_val u64 48(%rsp)
	movq	48(%rdi), %r8
// declassify_val u64 %r8
	movq	56(%rdi), %r9
	movq	%r9, 56(%rsp)
// declassify_val u64 56(%rsp)
	movq	64(%rdi), %r9
// declassify_val u64 %r9
	movq	72(%rdi), %rdi
// declassify_val u64 %rdi
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%rdi), %xmm1
// declassify_val u128 %xmm1
	vpxor	%xmm1, %xmm0, %xmm2
	vpxor	glob_data + 16(%rip), %xmm0, %xmm3
	vmovdqu	%xmm2, %xmm8
	vmovdqu	glob_data + 0(%rip), %xmm7
	vmovdqu	glob_data + 16(%rip), %xmm6
	vmovdqu	glob_data + 0(%rip), %xmm5
	vmovdqu	%xmm2, %xmm4
	vmovdqu	%xmm3, %xmm11
	vpxor	glob_data + 0(%rip), %xmm0, %xmm2
	vmovdqu	%xmm3, %xmm9
	vpxor	%xmm0, %xmm4, %xmm12
	vaesenc	%xmm3, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm11, %xmm2
	vaesenc	%xmm11, %xmm4, %xmm3
	vaesenc	%xmm12, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm11
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm11, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	movq	56(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_encrypt$13
	.p2align	5
.L_aegis128l_encrypt$14:
	vmovdqu	(%r8,%r9), %xmm0
	vmovdqu	16(%r8,%r9), %xmm1
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm1, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	addq	$32, %r9
.L_aegis128l_encrypt$13:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_encrypt$14
	movq	56(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_encrypt$10
	addq	%r9, %r8
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_encrypt$11
.L_aegis128l_encrypt$12:
	movb	(%r8,%r9), %r10b
	movb	%r10b, 16(%rsp,%r9)
	incq	%r9
.L_aegis128l_encrypt$11:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_encrypt$12
	vmovdqu	16(%rsp), %xmm0
	vmovdqu	32(%rsp), %xmm1
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm1, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
.L_aegis128l_encrypt$10:
	movq	48(%rsp), %rdi
	andq	$-32, %rdi
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_encrypt$8
	.p2align	5
.L_aegis128l_encrypt$9:
	vmovdqu	(%rsi,%r9), %xmm1
	vmovdqu	16(%rsi,%r9), %xmm0
	vpand	%xmm5, %xmm6, %xmm9
	vpand	%xmm10, %xmm2, %xmm11
	vpxor	%xmm7, %xmm2, %xmm12
	vpxor	%xmm3, %xmm6, %xmm13
	vpxor	%xmm9, %xmm12, %xmm12
	vpxor	%xmm11, %xmm13, %xmm13
	vpxor	%xmm12, %xmm1, %xmm9
	vpxor	%xmm13, %xmm0, %xmm11
// declassify_val u128 %xmm9
// declassify_val u128 %xmm11
	vmovdqu	%xmm10, %xmm12
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm12, %xmm8
	vmovdqu	%xmm9, (%rax,%r9)
	vmovdqu	%xmm11, 16(%rax,%r9)
	addq	$32, %r9
.L_aegis128l_encrypt$8:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_encrypt$9
	movq	48(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	.L_aegis128l_encrypt$3
	addq	%r9, %rsi
	addq	%r9, %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%xmm0, 16(%rsp)
	vmovdqu	%xmm0, 32(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_encrypt$6
.L_aegis128l_encrypt$7:
	movb	(%rsi,%r9), %r8b
	movb	%r8b, 16(%rsp,%r9)
	incq	%r9
.L_aegis128l_encrypt$6:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_encrypt$7
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm0
	vpand	%xmm5, %xmm6, %xmm9
	vpand	%xmm10, %xmm2, %xmm11
	vpxor	%xmm7, %xmm2, %xmm12
	vpxor	%xmm3, %xmm6, %xmm13
	vpxor	%xmm9, %xmm12, %xmm12
	vpxor	%xmm11, %xmm13, %xmm13
	vpxor	%xmm12, %xmm1, %xmm9
	vpxor	%xmm13, %xmm0, %xmm11
// declassify_val u128 %xmm9
// declassify_val u128 %xmm11
	vmovdqu	%xmm10, %xmm12
	vpxor	%xmm0, %xmm4, %xmm0
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm0, %xmm5, %xmm4
	vpxor	%xmm1, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm12, %xmm8
	vmovdqu	%xmm9, 16(%rsp)
	vmovdqu	%xmm11, 32(%rsp)
	xorl	%r9d, %r9d
	jmp 	.L_aegis128l_encrypt$4
.L_aegis128l_encrypt$5:
	movb	16(%rsp,%r9), %sil
	movb	%sil, (%rax,%r9)
	incq	%r9
.L_aegis128l_encrypt$4:
	cmpq	%rdi, %r9
	jb  	.L_aegis128l_encrypt$5
.L_aegis128l_encrypt$3:
	movq	56(%rsp), %rsi
	movq	48(%rsp), %rax
	xorl	%edi, %edi
	shlq	$3, %rsi
	shlq	$3, %rax
	movq	%rsi, (%rsp)
	movq	%rax, 8(%rsp)
	vpxor	(%rsp), %xmm6, %xmm0
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm11
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vmovdqu	%xmm10, %xmm9
	vpxor	%xmm0, %xmm4, %xmm1
	vaesenc	%xmm10, %xmm2, %xmm10
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm5, %xmm4
	vpxor	%xmm0, %xmm8, %xmm0
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm0, %xmm9, %xmm8
	cmpb	$16, %dl
	je  	.L_aegis128l_encrypt$1
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm3, %xmm4, %xmm1
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm2, %xmm1, %xmm1
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm10, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rcx)
	vmovdqu	%xmm1, 16(%rcx)
	jmp 	.L_aegis128l_encrypt$2
.L_aegis128l_encrypt$1:
	vpxor	%xmm7, %xmm8, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vpxor	%xmm5, %xmm0, %xmm0
	vpxor	%xmm4, %xmm0, %xmm0
	vpxor	%xmm3, %xmm0, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
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
G$c1:
	.byte	219,  61,  24,  85, 109, 194,  47, 241,  32,  17,  49,  66, 115, 181,  40, 221
G$c0:
	.byte	  0,   1,   1,   2,   3,   5,   8,  13,  21,  34,  55,  89, 144, 233, 121,  98
	.ident	"Jasmin Compiler 2026.09.0"
	.section	".note.GNU-stack", "", %progbits
