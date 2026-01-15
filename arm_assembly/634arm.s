	.text
	.globl	decContextZeroStatus            // -- Begin function decContextZeroStatus
	.p2align	2
	.type	decContextZeroStatus,@function
decContextZeroStatus:                   // @decContextZeroStatus
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	xzr, [x8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	decContextZeroStatus, .Lfunc_end0-decContextZeroStatus
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig