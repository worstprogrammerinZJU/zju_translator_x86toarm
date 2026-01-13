	.text
	.globl	image_distance                  // -- Begin function image_distance
	.p2align	2
	.type	image_distance,@function
image_distance:                         // @image_distance
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	x9, x0
	str	x9, [sp, #8]                    // 8-byte Folded Spill
	str	x1, [sp, #16]                   // 8-byte Folded Spill
	ldr	w0, [x9]
	ldr	w1, [x9, #4]
	mov	w2, #1
	bl	make_image
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x10, #4]
	ldr	w10, [x10]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x11, [sp, #8]                   // 8-byte Folded Reload
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x11, #16]
	ldur	w10, [x29, #-4]
	ldr	w12, [x11, #4]
	mul	w10, w10, w12
	ldr	w12, [x11]
	mul	w10, w10, w12
	ldur	w12, [x29, #-8]
	add	w10, w10, w12
	ldr	x8, [x8, w10, sxtw #3]
	ldr	x9, [x9, #16]
	ldur	w10, [x29, #-4]
	ldr	w12, [x11, #4]
	mul	w10, w10, w12
	ldr	w11, [x11]
	mul	w10, w10, w11
	ldur	w11, [x29, #-8]
	add	w10, w10, w11
	ldr	x9, [x9, w10, sxtw #3]
	subs	x0, x8, x9
	mov	w1, #2
	bl	pow
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-8]
	add	x9, x8, x9, lsl #3
	ldr	x8, [x9]
	add	x8, x8, x0
	str	x8, [x9]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_8:
	stur	wzr, [x29, #-8]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x10, #4]
	ldr	w10, [x10]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-8]
	ldr	x0, [x8, x9, lsl #3]
	bl	sqrt
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-8]
	str	x0, [x8, x9, lsl #3]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_9
.LBB0_12:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	image_distance, .Lfunc_end0-image_distance
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym pow
	.addrsig_sym sqrt