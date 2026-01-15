	.text
	.p2align	4, 0x90                         # -- Begin function conv
conv:                                   # @conv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	$0, -8(%rbp)
	jmp	.LBB0_10
.LBB0_2:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	addl	$-128, %eax
	movl	%eax, %ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	subl	$5, %eax
	ja	.LBB0_9
# %bb.11:
	movq	-32(%rbp), %rax                 # 8-byte Reload
	leaq	.LJTI0_0(%rip), %rcx
	movslq	(%rcx,%rax,4), %rax
	addq	%rcx, %rax
	jmpq	*%rax
.LBB0_3:
	movl	AST_CONV(%rip), %eax
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	make_ptr_type@PLT
	movl	-36(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movq	-16(%rbp), %rdx
	callq	ast_uop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_4:
	movl	AST_ADDR(%rip), %eax
	movl	%eax, -40(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	make_ptr_type@PLT
	movl	-40(%rbp), %edi                 # 4-byte Reload
	movl	%eax, %esi
	movq	-16(%rbp), %rdx
	callq	ast_uop@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_5:
	movl	type_int(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_6:
	movq	-24(%rbp), %rax
	cmpl	$0, 4(%rax)
	jle	.LBB0_8
# %bb.7:
	movl	type_int(%rip), %edi
	movq	-16(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, -8(%rbp)
	jmp	.LBB0_10
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_10:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_6-.LJTI0_0
	.long	.LBB0_4-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_5-.LJTI0_0
	.long	.LBB0_3-.LJTI0_0
                                        # -- End function
	.bss
	.globl	AST_CONV
	.p2align	2
AST_CONV:
	.long	0                               # 0x0
	.globl	AST_ADDR
	.p2align	2
AST_ADDR:
	.long	0                               # 0x0
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym conv
	.addrsig_sym ast_uop
	.addrsig_sym make_ptr_type
	.addrsig_sym ast_conv
	.addrsig_sym AST_CONV
	.addrsig_sym AST_ADDR
	.addrsig_sym type_int