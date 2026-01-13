	.text
	.globl	col2im_add_pixel                // -- Begin function col2im_add_pixel
	.p2align	2
	.type	col2im_add_pixel,@function
col2im_add_pixel:                       // @col2im_add_pixel
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	w1, [sp, #36]
	str	w2, [sp, #32]
	str	w3, [sp, #28]
	str	w4, [sp, #24]
	str	w5, [sp, #20]
	str	w6, [sp, #16]
	str	w7, [sp, #12]
	str	s0, [sp, #8]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #24]
	subs	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #20]
	subs	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #24]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_6
.LBB0_5:
	ldr	s1, [sp, #8]
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #24]
	ldr	w12, [sp, #36]
	ldr	w13, [sp, #16]
	mul	w12, w12, w13
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_6
.LBB0_6:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	col2im_add_pixel, .Lfunc_end0-col2im_add_pixel
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig