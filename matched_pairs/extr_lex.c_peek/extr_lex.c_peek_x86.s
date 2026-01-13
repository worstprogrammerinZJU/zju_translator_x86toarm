	.text
	.p2align	4, 0x90                         # -- Begin function peek
peek:                                   # @peek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	readc@PLT
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %edi
	callq	unreadc@PLT
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym peek
	.addrsig_sym readc
	.addrsig_sym unreadc