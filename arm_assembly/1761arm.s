	.text
	.globl	network_height                  // -- Begin function network_height
	.p2align	2
	.type	network_height,@function
network_height:                         // @network_height
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	network_height, .Lfunc_end0-network_height
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig