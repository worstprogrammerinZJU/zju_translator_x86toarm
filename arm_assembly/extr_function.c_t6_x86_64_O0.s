	.text
	.globl	t6                              # -- Begin function t6
	.p2align	4, 0x90
t6:                                     # @t6
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig