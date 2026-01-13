	.text
	.p2align	4, 0x90                         # -- Begin function read_stmt
read_stmt:                              # @read_stmt
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
	jne	.LBB0_15
# %bb.1:
	movq	-16(%rbp), %rax
	movl	8(%rax), %eax
	addl	$-123, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$15, %eax
	ja	.LBB0_14
# %bb.20:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_2:
	movb	$0, %al
	callq	read_compound_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_3:
	movb	$0, %al
	callq	read_if_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_4:
	movb	$0, %al
	callq	read_for_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_5:
	movb	$0, %al
	callq	read_while_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_6:
	movb	$0, %al
	callq	read_do_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_7:
	movb	$0, %al
	callq	read_return_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_8:
	movb	$0, %al
	callq	read_switch_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_9:
	movq	-16(%rbp), %rdi
	callq	read_case_label@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_10:
	movq	-16(%rbp), %rdi
	callq	read_default_label@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_11:
	movq	-16(%rbp), %rdi
	callq	read_break_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_12:
	movq	-16(%rbp), %rdi
	callq	read_continue_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_13:
	movb	$0, %al
	callq	read_goto_stmt@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_14:
	jmp	.LBB0_15
.LBB0_15:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	TIDENT(%rip), %rax
	jne	.LBB0_18
# %bb.16:
	movl	$58, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_18
# %bb.17:
	movq	-16(%rbp), %rdi
	callq	read_label@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_19
.LBB0_18:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movb	$0, %al
	callq	read_expr_opt@PLT
	movq	%rax, -24(%rbp)
	movl	$59, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_19:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_2-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_14-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_8-.LJTI0_0
	.long	.LBB0_7-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_12-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
                                        # -- End function
	.bss
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.quad	0                               # 0x0
	.globl	TIDENT
	.p2align	3
TIDENT:
	.quad	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_stmt
	.addrsig_sym get
	.addrsig_sym read_compound_stmt
	.addrsig_sym read_if_stmt
	.addrsig_sym read_for_stmt
	.addrsig_sym read_while_stmt
	.addrsig_sym read_do_stmt
	.addrsig_sym read_return_stmt
	.addrsig_sym read_switch_stmt
	.addrsig_sym read_case_label
	.addrsig_sym read_default_label
	.addrsig_sym read_break_stmt
	.addrsig_sym read_continue_stmt
	.addrsig_sym read_goto_stmt
	.addrsig_sym next_token
	.addrsig_sym read_label
	.addrsig_sym unget_token
	.addrsig_sym read_expr_opt
	.addrsig_sym expect
	.addrsig_sym TKEYWORD
	.addrsig_sym TIDENT