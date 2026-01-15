	.text
	.globl	jv_get_kind                     # -- Begin function jv_get_kind
	.p2align	4, 0x90
jv_get_kind:                            # @jv_get_kind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	JVP_KIND@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym JVP_KIND