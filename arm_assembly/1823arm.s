	.text
	.p2align	2                               // -- Begin function finish_bitfield
	.type	finish_bitfield,@function
finish_bitfield:                        // @finish_bitfield
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp]
	ldr	w8, [x8]
	add	w8, w8, #7
	mov	w9, #8
	sdiv	w10, w8, w9
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	x8, [sp]
	str	wzr, [x8]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	finish_bitfield, .Lfunc_end0-finish_bitfield
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym finish_bitfield