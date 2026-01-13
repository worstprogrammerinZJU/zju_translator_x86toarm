	.text
	.globl	gen_op_var_fresh                # -- Begin function gen_op_var_fresh
	.p2align	4, 0x90
gen_op_var_fresh:                       # @gen_op_var_fresh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	opcode_describe@PLT
	movl	(%rax), %edi
	andl	OP_HAS_VARIABLE(%rip), %edi
	callq	assert@PLT
	movl	-12(%rbp), %edi
	movq	-24(%rbp), %rsi
	callq	gen_op_unbound@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_HAS_VARIABLE
	.p2align	2
OP_HAS_VARIABLE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert
	.addrsig_sym opcode_describe
	.addrsig_sym gen_op_unbound
	.addrsig_sym OP_HAS_VARIABLE