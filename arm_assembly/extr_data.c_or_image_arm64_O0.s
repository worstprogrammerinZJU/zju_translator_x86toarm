	.text
	.globl	or_image                        // -- Begin function or_image
	.p2align	2
	.type	or_image,@function
or_image:                               // @or_image
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	str	x2, [sp, #16]
	str	x3, [sp, #24]
	str	w4, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #32]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #24]
	ldr	w8, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w8, w8, w10
	ldr	w10, [sp, #12]
	mul	w8, w8, w10
	ldr	w10, [sp, #8]
	add	w10, w8, w10
	mov	w8, #1
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	or_image, .Lfunc_end0-or_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig