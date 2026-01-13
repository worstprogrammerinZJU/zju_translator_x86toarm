	.text
	.globl	exclusive_image                 // -- Begin function exclusive_image
	.p2align	2
	.type	exclusive_image,@function
exclusive_image:                        // @exclusive_image
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	str	w8, [sp, #16]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_6 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [x9, #8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_6 Depth 3
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	ldr	x8, [x8, w9, sxtw #3]
	cbz	x8, .LBB0_10
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=3
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldr	w8, [sp, #24]
	ldr	w10, [sp, #16]
	mul	w8, w8, w10
	ldr	w10, [sp, #20]
	add	w10, w8, w10
	mov	x8, xzr
	str	x8, [x9, w10, sxtw #3]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=3
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_6
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_14:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	exclusive_image, .Lfunc_end0-exclusive_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig