	.text
	.globl	censor_image                    // -- Begin function censor_image
	.p2align	2
	.type	censor_image,@function
censor_image:                           // @censor_image
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	w1, [sp, #44]
	str	w2, [sp, #40]
	str	w3, [sp, #36]
	str	w4, [sp, #32]
	mov	w8, #32
	str	w8, [sp, #16]
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	b.ge	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #44]
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #40]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	str	wzr, [sp, #40]
	b	.LBB0_4
.LBB0_4:
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_7 Depth 2
                                        //       Child Loop BB0_11 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #20]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #40]
	str	w8, [sp, #24]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_11 Depth 3
	ldr	w9, [sp, #24]
	ldr	w8, [sp, #40]
	ldr	w10, [sp, #32]
	add	w10, w8, w10
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #24]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_18
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #44]
	str	w8, [sp, #28]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_5 Depth=1
                                        //     Parent Loop BB0_7 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w9, [sp, #28]
	ldr	w8, [sp, #44]
	ldr	w10, [sp, #36]
	add	w10, w8, w10
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp]                        // 4-byte Folded Spill
	b.ge	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w8, [sp]                        // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_16
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	x13, [sp, #8]                   // 8-byte Folded Reload
	ldr	x8, [x13, #16]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #16]
	sdiv	w9, w9, w10
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	ldr	w10, [x13, #8]
	ldr	w11, [sp, #24]
	ldr	w12, [sp, #16]
	sdiv	w11, w11, w12
	ldr	w12, [sp, #16]
	mul	w11, w11, w12
	ldr	w12, [x13, #4]
	ldr	w14, [sp, #20]
	mul	w12, w12, w14
	add	w11, w11, w12
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [x13, #16]
	ldr	w10, [sp, #28]
	ldr	w11, [x13, #8]
	ldr	w12, [sp, #24]
	ldr	w13, [x13, #4]
	ldr	w14, [sp, #20]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_11
.LBB0_16:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_7
.LBB0_18:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_20:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	censor_image, .Lfunc_end0-censor_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig