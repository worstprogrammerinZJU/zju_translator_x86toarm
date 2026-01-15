	.text
	.p2align	4, 0x90                         # -- Begin function undef
undef:                                  # @undef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$3, -4(%rbp)
	movl	$10, %esi
	movl	%esi, %edi
	callq	expect@PLT
	movl	-4(%rbp), %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	$16, %esi
	movl	%esi, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym undef
	.addrsig_sym expect