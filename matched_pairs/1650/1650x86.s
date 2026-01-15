	.text
	.p2align	4, 0x90                         # -- Begin function loop
loop:                                   # @loop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	movl	$2, -8(%rbp)
	movl	-4(%rbp), %esi
	movl	$1, %edi
	callq	expect@PLT
	movl	-8(%rbp), %esi
	movl	$2, %edi
	callq	expect@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym loop
	.addrsig_sym expect