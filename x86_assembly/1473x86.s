	.text
	.globl	yyset_debug                     # -- Begin function yyset_debug
	.p2align	4, 0x90
yyset_debug:                            # @yyset_debug
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, yy_flex_debug(%rip)
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