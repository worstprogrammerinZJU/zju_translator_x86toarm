	.text
	.globl	bound_image                     // -- Begin function bound_image
	.p2align	2
	.type	bound_image,@function
bound_image:                            // @bound_image
// %bb.0:
	sub	sp, sp, #80
	str	x0, [sp, #48]
	str	x1, [sp, #56]
	ldr	w8, [sp, #48]
	str	w8, [sp, #36]
	ldr	w8, [sp, #52]
	str	w8, [sp, #32]
	str	wzr, [sp, #28]
	str	wzr, [sp, #24]
	str	wzr, [sp, #40]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #52]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #44]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #56]
	ldr	w9, [sp, #40]
	ldr	w10, [sp, #48]
	mul	w9, w9, w10
	ldr	w10, [sp, #44]
	add	w9, w9, w10
	ldr	x8, [x8, w9, sxtw #3]
	cbz	x8, .LBB0_18
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #44]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #36]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	str	w8, [sp, #36]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #40]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #32]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	str	w8, [sp, #32]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.le	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #44]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_14
.LBB0_13:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #28]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	str	w8, [sp, #28]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.le	.LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #40]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_17
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #24]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #24]
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_3
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_1
.LBB0_22:
	ldr	w8, [sp, #36]
	str	w8, [sp, #64]
	ldr	w8, [sp, #32]
	str	w8, [sp, #68]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #72]
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #76]
	ldr	x0, [sp, #64]
	ldr	x1, [sp, #72]
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	bound_image, .Lfunc_end0-bound_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig