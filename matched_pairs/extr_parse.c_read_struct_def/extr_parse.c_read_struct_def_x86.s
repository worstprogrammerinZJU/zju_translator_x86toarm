	.text
	.p2align	4, 0x90                         # -- Begin function read_struct_def
read_struct_def:                        # @read_struct_def
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %edi
	callq	read_rectype_def@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_struct_def
	.addrsig_sym read_rectype_def