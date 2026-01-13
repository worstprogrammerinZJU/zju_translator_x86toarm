	.text
	.p2align	4, 0x90                         # -- Begin function jv_number_get_value_and_consume
jv_number_get_value_and_consume:        # @jv_number_get_value_and_consume
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_number_value@PLT
	movsd	%xmm0, -16(%rbp)
	movl	-4(%rbp), %edi
	callq	jv_free@PLT
	movsd	-16(%rbp), %xmm0                # xmm0 = mem[0],zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_number_get_value_and_consume
	.addrsig_sym jv_number_value
	.addrsig_sym jv_free