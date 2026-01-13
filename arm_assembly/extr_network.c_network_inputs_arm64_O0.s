	.text
	.globl	network_inputs                  // -- Begin function network_inputs
	.p2align	2
	.type	network_inputs,@function
network_inputs:                         // @network_inputs
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	network_inputs, .Lfunc_end0-network_inputs
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig