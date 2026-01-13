	.text
	.p2align	4, 0x90                         # -- Begin function read_subscript_expr
read_subscript_expr:                    # @read_subscript_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -16(%rbp)
	movb	$0, %al
	callq	read_expr@PLT
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movl	$93, %edi
	callq	expect@PLT
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movl	%eax, -36(%rbp)                 # 4-byte Spill
	movq	-24(%rbp), %rdi
	callq	conv@PLT
	movl	-36(%rbp), %esi                 # 4-byte Reload
	movl	%eax, %edx
	movl	$43, %edi
	callq	binop@PLT
	movq	%rax, -32(%rbp)
	movl	AST_DEREF(%rip), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %esi
	movq	-32(%rbp), %rdx
	callq	ast_uop@PLT
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"subscription expected"
	.bss
	.globl	AST_DEREF
	.p2align	2
AST_DEREF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_subscript_expr
	.addrsig_sym peek
	.addrsig_sym read_expr
	.addrsig_sym errort
	.addrsig_sym expect
	.addrsig_sym binop
	.addrsig_sym conv
	.addrsig_sym ast_uop
	.addrsig_sym AST_DEREF