	.text
	.p2align	2                               // -- Begin function stbi__bitreverse16
	.type	stbi__bitreverse16,@function
stbi__bitreverse16:                     // @stbi__bitreverse16
// %bb.0:
	sub	sp, sp, #16
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	mov	w9, #43690
	and	w9, w8, w9
	ldr	w8, [sp, #12]
	mov	w10, #21845
	and	w8, w8, w10
	lsl	w8, w8, #1
	orr	w8, w8, w9, asr #1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	mov	w9, #52428
	and	w9, w8, w9
	ldr	w8, [sp, #12]
	mov	w10, #13107
	and	w8, w8, w10
	lsl	w8, w8, #2
	orr	w8, w8, w9, asr #2
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	mov	w9, #61680
	and	w9, w8, w9
	ldr	w8, [sp, #12]
	mov	w10, #3855
	and	w8, w8, w10
	lsl	w8, w8, #4
	orr	w8, w8, w9, asr #4
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	and	w9, w8, #0xff00
	ldrb	w8, [sp, #12]
	lsl	w8, w8, #8
	orr	w8, w8, w9, asr #8
	str	w8, [sp, #12]
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__bitreverse16, .Lfunc_end0-stbi__bitreverse16
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bitreverse16