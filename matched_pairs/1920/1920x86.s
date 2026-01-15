	.text
	.p2align	4, 0x90                         # -- Begin function read_return_stmt
read_return_stmt:                       # @read_return_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_expr_opt@PLT
	movq	%rax, -16(%rbp)
	movl	$59, %edi
	callq	expect@PLT
	cmpq	$0, -16(%rbp)
	je	.LBB0_2
# %bb.1:
	movq	current_func_type(%rip), %rax
	movl	(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, %rdi
	callq	ast_return@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	ast_return@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	current_func_type
	.p2align	3
current_func_type:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_return_stmt
	.addrsig_sym read_expr_opt
	.addrsig_sym expect
	.addrsig_sym ast_return
	.addrsig_sym ast_conv
	.addrsig_sym current_func_type