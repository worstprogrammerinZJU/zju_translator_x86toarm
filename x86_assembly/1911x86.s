	.text
	.p2align	4, 0x90                         # -- Begin function read_opt_decl_or_stmt
read_opt_decl_or_stmt:                  # @read_opt_decl_or_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$59, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	read_decl_or_stmt@PLT
	movq	-16(%rbp), %rdi
	callq	ast_compound_stmt@PLT
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
	.addrsig_sym read_opt_decl_or_stmt
	.addrsig_sym next_token
	.addrsig_sym make_vector
	.addrsig_sym read_decl_or_stmt
	.addrsig_sym ast_compound_stmt