	.text
	.globl	gen_op_pushk_under              # -- Begin function gen_op_pushk_under
	.p2align	4, 0x90
gen_op_pushk_under:                     # @gen_op_pushk_under
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	PUSHK_UNDER(%rip), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %edi
	andl	OP_HAS_CONSTANT(%rip), %edi
	callq	assert@PLT
	movl	PUSHK_UNDER(%rip), %edi
	callq	inst_new@PLT
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rdi
	callq	inst_block@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	PUSHK_UNDER
	.p2align	2
PUSHK_UNDER:
	.long	0                               # 0x0
	.globl	OP_HAS_CONSTANT
	.p2align	2
OP_HAS_CONSTANT:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym PUSHK_UNDER
	.addrsig_sym OP_HAS_CONSTANT