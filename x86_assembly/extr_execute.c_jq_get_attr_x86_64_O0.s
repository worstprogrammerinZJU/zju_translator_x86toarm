	.text
	.globl	jq_get_attr                     # -- Begin function jq_get_attr
	.p2align	4, 0x90
jq_get_attr:                            # @jq_get_attr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	jv_copy@PLT
	movl	%eax, %edi
	movl	-12(%rbp), %esi
	callq	jv_object_get@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jv_object_get
	.addrsig_sym jv_copy