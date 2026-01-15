	.text
	.p2align	4, 0x90                         # -- Begin function read_sizeof_operand_sub
read_sizeof_operand_sub:                # @read_sizeof_operand_sub
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.1:
	movb	$0, %al
	callq	peek@PLT
	movl	%eax, %edi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:
	movb	$0, %al
	callq	read_cast_type@PLT
	movq	%rax, -24(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movb	$0, %al
	callq	read_unary_expr@PLT
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_sizeof_operand_sub
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym expect
	.addrsig_sym unget_token
	.addrsig_sym read_unary_expr