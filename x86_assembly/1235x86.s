	.text
	.globl	jv_object                       # -- Begin function jv_object
	.p2align	4, 0x90
jv_object:                              # @jv_object
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$8, %edi
	callq	jvp_object_new@PLT
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_new