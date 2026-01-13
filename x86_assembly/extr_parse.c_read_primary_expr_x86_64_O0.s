	.text
	.p2align	4, 0x90                         # -- Begin function read_primary_expr
read_primary_expr:                      # @read_primary_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movb	$0, %al
	callq	get@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_2:
	movq	-16(%rbp), %rdi
	movl	$40, %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_6
# %bb.3:
	movl	$123, %edi
	callq	next_token@PLT
	cmpq	$0, %rax
	je	.LBB0_5
# %bb.4:
	movb	$0, %al
	callq	read_stmt_expr@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_5:
	movb	$0, %al
	callq	read_expr@PLT
	movq	%rax, -24(%rbp)
	movl	$41, %edi
	callq	expect@PLT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_6:
	movq	-16(%rbp), %rdi
	movsbl	KGENERIC(%rip), %esi
	callq	is_keyword@PLT
	cmpq	$0, %rax
	je	.LBB0_8
# %bb.7:
	movb	$0, %al
	callq	read_generic@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_8:
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$4, %eax
	ja	.LBB0_14
# %bb.16:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_9:
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	read_var_or_func@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_10:
	movq	-16(%rbp), %rdi
	callq	read_number@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_11:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	callq	char_type@PLT
	movl	%eax, %edi
	movq	-16(%rbp), %rax
	movl	16(%rax), %esi
	callq	ast_inttype@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_12:
	movq	-16(%rbp), %rax
	movl	12(%rax), %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	4(%rax), %edx
	callq	ast_string@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_15
.LBB0_13:
	movq	-16(%rbp), %rdi
	callq	unget_token@PLT
	movq	$0, -8(%rbp)
	jmp	.LBB0_15
.LBB0_14:
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	leaq	.L.str(%rip), %rdi
	callq	error@PLT
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
	.long	.LBB0_10-.LJTI0_0
	.long	.LBB0_13-.LJTI0_0
	.long	.LBB0_9-.LJTI0_0
	.long	.LBB0_11-.LJTI0_0
                                        # -- End function
	.bss
	.globl	KGENERIC
KGENERIC:
	.byte	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error: unknown token kind: %d"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_primary_expr
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym next_token
	.addrsig_sym read_stmt_expr
	.addrsig_sym read_expr
	.addrsig_sym expect
	.addrsig_sym read_generic
	.addrsig_sym read_var_or_func
	.addrsig_sym read_number
	.addrsig_sym ast_inttype
	.addrsig_sym char_type
	.addrsig_sym ast_string
	.addrsig_sym unget_token
	.addrsig_sym error
	.addrsig_sym KGENERIC