	.text
	.p2align	4, 0x90                         # -- Begin function read_shift_expr
read_shift_expr:                        # @read_shift_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movb	$0, %al
	callq	read_additive_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	OP_SAL(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	OP_SAL(%rip), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_10
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	OP_SAR(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_1 Depth=1
	movl	OP_SHR(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	OP_SAR(%rip), %eax
	movl	%eax, -28(%rbp)                 # 4-byte Spill
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax                 # 4-byte Reload
	movl	%eax, -12(%rbp)
	jmp	.LBB0_9
.LBB0_8:
	jmp	.LBB0_11
.LBB0_9:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_10
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	read_additive_expr@PLT
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	ensure_inttype@PLT
	movq	-24(%rbp), %rdi
	callq	ensure_inttype@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)                 # 8-byte Spill
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	conv@PLT
	movq	-48(%rbp), %rdi                 # 8-byte Reload
	movl	-36(%rbp), %esi                 # 4-byte Reload
	movl	-32(%rbp), %edx                 # 4-byte Reload
	movl	%eax, %ecx
	callq	ast_binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_1
.LBB0_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_SAL
	.p2align	2
OP_SAL:
	.long	0                               # 0x0
	.globl	OP_SAR
	.p2align	2
OP_SAR:
	.long	0                               # 0x0
	.globl	OP_SHR
	.p2align	2
OP_SHR:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_shift_expr
	.addrsig_sym read_additive_expr
	.addrsig_sym next_token
	.addrsig_sym ensure_inttype
	.addrsig_sym ast_binop
	.addrsig_sym conv
	.addrsig_sym OP_SAL
	.addrsig_sym OP_SAR
	.addrsig_sym OP_SHR