	.text
	.globl	network_width                   // -- Begin function network_width
	.p2align	2
	.type	network_width,@function
network_width:                          // @network_width
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	network_width, .Lfunc_end0-network_width
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig