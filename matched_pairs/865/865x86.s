	.text
	.globl	jq_get_exit_code                # -- Begin function jq_get_exit_code
	.p2align	4, 0x90
jq_get_exit_code:                       # @jq_get_exit_code
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_copy@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_copy