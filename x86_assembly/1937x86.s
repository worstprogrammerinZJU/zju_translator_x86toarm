	.text
	.p2align	4, 0x90                         # -- Begin function read_unary_bitnot
read_unary_bitnot:                      # @read_unary_bitnot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, %al
	callq	read_cast_expr@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	conv@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edi
	callq	is_inttype@PLT
	cmpl	$0, %eax
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	node2s@PLT
	movq	-24(%rbp), %rdi                 # 8-byte Reload
	movl	%eax, %edx
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movq	-16(%rbp), %rax
	movl	(%rax), %esi
	movq	-16(%rbp), %rdx
	movl	$126, %edi
	callq	ast_uop@PLT
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid use of ~: %s"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_unary_bitnot
	.addrsig_sym read_cast_expr
	.addrsig_sym conv
	.addrsig_sym is_inttype
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ast_uop