	.text
	.p2align	2                               // -- Begin function get_delay
	.type	get_delay,@function
get_delay:                              // @get_delay
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	ldr	x9, [sp, #8]
	ldr	w9, [x9]
	subs	w9, w9, #1
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #4]
	ldr	w8, [sp, #4]
	mul	w8, w8, w9
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #24]
	ldrsw	x8, [sp, #4]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #8]
	ldr	w8, [sp, #4]
	mul	w8, w8, w9
	str	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #16]
	ldrsw	x8, [sp, #4]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	ldr	w0, [sp, #4]
	ldur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #8]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #4]
	mul	w2, w8, w9
	bl	av_rescale
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_delay, .Lfunc_end0-get_delay
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_delay
	.addrsig_sym av_rescale