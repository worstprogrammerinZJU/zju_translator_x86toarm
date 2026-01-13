	.text
	.p2align	2                               // -- Begin function stbiw__zhash
	.type	stbiw__zhash,@function
stbiw__zhash:                           // @stbiw__zhash
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w8, [x8]
	ldr	x9, [sp, #8]
	ldrb	w9, [x9, #1]
	add	w8, w8, w9, lsl #8
	ldr	x9, [sp, #8]
	ldrb	w9, [x9, #2]
	add	w8, w8, w9, lsl #16
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w9, lsl #3
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	add	w8, w8, w9, asr #5
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w9, lsl #4
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	add	w8, w8, w9, asr #17
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	eor	w8, w8, w9, lsl #25
	str	w8, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #4]
	add	w8, w8, w9, asr #6
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbiw__zhash, .Lfunc_end0-stbiw__zhash
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__zhash