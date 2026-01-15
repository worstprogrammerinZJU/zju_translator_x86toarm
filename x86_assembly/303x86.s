	.text
	.globl	gen_op_simple                   # -- Begin function gen_op_simple
	.p2align	4, 0x90
gen_op_simple:                          # @gen_op_simple
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	opcode_describe@PLT
	cmpl	$1, (%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	inst_new@PLT
	movl	%eax, %edi
	callq	inst_block@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_block
	.addrsig_sym inst_new