	.text
	.globl	jv_string_empty                 # -- Begin function jv_string_empty
	.p2align	4, 0x90
jv_string_empty:                        # @jv_string_empty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jvp_string_empty_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_string_empty_new