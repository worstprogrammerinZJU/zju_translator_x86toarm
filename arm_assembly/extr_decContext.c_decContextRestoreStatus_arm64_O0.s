	.text
	.globl	decContextRestoreStatus         // -- Begin function decContextRestoreStatus
	.p2align	2
	.type	decContextRestoreStatus,@function
decContextRestoreStatus:                // @decContextRestoreStatus
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w10, [sp]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	bic	w8, w8, w10
	str	w8, [x9]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	and	w10, w8, w9
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	ldr	x0, [sp, #8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	decContextRestoreStatus, .Lfunc_end0-decContextRestoreStatus
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig