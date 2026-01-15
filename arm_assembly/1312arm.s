	.text
	.p2align	2                               // -- Begin function rotl32
	.type	rotl32,@function
rotl32:                                 // @rotl32
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	lsl	w8, w8, w9
	ldr	w9, [sp, #12]
	ldr	w11, [sp, #8]
	mov	w10, #32
	subs	w10, w10, w11
	asr	w9, w9, w10
	orr	w0, w8, w9
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	rotl32, .Lfunc_end0-rotl32
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym rotl32