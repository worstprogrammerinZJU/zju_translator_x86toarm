	.text
	.p2align	2                               // -- Begin function stbi__bitcount
	.type	stbi__bitcount,@function
stbi__bitcount:                         // @stbi__bitcount
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	and	w8, w8, #0x55555555
	ldr	w9, [sp, #12]
	lsr	w9, w9, #1
	and	w9, w9, #0x55555555
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	and	w8, w8, #0x33333333
	ldr	w9, [sp, #12]
	lsr	w9, w9, #2
	and	w9, w9, #0x33333333
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #12]
	add	w8, w8, w9, lsr #4
	and	w8, w8, #0xf0f0f0f
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #12]
	add	w8, w8, w9, lsr #8
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #12]
	add	w8, w8, w9, lsr #16
	str	w8, [sp, #12]
	ldrb	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__bitcount, .Lfunc_end0-stbi__bitcount
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bitcount