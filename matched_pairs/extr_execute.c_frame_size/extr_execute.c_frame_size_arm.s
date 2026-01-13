	.text
	.p2align	2                               // -- Begin function frame_size
	.type	frame_size,@function
frame_size:                             // @frame_size
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	add	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x9, w8
	mov	x8, #4
	mul	x8, x8, x9
	add	x8, x8, #4
	mov	w0, w8
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	frame_size, .Lfunc_end0-frame_size
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym frame_size