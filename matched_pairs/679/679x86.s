	.text
	.globl	decNumberSameQuantum            # -- Begin function decNumberSameQuantum
	.p2align	4, 0x90
decNumberSameQuantum:                   # @decNumberSameQuantum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	cmpq	$0, SPECIALARGS(%rip)
	je	.LBB0_9
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.2:
	movq	-24(%rbp), %rdi
	callq	decNumberIsNaN@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	$1, -28(%rbp)
	jmp	.LBB0_8
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.5:
	movq	-24(%rbp), %rdi
	callq	decNumberIsInfinite@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:
	movl	$1, -28(%rbp)
.LBB0_7:
	jmp	.LBB0_8
.LBB0_8:
	jmp	.LBB0_12
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_11
# %bb.10:
	movl	$1, -28(%rbp)
.LBB0_11:
	jmp	.LBB0_12
.LBB0_12:
	movq	-8(%rbp), %rdi
	callq	decNumberZero@PLT
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SPECIALARGS
	.p2align	3
SPECIALARGS:
	.quad	0                               # 0x0
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym decNumberZero
	.addrsig_sym SPECIALARGS