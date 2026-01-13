	.text
	.globl	jv_object_iter_value            # -- Begin function jv_object_iter_value
	.p2align	4, 0x90
jv_object_iter_value:                   # @jv_object_iter_value
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	movl	-8(%rbp), %esi
	callq	jvp_object_get_slot@PLT
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
	.addrsig_sym jvp_object_get_slot