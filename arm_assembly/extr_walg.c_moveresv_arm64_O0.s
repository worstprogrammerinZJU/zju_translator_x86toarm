	.text
	.p2align	2                               // -- Begin function moveresv
	.type	moveresv,@function
moveresv:                               // @moveresv
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldr	w10, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #12]
	ldr	x9, [sp, #16]
	ldr	w8, [x9, #4]
	add	w8, w8, w10
	str	w8, [x9, #4]
	ldr	w10, [sp, #12]
	ldr	x9, [sp, #24]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	w10, [sp, #12]
	ldr	x9, [sp, #24]
	ldr	w8, [x9, #4]
	subs	w8, w8, w10
	str	w8, [x9, #4]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	moveresv, .Lfunc_end0-moveresv
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym moveresv