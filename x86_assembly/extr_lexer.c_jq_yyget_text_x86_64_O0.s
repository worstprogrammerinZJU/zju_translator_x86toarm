	.text
	.globl	yyget_text                      # -- Begin function yyget_text
	.p2align	4, 0x90
yyget_text:                             # @yyget_text
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	yytext(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	yytext
	.p2align	3
yytext:
	.quad	0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yytext