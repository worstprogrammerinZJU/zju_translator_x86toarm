	.text
	.globl	yyget_debug                     # -- Begin function yyget_debug
	.p2align	4, 0x90
yyget_debug:                            # @yyget_debug
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	movl	yy_flex_debug(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.bss
	.globl	yy_flex_debug
	.p2align	2
yy_flex_debug:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym yy_flex_debug