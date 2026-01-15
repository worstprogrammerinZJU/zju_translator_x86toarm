	.text
	.p2align	4, 0x90                         # -- Begin function make_switch_jump
make_switch_jump:                       # @make_switch_jump
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB0_2
# %bb.1:
	movl	type_int(%rip), %eax
	movl	%eax, -56(%rbp)                 # 4-byte Spill
	movl	OP_EQ(%rip), %eax
	movl	%eax, -52(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	type_int(%rip), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	ast_inttype@PLT
	movl	-56(%rbp), %edi                 # 4-byte Reload
	movl	-52(%rbp), %esi                 # 4-byte Reload
	movq	-48(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	callq	ast_binop@PLT
	movq	%rax, -24(%rbp)
	jmp	.LBB0_3
.LBB0_2:
	movl	type_int(%rip), %eax
	movl	%eax, -80(%rbp)                 # 4-byte Spill
	movl	OP_LE(%rip), %eax
	movl	%eax, -76(%rbp)                 # 4-byte Spill
	movl	type_int(%rip), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	ast_inttype@PLT
	movl	-80(%rbp), %edi                 # 4-byte Reload
	movl	-76(%rbp), %esi                 # 4-byte Reload
	movq	%rax, %rdx
	movq	-8(%rbp), %rcx
	callq	ast_binop@PLT
	movq	%rax, -32(%rbp)
	movl	type_int(%rip), %eax
	movl	%eax, -72(%rbp)                 # 4-byte Spill
	movl	OP_LE(%rip), %eax
	movl	%eax, -68(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	movl	type_int(%rip), %edi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	ast_inttype@PLT
	movl	-72(%rbp), %edi                 # 4-byte Reload
	movl	-68(%rbp), %esi                 # 4-byte Reload
	movq	-64(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	callq	ast_binop@PLT
	movq	%rax, -40(%rbp)
	movl	type_int(%rip), %edi
	movl	OP_LOGAND(%rip), %esi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	ast_binop@PLT
	movq	%rax, -24(%rbp)
.LBB0_3:
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	callq	ast_jump@PLT
	movq	-88(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	ast_if@PLT
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.globl	OP_EQ
	.p2align	2
OP_EQ:
	.long	0                               # 0x0
	.globl	OP_LE
	.p2align	2
OP_LE:
	.long	0                               # 0x0
	.globl	OP_LOGAND
	.p2align	2
OP_LOGAND:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_switch_jump
	.addrsig_sym ast_binop
	.addrsig_sym ast_inttype
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym type_int
	.addrsig_sym OP_EQ
	.addrsig_sym OP_LE
	.addrsig_sym OP_LOGAND