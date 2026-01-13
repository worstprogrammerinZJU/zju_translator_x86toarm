	.text
	.p2align	4, 0x90                         # -- Begin function read_label_tail
read_label_tail:                        # @read_label_tail
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	make_vector@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	vec_push@PLT
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	vec_push@PLT
.LBB0_2:
	movq	-24(%rbp), %rdi
	callq	ast_compound_stmt@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_label_tail
	.addrsig_sym read_stmt
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_compound_stmt