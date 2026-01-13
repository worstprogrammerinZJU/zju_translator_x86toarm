	.text
	.globl	decContextGetRounding           // -- Begin function decContextGetRounding
	.p2align	2
	.type	decContextGetRounding,@function
decContextGetRounding:                  // @decContextGetRounding
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	decContextGetRounding, .Lfunc_end0-decContextGetRounding
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig