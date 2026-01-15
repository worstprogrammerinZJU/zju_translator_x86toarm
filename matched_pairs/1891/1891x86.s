	.text
	.p2align	4, 0x90                         # -- Begin function read_funcall
read_funcall:                           # @read_funcall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_ADDR(%rip), %rax
	jne	.LBB0_3
# %bb.1:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	cmpq	AST_FUNCDESG(%rip), %rax
	jne	.LBB0_3
# %bb.2:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movl	8(%rax), %edi
	callq	read_func_args@PLT
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	16(%rax), %esi
	movq	-32(%rbp), %rdx
	callq	ast_funcall@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_4
.LBB0_3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	callq	read_func_args@PLT
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	ast_funcptr_call@PLT
	movq	%rax, -8(%rbp)
.LBB0_4:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AST_ADDR
	.p2align	3
AST_ADDR:
	.quad	0                               # 0x0
	.globl	AST_FUNCDESG
	.p2align	3
AST_FUNCDESG:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_funcall
	.addrsig_sym read_func_args
	.addrsig_sym ast_funcall
	.addrsig_sym ast_funcptr_call
	.addrsig_sym AST_ADDR
	.addrsig_sym AST_FUNCDESG