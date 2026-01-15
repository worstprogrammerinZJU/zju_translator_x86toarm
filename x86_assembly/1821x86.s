	.text
	.p2align	4, 0x90                         # -- Begin function eval_struct_ref
eval_struct_ref:                        # @eval_struct_ref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	AST_STRUCT_REF(%rip), %rax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	addl	-20(%rbp), %esi
	callq	eval_struct_ref
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movq	-16(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	eval_intexpr@PLT
	addl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB0_3:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	AST_STRUCT_REF
	.p2align	3
AST_STRUCT_REF:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym eval_struct_ref
	.addrsig_sym eval_intexpr
	.addrsig_sym AST_STRUCT_REF