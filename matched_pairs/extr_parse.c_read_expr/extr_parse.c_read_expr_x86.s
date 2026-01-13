	.text
	.globl	read_expr                       # -- Begin function read_expr
	.p2align	4, 0x90
read_expr:                              # @read_expr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	$0, %al
	callq	peek@PLT
	movq	%rax, -8(%rbp)
	movb	$0, %al
	callq	read_comma_expr@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_2
# %bb.1:
	movq	-8(%rbp), %rdi
	leaq	.L.str(%rip), %rsi
	callq	errort@PLT
.LBB0_2:
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"expression expected"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym peek
	.addrsig_sym read_comma_expr
	.addrsig_sym errort