	.text
	.p2align	4, 0x90                         # -- Begin function next_token
next_token:                             # @next_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-8(%rbp), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	$1, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movl	$0, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym next_token
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym unget_token