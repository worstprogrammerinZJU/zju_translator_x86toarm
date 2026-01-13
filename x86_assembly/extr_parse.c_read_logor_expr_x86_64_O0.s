	.text
	.p2align	4, 0x90                         # -- Begin function read_logor_expr
read_logor_expr:                        # @read_logor_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	read_logand_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	OP_LOGOR(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	type_int(%rip), %eax
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movl	OP_LOGOR(%rip), %eax
	movl	%eax, -20(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	movb	$0, %al
	callq	read_logand_expr@PLT
	movl	-24(%rbp), %edi                 # 4-byte Reload
	movl	-20(%rbp), %esi                 # 4-byte Reload
	movq	-16(%rbp), %rdx                 # 8-byte Reload
	movq	%rax, %rcx
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_LOGOR
	.p2align	2
OP_LOGOR:
	.long	0                               # 0x0
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_logor_expr
	.addrsig_sym read_logand_expr
	.addrsig_sym next_token
	.addrsig_sym ast_binop
	.addrsig_sym OP_LOGOR
	.addrsig_sym type_int