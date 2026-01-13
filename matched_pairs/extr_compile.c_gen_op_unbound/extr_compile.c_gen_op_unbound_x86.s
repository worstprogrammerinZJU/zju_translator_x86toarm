	.text
	.globl	gen_op_unbound                  # -- Begin function gen_op_unbound
	.p2align	4, 0x90
gen_op_unbound:                         # @gen_op_unbound
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %edi
	andl	OP_HAS_BINDING(%rip), %edi
	callq	assert@PLT
	movl	-4(%rbp), %edi
	callq	inst_new@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	strdup@PLT
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rdi
	callq	inst_block@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_HAS_BINDING
	.p2align	2
OP_HAS_BINDING:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym inst_new
	.addrsig_sym strdup
	.addrsig_sym inst_block
	.addrsig_sym OP_HAS_BINDING