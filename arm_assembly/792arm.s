	.text
	.p2align	2                               // -- Begin function __spiTranslate32
	.type	__spiTranslate32,@function
__spiTranslate32:                       // @__spiTranslate32
// %bb.0:
	sub	sp, sp, #32
	str	w0, [sp, #28]
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #20]
	orr	w8, w8, w9, lsl #8
	ldr	w9, [sp, #16]
	orr	w8, w8, w9, lsl #16
	ldr	w9, [sp, #12]
	orr	w0, w8, w9, lsl #24
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	__spiTranslate32, .Lfunc_end0-__spiTranslate32
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __spiTranslate32