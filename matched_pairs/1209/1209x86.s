	.text
	.globl	jv_array                        # -- Begin function jv_array
	.p2align	4, 0x90
jv_array:                               # @jv_array
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$16, %edi
	callq	jv_array_sized@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_array_sized