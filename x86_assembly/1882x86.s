	.text
	.p2align	4, 0x90                         # -- Begin function read_equality_expr
read_equality_expr:                     # @read_equality_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	$0, %al
	callq	read_relational_expr@PLT
	movq	%rax, -16(%rbp)
	movl	OP_EQ(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	OP_EQ(%rip), %eax
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	callq	read_equality_expr
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-32(%rbp), %edi                 # 4-byte Reload
	movl	-28(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	binop@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	OP_NE(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_4
# %bb.3:
	movl	OP_NE(%rip), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	callq	read_equality_expr
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-40(%rbp), %edi                 # 4-byte Reload
	movl	-36(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	callq	binop@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_7
.LBB0_5:
	jmp	.LBB0_6
.LBB0_6:
	movl	type_int(%rip), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_EQ
	.p2align	2
OP_EQ:
	.long	0                               # 0x0
	.globl	OP_NE
	.p2align	2
OP_NE:
	.long	0                               # 0x0
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_equality_expr
	.addrsig_sym read_relational_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym OP_EQ
	.addrsig_sym OP_NE
	.addrsig_sym type_int