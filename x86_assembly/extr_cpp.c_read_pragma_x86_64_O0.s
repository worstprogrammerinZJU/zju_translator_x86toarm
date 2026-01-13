	.text
	.p2align	4, 0x90                         # -- Begin function read_pragma
read_pragma:                            # @read_pragma
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_ident@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	parse_pragma_operand@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_pragma
	.addrsig_sym read_ident
	.addrsig_sym parse_pragma_operand