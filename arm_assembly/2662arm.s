	.text
	.globl	avg_flipped_yolo                // -- Begin function avg_flipped_yolo
	.p2align	2
	.type	avg_flipped_yolo,@function
avg_flipped_yolo:                       // @avg_flipped_yolo
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp]                        // 8-byte Folded Spill
	ldr	x8, [x0]
	ldrsw	x9, [x0, #8]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #24]
	str	wzr, [sp, #40]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #40]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_18
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #44]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #44]
	ldr	w9, [x9, #16]
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #36]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_7 Depth 4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #36]
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	str	wzr, [sp, #32]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        //       Parent Loop BB0_5 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #32]
	ldr	w9, [x9, #24]
	add	w9, w9, #4
	add	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #32]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldr	w10, [x9, #12]
	mul	w8, w8, w10
	ldr	w10, [x9, #20]
	mul	w8, w8, w10
	ldr	w10, [sp, #36]
	ldr	w11, [x9, #16]
	mul	w10, w10, w11
	ldr	w11, [x9, #12]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldr	w10, [sp, #40]
	ldr	w11, [x9, #16]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldr	w10, [sp, #44]
	add	w8, w8, w10
	str	w8, [sp, #20]
	ldr	w8, [sp, #32]
	ldr	w10, [x9, #16]
	mul	w8, w8, w10
	ldr	w10, [x9, #12]
	mul	w8, w8, w10
	ldr	w10, [x9, #20]
	mul	w8, w8, w10
	ldr	w10, [sp, #36]
	ldr	w11, [x9, #16]
	mul	w10, w10, w11
	ldr	w11, [x9, #12]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldr	w10, [sp, #40]
	ldr	w11, [x9, #16]
	mul	w10, w10, w11
	add	w8, w8, w10
	ldr	w9, [x9, #16]
	ldr	w10, [sp, #44]
	subs	w9, w9, w10
	subs	w9, w9, #1
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #20]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #32]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	fneg	s0, s0
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldr	s0, [x8, x9, lsl #2]
	fneg	s0, s0
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=4
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=4
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_7
.LBB0_12:                               //   in Loop: Header=BB0_5 Depth=3
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_5
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_3
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_1
.LBB0_18:
	str	wzr, [sp, #44]
	b	.LBB0_19
.LBB0_19:                               // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #44]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [x8]
	ldrsw	x10, [sp, #44]
	ldr	s0, [x9, x10, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #44]
	ldr	s1, [x9, x10, lsl #2]
	fadd	s0, s0, s1
	fcvt	d0, s0
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	ldr	x8, [x8]
	ldrsw	x9, [sp, #44]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_19 Depth=1
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_19
.LBB0_22:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	avg_flipped_yolo, .Lfunc_end0-avg_flipped_yolo
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig