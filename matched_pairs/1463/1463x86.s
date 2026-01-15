	.text
	.globl	yyget_out                       # -- Begin function yyget_out
	.p2align	4, 0x90
yyget_out:                              # @yyget_out
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	yyout(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	yyout
	.p2align	3
yyout:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyout