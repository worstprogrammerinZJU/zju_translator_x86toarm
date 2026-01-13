	.text
	.p2align	4, 0x90                         # -- Begin function wrap
wrap:                                   # @wrap
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %esi
	callq	same_arith_type@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	AST_CONV(%rip), %edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
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
	.globl	AST_CONV
	.p2align	2
AST_CONV:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym wrap
	.addrsig_sym same_arith_type
	.addrsig_sym ast_uop
	.addrsig_sym AST_CONV