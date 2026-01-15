	.text
	.p2align	4, 0x90                         # -- Begin function emit_decl_init
emit_decl_init:                         # @emit_decl_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	emit_fill_holes@PLT
	movl	$0, -20(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	vec_len@PLT
	movl	%eax, %ecx
	movl	-40(%rbp), %eax                 # 4-byte Reload
	cmpl	%ecx, %eax
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	vec_get@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_INIT(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	$0, (%rax)
	setg	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -36(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpq	AST_LITERAL(%rip), %rax
	jne	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -36(%rbp)
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rsi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movslq	-12(%rbp), %rax
	addq	%rax, %rdx
	callq	emit_save_literal@PLT
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdi
	callq	emit_expr@PLT
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rsi
	movslq	-12(%rbp), %rax
	addq	%rax, %rsi
	callq	emit_lsave@PLT
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AST_INIT
	.p2align	3
AST_INIT:
	.quad	0                               # 0x0
	.globl	AST_LITERAL
	.p2align	3
AST_LITERAL:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_decl_init
	.addrsig_sym emit_fill_holes
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym assert
	.addrsig_sym emit_save_literal
	.addrsig_sym emit_expr
	.addrsig_sym emit_lsave
	.addrsig_sym AST_INIT
	.addrsig_sym AST_LITERAL