	.text
	.p2align	4, 0x90                         # -- Begin function read_cast_type
read_cast_type:                         # @read_cast_type
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	read_decl_spec@PLT
	movl	%eax, %edi
	callq	read_abstract_declarator@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_cast_type
	.addrsig_sym read_abstract_declarator
	.addrsig_sym read_decl_spec