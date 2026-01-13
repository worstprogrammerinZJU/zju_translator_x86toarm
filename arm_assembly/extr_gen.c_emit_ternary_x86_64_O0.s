	.text
	.p2align	4, 0x90                         # -- Begin function emit_ternary
emit_ternary:                           # @emit_ternary
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	emit_expr@PLT
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	emit_je@PLT
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	emit_expr@PLT
.LBB0_2:
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_4
# %bb.3:
	movb	$0, %al
	callq	make_label@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	emit_jmp@PLT
	movq	-16(%rbp), %rdi
	callq	emit_label@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	emit_expr@PLT
	movq	-24(%rbp), %rdi
	callq	emit_label@PLT
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rdi
	callq	emit_label@PLT
.LBB0_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_ternary
	.addrsig_sym emit_expr
	.addrsig_sym make_label
	.addrsig_sym emit_je
	.addrsig_sym emit_jmp
	.addrsig_sym emit_label
	.addrsig_sym SAVE