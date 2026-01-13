	.text
	.globl	decNumberToIntegralExact        # -- Begin function decNumberToIntegralExact
	.p2align	4, 0x90
decNumberToIntegralExact:               # @decNumberToIntegralExact
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -76(%rbp)
	cmpq	$0, SPECIALARG(%rip)
	je	.LBB0_5
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decNumberCopy@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rcx
	xorl	%eax, %eax
	movl	%eax, %edx
	leaq	-76(%rbp), %r8
	callq	decNaNs@PLT
.LBB0_4:
	jmp	.LBB0_8
.LBB0_5:
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jl	.LBB0_7
# %bb.6:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	decNumberCopy@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_11
.LBB0_7:
	movq	-32(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	8(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, -56(%rbp)
	movq	$0, -64(%rbp)
	leaq	-48(%rbp), %rdi
	callq	decNumberZero@PLT
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	leaq	-72(%rbp), %rcx
	callq	decNumberQuantize@PLT
	movl	-72(%rbp), %eax
	orl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
.LBB0_8:
	cmpl	$0, -76(%rbp)
	je	.LBB0_10
# %bb.9:
	movq	-16(%rbp), %rdi
	movl	-76(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	decStatus@PLT
.LBB0_10:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_11:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SPECIALARG
	.p2align	3
SPECIALARG:
	.quad	0                               # 0x0
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberCopy
	.addrsig_sym decNaNs
	.addrsig_sym decNumberZero
	.addrsig_sym decNumberQuantize
	.addrsig_sym decStatus
	.addrsig_sym SPECIALARG