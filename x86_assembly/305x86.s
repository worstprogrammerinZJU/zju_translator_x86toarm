	.text
	.globl	gen_op_targetlater              # -- Begin function gen_op_targetlater
	.p2align	4, 0x90
gen_op_targetlater:                     # @gen_op_targetlater
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %edi
	andl	OP_HAS_BRANCH(%rip), %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	inst_new@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	inst_block@PLT
	addq	$16, %rsp
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
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym OP_HAS_BRANCH