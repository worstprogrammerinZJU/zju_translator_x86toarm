	.text
	.globl	jq_util_input_errors            # -- Begin function jq_util_input_errors
	.p2align	4, 0x90
jq_util_input_errors:                   # @jq_util_input_errors
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig