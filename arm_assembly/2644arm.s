	.text
	.p2align	2                               // -- Begin function ratio
	.type	ratio,@function
ratio:                                  // @ratio
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #4]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
                                        // kill: def $w8 killed $w8 killed $x8
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
                                        // kill: def $w9 killed $w9 killed $x9
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #28]
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	sdiv	w8, w8, w9
	str	w8, [sp, #28]
	b	.LBB0_3
.LBB0_3:
	ldr	w0, [sp, #28]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ratio, .Lfunc_end0-ratio
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ratio