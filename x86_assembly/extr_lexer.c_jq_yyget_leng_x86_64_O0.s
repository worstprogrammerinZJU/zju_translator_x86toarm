	.text
	.globl	yyget_leng                      # -- Begin function yyget_leng
	.p2align	4, 0x90
yyget_leng:                             # @yyget_leng
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	yyleng(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	yyleng
	.p2align	2
yyleng:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yyleng