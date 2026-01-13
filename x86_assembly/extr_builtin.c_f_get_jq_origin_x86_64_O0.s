	.text
	.p2align	4, 0x90                         # -- Begin function f_get_jq_origin
f_get_jq_origin:                        # @f_get_jq_origin
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rdi
	callq	jq_get_jq_origin@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_get_jq_origin
	.addrsig_sym jv_free
	.addrsig_sym jq_get_jq_origin