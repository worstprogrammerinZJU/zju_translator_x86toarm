	.text
	.p2align	4, 0x90                         # -- Begin function stbi__at_eof
stbi__at_eof:                           # @stbi__at_eof
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_6
# %bb.1:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	movl	24(%rcx), %edi
	callq	*%rax
	cmpl	$0, %eax
	jne	.LBB0_3
# %bb.2:
	movl	$0, -4(%rbp)
	jmp	.LBB0_7
.LBB0_3:
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB0_5
# %bb.4:
	movl	$1, -4(%rbp)
	jmp	.LBB0_7
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	16(%rcx), %rax
	setge	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
.LBB0_7:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__at_eof