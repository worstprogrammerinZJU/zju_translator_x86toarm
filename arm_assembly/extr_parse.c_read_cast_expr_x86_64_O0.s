	.text
	.p2align	4, 0x90                         # -- Begin function read_cast_expr
read_cast_expr:                         # @read_cast_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.1:
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, %rdi
	callq	is_type@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.2:
	movb	$0, %al
	callq	read_cast_type@PLT
	movq	%rax, -24(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, %rdi
	movl	$123, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rdi
	callq	read_compound_literal@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	read_postfix_expr_tail@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_4:
	movl	OP_CAST(%rip), %eax
	movl	%eax, -44(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	callq	read_cast_expr
	movl	-44(%rbp), %edi                 # 4-byte Reload
	movq	-40(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	ast_uop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_6
.LBB0_5:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movb	$0, %al
	callq	read_unary_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_6:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_CAST
	.p2align	2
OP_CAST:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_cast_expr
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym is_type
	.addrsig_sym peek
	.addrsig_sym read_cast_type
	.addrsig_sym expect
	.addrsig_sym read_compound_literal
	.addrsig_sym read_postfix_expr_tail
	.addrsig_sym ast_uop
	.addrsig_sym unget_token
	.addrsig_sym read_unary_expr
	.addrsig_sym OP_CAST