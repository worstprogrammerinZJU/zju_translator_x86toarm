	.text
	.globl	peek_token                      # -- Begin function peek_token
	.p2align	4, 0x90
peek_token:                             # @peek_token
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_token@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	unget_token@PLT
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_token
	.addrsig_sym unget_token