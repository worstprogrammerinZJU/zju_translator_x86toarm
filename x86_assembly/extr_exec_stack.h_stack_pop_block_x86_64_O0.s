	.text
	.p2align	4, 0x90                         # -- Begin function stack_pop_block
stack_pop_block:                        # @stack_pop_block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	stack_block_next@PLT
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	callq	align_round_up@PLT
	addl	ALIGNMENT(%rip), %eax
	movl	%eax, -36(%rbp)
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rax
	addq	(%rax), %rcx
	movq	%rcx, (%rax)
.LBB0_2:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	ALIGNMENT
	.p2align	2
ALIGNMENT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stack_pop_block
	.addrsig_sym stack_block_next
	.addrsig_sym align_round_up
	.addrsig_sym ALIGNMENT