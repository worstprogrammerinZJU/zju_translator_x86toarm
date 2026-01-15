	.text
	.p2align	4, 0x90                         # -- Begin function t3
t3:                                     # @t3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	leaq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$62, -52(%rbp)
	movq	-88(%rbp), %rax
	movl	28(%rax), %esi
	movl	$62, %edi
	movb	$0, %al
	callq	expect@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect