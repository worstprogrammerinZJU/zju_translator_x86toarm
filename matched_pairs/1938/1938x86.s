	.text
	.p2align	4, 0x90                         # -- Begin function read_unary_deref
read_unary_deref:                       # @read_unary_deref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movb	$0, %al
	callq	read_cast_expr@PLT
	movl	%eax, %edi
	callq	conv@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_PTR(%rip), %rax
	je	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	node2s@PLT
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	cmpq	KIND_FUNC(%rip), %rax
	jne	.LBB0_4
# %bb.3:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	AST_DEREF(%rip), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	movq	-24(%rbp), %rdx
	callq	ast_uop@PLT
	movq	%rax, -8(%rbp)
.LBB0_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.quad	0                               # 0x0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pointer type expected, but got %s"
	.bss
	.globl	KIND_FUNC
	.p2align	3
KIND_FUNC:
	.quad	0                               # 0x0
	.globl	AST_DEREF
	.p2align	2
AST_DEREF:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_deref
	.addrsig_sym conv
	.addrsig_sym read_cast_expr
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ast_uop
	.addrsig_sym KIND_PTR
	.addrsig_sym KIND_FUNC
	.addrsig_sym AST_DEREF