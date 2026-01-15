	.text
	.p2align	4, 0x90                         # -- Begin function ret_error2
ret_error2:                             # @ret_error2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movl	-8(%rbp), %edi
	callq	jv_free@PLT
	movl	-12(%rbp), %edi
	callq	jv_invalid_with_msg@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ret_error2
	.addrsig_sym jv_free
	.addrsig_sym jv_invalid_with_msg