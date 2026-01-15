	.text
	.p2align	4, 0x90                         # -- Begin function read_unary_lognot
read_unary_lognot:                      # @read_unary_lognot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	conv@PLT
	movq	%rax, -8(%rbp)
	movl	type_int(%rip), %esi
	movq	-8(%rbp), %rdx
	movl	$33, %edi
	callq	ast_uop@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_int
	.p2align	2
type_int:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_lognot
	.addrsig_sym read_cast_expr
	.addrsig_sym conv
	.addrsig_sym ast_uop
	.addrsig_sym type_int