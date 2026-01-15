	.text
	.p2align	4, 0x90                         # -- Begin function ifdef
ifdef:                                  # @ifdef
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$2, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$1, %esi
	callq	expect@PLT
	movl	$4, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$4, %esi
	callq	expect@PLT
	movl	$5, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$6, %esi
	callq	expect@PLT
	movl	$7, -4(%rbp)
	movl	-4(%rbp), %edi
	movl	$7, %esi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ifdef
	.addrsig_sym expect