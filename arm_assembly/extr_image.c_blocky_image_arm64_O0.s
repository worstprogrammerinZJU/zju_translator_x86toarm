	.text
	.globl	blocky_image                    // -- Begin function blocky_image
	.p2align	2
	.type	blocky_image,@function
blocky_image:                           // @blocky_image
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	w1, [sp, #28]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #20]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	x13, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x13, #16]
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #28]
	sdiv	w9, w9, w10
	ldr	w10, [sp, #28]
	mul	w9, w9, w10
	ldr	w10, [x13, #8]
	ldr	w11, [sp, #20]
	ldr	w12, [sp, #28]
	sdiv	w11, w11, w12
	ldr	w12, [sp, #28]
	mul	w11, w11, w12
	ldr	w12, [x13, #4]
	ldr	w14, [sp, #16]
	mul	w12, w12, w14
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [x13, #16]
	ldr	w10, [sp, #24]
	ldr	w11, [x13, #8]
	ldr	w12, [sp, #20]
	ldr	w13, [x13, #4]
	ldr	w14, [sp, #16]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	blocky_image, .Lfunc_end0-blocky_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig