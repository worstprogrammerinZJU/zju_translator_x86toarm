	.text
	.p2align	4, 0x90                         # -- Begin function jvp_object_next_slot
jvp_object_next_slot:                   # @jvp_object_next_slot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	callq	jvp_object_get_slot@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym jvp_object_next_slot
	.addrsig_sym jvp_object_get_slot