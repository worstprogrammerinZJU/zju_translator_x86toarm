	.text
	.p2align	4, 0x90                         # -- Begin function read_relational_expr
read_relational_expr:                   # @read_relational_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	read_shift_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$60, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -12(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	read_shift_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-12(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$60, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_13
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$62, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$0, %al
	callq	read_shift_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	%eax, -16(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	-16(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$60, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_12
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	OP_LE(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movb	OP_LE(%rip), %al
	movb	%al, -17(%rbp)                  # 1-byte Spill
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -24(%rbp)                 # 4-byte Spill
	movb	$0, %al
	callq	read_shift_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	-24(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	-17(%rbp), %al                  # 1-byte Reload
	movsbl	%al, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_11
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	OP_GE(%rip), %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_1 Depth=1
	movb	OP_LE(%rip), %al
	movb	%al, -25(%rbp)                  # 1-byte Spill
	movb	$0, %al
	callq	read_shift_expr@PLT
	movq	%rax, %rdi
	callq	conv@PLT
	movl	%eax, -32(%rbp)                 # 4-byte Spill
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	-32(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movb	-25(%rbp), %al                  # 1-byte Reload
	movsbl	%al, %edi
	callq	binop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	type_int(%rip), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	jmp	.LBB0_1
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	OP_LE
OP_LE:
	.byte	0                               # 0x0
	.globl	OP_GE
OP_GE:
	.byte	0                               # 0x0
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_relational_expr
	.addrsig_sym read_shift_expr
	.addrsig_sym next_token
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym OP_LE
	.addrsig_sym OP_GE
	.addrsig_sym type_int