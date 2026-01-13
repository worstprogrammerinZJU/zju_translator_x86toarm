	.text
	.globl	cuda_set_device                 # -- Begin function cuda_set_device
	.p2align	4, 0x90
cuda_set_device:                        # @cuda_set_device
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end0:
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig