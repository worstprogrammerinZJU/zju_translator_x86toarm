	.text
	.p2align	4, 0x90                         # -- Begin function emit_conv
emit_conv:                              # @emit_conv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	emit_expr@PLT
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %esi
	callq	emit_load_convert@PLT
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_conv
	.addrsig_sym emit_expr
	.addrsig_sym emit_load_convert
	.addrsig_sym SAVE