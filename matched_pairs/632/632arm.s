	.text
	.globl	decContextSetStatusQuiet        // -- Begin function decContextSetStatusQuiet
	.p2align	2
	.type	decContextSetStatusQuiet,@function
decContextSetStatusQuiet:               // @decContextSetStatusQuiet
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	w10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	decContextSetStatusQuiet, .Lfunc_end0-decContextSetStatusQuiet
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig