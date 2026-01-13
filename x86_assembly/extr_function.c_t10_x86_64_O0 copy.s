	.text
	.globl	t10                             # -- Begin function t10
	.p2align	4, 0x90
t10:                                    # @t10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	cvtsi2sdl	-4(%rbp), %xmm0
	addsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig