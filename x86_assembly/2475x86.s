	.text
	.p2align	4, 0x90                         # -- Begin function exist
exist:                                  # @exist
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	leaq	-16(%rbp), %rsi
	callq	stat@PLT
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	setne	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym exist
	.addrsig_sym stat