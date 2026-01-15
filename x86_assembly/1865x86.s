	.text
	.p2align	4, 0x90                         # -- Begin function read_compound_literal
read_compound_literal:                  # @read_compound_literal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	read_decl_init@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ast_lvar@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_compound_literal
	.addrsig_sym make_label
	.addrsig_sym read_decl_init
	.addrsig_sym ast_lvar