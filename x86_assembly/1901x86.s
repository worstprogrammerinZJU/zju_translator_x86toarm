	.text
	.p2align	4, 0x90                         # -- Begin function read_intexpr
read_intexpr:                           # @read_intexpr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movb	$0, %al
	callq	read_conditional_expr@PLT
	movl	%eax, %edi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	eval_intexpr@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_intexpr
	.addrsig_sym eval_intexpr
	.addrsig_sym read_conditional_expr