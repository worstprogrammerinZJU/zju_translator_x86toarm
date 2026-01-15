	.text
	.p2align	4, 0x90                         # -- Begin function unnamed
unnamed:                                # @unnamed
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -8(%rbp)
	movl	$7, -4(%rbp)
	movl	$1, %edi
	movsbl	-8(%rbp), %esi
	callq	expect@PLT
	movl	$7, %edi
	movsbl	-4(%rbp), %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym unnamed
	.addrsig_sym expect