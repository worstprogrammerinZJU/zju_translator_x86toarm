	.text
	.globl	cuda_set_device                 // -- Begin function cuda_set_device
	.p2align	2
	.type	cuda_set_device,@function
cuda_set_device:                        // @cuda_set_device
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	cuda_set_device, .Lfunc_end0-cuda_set_device
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig