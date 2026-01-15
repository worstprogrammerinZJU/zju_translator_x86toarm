	.text
	.globl	decContextSetRounding           // -- Begin function decContextSetRounding
	.p2align	2
	.type	decContextSetRounding,@function
decContextSetRounding:                  // @decContextSetRounding
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	decContextSetRounding, .Lfunc_end0-decContextSetRounding
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig