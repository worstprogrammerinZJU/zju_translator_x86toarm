	.text
	.globl	inst_set_target                 # -- Begin function inst_set_target
	.p2align	4, 0x90
inst_set_target:                        # @inst_set_target
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -16(%rbp)
	movq	%rsi, -8(%rbp)
	movl	%edx, -32(%rbp)
	movq	%rcx, -24(%rbp)
	movl	-16(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	block_is_single@PLT
	movl	%eax, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	movl	4(%rax), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %edi
	andl	OP_HAS_BRANCH(%rip), %edi
	callq	assert@PLT
	movl	-32(%rbp), %edi
	callq	assert@PLT
	movl	-32(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_HAS_BRANCH
	.p2align	2
OP_HAS_BRANCH:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym block_is_single
	.addrsig_sym opcode_describe
	.addrsig_sym OP_HAS_BRANCH