	.text
	.p2align	4, 0x90                         # -- Begin function read_comma_expr
read_comma_expr:                        # @read_comma_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$44, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	read_assignment_expr@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movl	$44, %esi
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_comma_expr
	.addrsig_sym read_assignment_expr
	.addrsig_sym next_token
	.addrsig_sym ast_binop