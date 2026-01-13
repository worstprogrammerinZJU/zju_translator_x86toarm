	.text
	.globl	tf2                             # -- Begin function tf2
	.p2align	4, 0x90
tf2:                                    # @tf2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0                 # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig