	.text
	.globl	tf3                             # -- Begin function tf3
	.p2align	4, 0x90
tf3:                                    # @tf3
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	cvtsi2ssl	-4(%rbp), %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig