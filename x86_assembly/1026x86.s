	.text
	.p2align	4, 0x90                         # -- Begin function ensure_lvar_init
ensure_lvar_init:                       # @ensure_lvar_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_LVAR(%rip), %rax
	sete	%al
	andb	$1, %al
	movzbl	%al, %edi
	callq	assert@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rax
	movl	24(%rax), %esi
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movl	(%rax), %edx
	callq	emit_decl_init@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.globl	AST_LVAR
	.p2align	3
AST_LVAR:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_lvar_init
	.addrsig_sym assert
	.addrsig_sym emit_decl_init
	.addrsig_sym SAVE
	.addrsig_sym AST_LVAR