	.text
	.p2align	4, 0x90                         # -- Begin function stack_push_block
stack_push_block:                       # @stack_push_block
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	align_round_up@PLT
	addl	ALIGNMENT(%rip), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-28(%rbp), %rcx
	subq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jge	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	stack_reallocate@PLT
.LBB0_2:
	movq	-40(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	stack_block_next@PLT
	movq	-48(%rbp), %rcx                 # 8-byte Reload
	movq	%rcx, (%rax)
	movq	-40(%rbp), %rax
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
	.addrsig_sym stack_push_block
	.addrsig_sym align_round_up
	.addrsig_sym stack_reallocate
	.addrsig_sym stack_block_next
	.addrsig_sym ALIGNMENT