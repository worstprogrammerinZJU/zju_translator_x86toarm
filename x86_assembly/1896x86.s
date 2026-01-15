	.text
	.p2align	4, 0x90                         # -- Begin function read_if_stmt
read_if_stmt:                           # @read_if_stmt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$40, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_boolean_expr@PLT
	movq	%rax, -16(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -24(%rbp)
	movl	KELSE(%rip), %edi
	callq	next_token@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	ast_if@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movb	$0, %al
	callq	read_stmt@PLT
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	ast_if@PLT
	movq	%rax, -8(%rbp)
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KELSE
	.p2align	2
KELSE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_if_stmt
	.addrsig_sym expect
	.addrsig_sym read_boolean_expr
	.addrsig_sym read_stmt
	.addrsig_sym next_token
	.addrsig_sym ast_if
	.addrsig_sym KELSE