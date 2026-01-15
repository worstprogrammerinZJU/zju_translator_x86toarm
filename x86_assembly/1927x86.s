	.text
	.p2align	4, 0x90                         # -- Begin function read_stmt_expr
read_stmt_expr:                         # @read_stmt_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	read_compound_stmt@PLT
	movq	%rax, -8(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movq	type_void(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	vec_len@PLT
	cmpq	$0, %rax
	jle	.LBB0_4
# %bb.1:
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	callq	vec_tail@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_3
# %bb.2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
.LBB0_3:
	jmp	.LBB0_4
.LBB0_4:
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_void
	.p2align	3
type_void:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_stmt_expr
	.addrsig_sym read_compound_stmt
	.addrsig_sym expect
	.addrsig_sym vec_len
	.addrsig_sym vec_tail
	.addrsig_sym type_void