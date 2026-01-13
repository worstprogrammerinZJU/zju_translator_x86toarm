	.text
	.p2align	4, 0x90                         # -- Begin function read_unary_addr
read_unary_addr:                        # @read_unary_addr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_FUNCDESG(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	callq	ensure_lvalue@PLT
	movl	AST_ADDR(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	make_ptr_type@PLT
	movl	-20(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movq	-16(%rbp), %rdx
	callq	ast_uop@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AST_FUNCDESG
	.p2align	3
AST_FUNCDESG:
	.quad	0                               # 0x0
	.globl	AST_ADDR
	.p2align	2
AST_ADDR:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_addr
	.addrsig_sym read_cast_expr
	.addrsig_sym conv
	.addrsig_sym ensure_lvalue
	.addrsig_sym ast_uop
	.addrsig_sym make_ptr_type
	.addrsig_sym AST_FUNCDESG
	.addrsig_sym AST_ADDR