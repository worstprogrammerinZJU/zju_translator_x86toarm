	.text
	.globl	ms_append                       # -- Begin function ms_append
	.p2align	4, 0x90
ms_append:                              # @ms_append
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jl	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	grow@PLT
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_6
.LBB0_3:
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, (%rsi)
	movq	%rdx, (%rax,%rcx,8)
	movq	-16(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rdx
	subq	$1, %rdx
	callq	*%rax
.LBB0_5:
	movl	$1, -4(%rbp)
.LBB0_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym grow