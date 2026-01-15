	.text
	.p2align	4, 0x90                         # -- Begin function assign
assign:                                 # @assign
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$3, -16(%rbp)
	movl	$5, -12(%rbp)
	movl	$7, -8(%rbp)
	movw	$9, -4(%rbp)
	movb	$11, -2(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %esi
	movl	$3, %edi
	callq	expect@PLT
	movl	-28(%rbp), %esi
	movl	$5, %edi
	callq	expect@PLT
	movl	-24(%rbp), %esi
	movl	$7, %edi
	callq	expect@PLT
	movswl	-20(%rbp), %esi
	movl	$9, %edi
	callq	expect@PLT
	movsbl	-18(%rbp), %esi
	movl	$11, %edi
	callq	expect@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assign
	.addrsig_sym expect