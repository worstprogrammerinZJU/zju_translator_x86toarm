	.text
	.p2align	4, 0x90                         # -- Begin function yy_init_globals
yy_init_globals:                        # @yy_init_globals
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 48(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	$0, yyin(%rip)
	movq	$0, yyout(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	yyin
	.p2align	3
yyin:
	.quad	0
	.globl	yyout
	.p2align	3
yyout:
	.quad	0
	.globl	stdin
	.p2align	3
stdin:
	.quad	0
	.globl	stdout
	.p2align	3
stdout:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_init_globals
	.addrsig_sym yyin
	.addrsig_sym yyout