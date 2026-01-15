	.text
	.p2align	4, 0x90                         # -- Begin function read_conditional_expr
read_conditional_expr:                  # @read_conditional_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_logor_expr@PLT
	movq	%rax, -16(%rbp)
	movl	$63, %edi
	callq	next_token@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	do_read_conditional_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_conditional_expr
	.addrsig_sym read_logor_expr
	.addrsig_sym next_token
	.addrsig_sym do_read_conditional_expr