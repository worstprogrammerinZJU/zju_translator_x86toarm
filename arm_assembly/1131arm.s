	.text
	.globl	rgbgr_image                     // -- Begin function rgbgr_image
	.p2align	2
	.type	rgbgr_image,@function
rgbgr_image:                            // @rgbgr_image
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #20]
	mul	w10, w10, w11
	add	w9, w9, w10, lsl #1
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	ldr	w11, [sp, #16]
	ldr	w12, [sp, #20]
	mul	w11, w11, w12
	add	w10, w10, w11, lsl #1
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	rgbgr_image, .Lfunc_end0-rgbgr_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig