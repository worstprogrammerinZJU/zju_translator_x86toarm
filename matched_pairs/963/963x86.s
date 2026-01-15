	.text
	.p2align	4, 0x90                         # -- Begin function emit_assign
emit_assign:                            # @emit_assign
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_STRUCT(%rip), %rax
	jne	.LBB0_3
# %bb.1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpl	$8, 8(%rax)
	jle	.LBB0_3
# %bb.2:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	emit_copy_struct@PLT
	jmp	.LBB0_4
.LBB0_3:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	emit_expr@PLT
	movq	-8(%rbp), %rax
	movl	16(%rax), %edi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movl	(%rax), %esi
	callq	emit_load_convert@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	emit_store@PLT
.LBB0_4:
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
	.globl	KIND_STRUCT
	.p2align	3
KIND_STRUCT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_assign
	.addrsig_sym emit_copy_struct
	.addrsig_sym emit_expr
	.addrsig_sym emit_load_convert
	.addrsig_sym emit_store
	.addrsig_sym SAVE
	.addrsig_sym KIND_STRUCT