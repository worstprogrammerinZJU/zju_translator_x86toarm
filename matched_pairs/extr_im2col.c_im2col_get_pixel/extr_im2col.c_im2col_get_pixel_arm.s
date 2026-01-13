	.text
	.globl	im2col_get_pixel                // -- Begin function im2col_get_pixel
	.p2align	2
	.type	im2col_get_pixel,@function
im2col_get_pixel:                       // @im2col_get_pixel
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #32]
	str	w1, [sp, #28]
	str	w2, [sp, #24]
	str	w3, [sp, #20]
	str	w4, [sp, #16]
	str	w5, [sp, #12]
	str	w6, [sp, #8]
	str	w7, [sp, #4]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #16]
	subs	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w9, [sp, #4]
	ldr	w8, [sp, #12]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #16]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	movi	d0, #0000000000000000
	str	s0, [sp, #44]
	b	.LBB0_6
.LBB0_5:
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #24]
	ldr	w11, [sp, #16]
	ldr	w12, [sp, #28]
	ldr	w13, [sp, #8]
	mul	w12, w12, w13
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	str	w8, [sp, #44]
	b	.LBB0_6
.LBB0_6:
	ldr	s0, [sp, #44]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	im2col_get_pixel, .Lfunc_end0-im2col_get_pixel
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig