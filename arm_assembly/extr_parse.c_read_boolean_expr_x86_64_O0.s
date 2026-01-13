	.text
	.p2align	4, 0x90                         # -- Begin function read_boolean_expr
read_boolean_expr:                      # @read_boolean_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	read_expr@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %edi
	callq	is_flotype@PLT
	cmpq	$0, %rax
	je	.LBB0_2
# %bb.1:
	movl	type_bool(%rip), %edi
	movq	-8(%rbp), %rsi
	callq	ast_conv@PLT
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)                 # 8-byte Spill
.LBB0_3:
	movq	-16(%rbp), %rax                 # 8-byte Reload
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	type_bool
	.p2align	2
type_bool:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_boolean_expr
	.addrsig_sym read_expr
	.addrsig_sym is_flotype
	.addrsig_sym ast_conv
	.addrsig_sym type_bool