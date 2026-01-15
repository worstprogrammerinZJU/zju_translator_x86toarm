	.text
	.globl	yyget_lval                      # -- Begin function yyget_lval
	.p2align	4, 0x90
yyget_lval:                             # @yyget_lval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	yylval(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	yylval
	.p2align	3
yylval:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yylval