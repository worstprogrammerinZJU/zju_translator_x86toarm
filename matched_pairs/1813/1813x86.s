	.text
	.p2align	4, 0x90                         # -- Begin function define_builtin
define_builtin:                         # @define_builtin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	$1, %edx
	xorl	%ecx, %ecx
	callq	make_func_type@PLT
	movl	%eax, %edi
	movq	-8(%rbp), %rsi
	callq	ast_gvar@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym define_builtin
	.addrsig_sym ast_gvar
	.addrsig_sym make_func_type