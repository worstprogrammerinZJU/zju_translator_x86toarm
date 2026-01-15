	.text
	.globl	jv_number_with_literal          # -- Begin function jv_number_with_literal
	.p2align	4, 0x90
jv_number_with_literal:                 # @jv_number_with_literal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	jvp_literal_number_new@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_literal_number_new