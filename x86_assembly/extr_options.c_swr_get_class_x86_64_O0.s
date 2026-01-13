	.text
	.globl	swr_get_class                   # -- Begin function swr_get_class
	.p2align	4, 0x90
swr_get_class:                          # @swr_get_class
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	av_class(%rip), %rax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	.rodata,"a",@progbits
	.globl	av_class
	.p2align	2
av_class:
	.long	0                               # 0x0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym av_class