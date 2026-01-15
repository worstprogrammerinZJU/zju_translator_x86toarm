	.text
	.globl	gen_op_target                   # -- Begin function gen_op_target
	.p2align	4, 0x90
gen_op_target:                          # @gen_op_target
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%esi, -16(%rbp)
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %edi
	andl	OP_HAS_BRANCH(%rip), %edi
	callq	assert@PLT
	movl	-16(%rbp), %edi
	callq	assert@PLT
	movl	-20(%rbp), %edi
	callq	inst_new@PLT
	movq	%rax, -32(%rbp)
	movl	-16(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-32(%rbp), %rdi
	callq	inst_block@PLT
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
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
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym inst_block
	.addrsig_sym OP_HAS_BRANCH