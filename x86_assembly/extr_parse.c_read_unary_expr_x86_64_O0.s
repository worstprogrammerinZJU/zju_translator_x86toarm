	.text
	.p2align	4, 0x90                         # -- Begin function read_unary_expr
read_unary_expr:                        # @read_unary_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TKEYWORD(%rip), %rax
	jne	.LBB0_14
# %bb.1:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-33, %eax
	movl	%eax, %ecx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	subl	$99, %eax
	ja	.LBB0_13
# %bb.16:
	movq	-24(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_2:
	movb	$0, %al
	callq	read_sizeof_operand@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_3:
	movb	$0, %al
	callq	read_alignof_operand@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_4:
	movl	OP_PRE_INC(%rip), %edi
	callq	read_unary_incdec@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_5:
	movl	OP_PRE_DEC(%rip), %edi
	callq	read_unary_incdec@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_6:
	movq	-16(%rbp), %rdi
	callq	read_label_addr@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_7:
	movb	$0, %al
	callq	read_unary_addr@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_8:
	movq	-16(%rbp), %rdi
	callq	read_unary_deref@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_9:
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_10:
	movb	$0, %al
	callq	read_unary_minus@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_11:
	movq	-16(%rbp), %rdi
	callq	read_unary_bitnot@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_12:
	movb	$0, %al
	callq	read_unary_lognot@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movb	$0, %al
	callq	read_postfix_expr@PLT
	movq	%rax, -8(%rbp)
.LBB0_15:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.bss
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.quad	0                               # 0x0
	.globl	OP_PRE_INC
	.p2align	2
OP_PRE_INC:
	.long	0                               # 0x0
	.globl	OP_PRE_DEC
	.p2align	2
OP_PRE_DEC:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_expr
	.addrsig_sym get
	.addrsig_sym read_sizeof_operand
	.addrsig_sym read_alignof_operand
	.addrsig_sym read_unary_incdec
	.addrsig_sym read_label_addr
	.addrsig_sym read_unary_addr
	.addrsig_sym read_unary_deref
	.addrsig_sym read_cast_expr
	.addrsig_sym read_unary_minus
	.addrsig_sym read_unary_bitnot
	.addrsig_sym read_unary_lognot
	.addrsig_sym unget_token
	.addrsig_sym read_postfix_expr
	.addrsig_sym TKEYWORD
	.addrsig_sym OP_PRE_INC
	.addrsig_sym OP_PRE_DEC