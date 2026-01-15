	.text
	.globl	jq_util_input_next_input_cb     # -- Begin function jq_util_input_next_input_cb
	.p2align	4, 0x90
jq_util_input_next_input_cb:            # @jq_util_input_next_input_cb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	jq_util_input_next_input@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jq_util_input_next_input