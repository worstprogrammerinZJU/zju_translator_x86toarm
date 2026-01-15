	.text
	.p2align	2                               // -- Begin function setinstaux
	.type	setinstaux,@function
setinstaux:                             // @setinstaux
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	w2, [sp, #16]
	str	w3, [sp, #12]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	str	w8, [x9, #4]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	setinstaux, .Lfunc_end0-setinstaux
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym setinstaux