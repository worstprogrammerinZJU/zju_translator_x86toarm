	.text
	.p2align	4, 0x90                         # -- Begin function f_current_line
f_current_line:                         # @f_current_line
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edi
	callq	jv_free@PLT
	movq	-8(%rbp), %rdi
	callq	jq_util_input_get_current_line@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym f_current_line
	.addrsig_sym jv_free
	.addrsig_sym jq_util_input_get_current_line