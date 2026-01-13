	.text
	.globl	reorg_cpu                       // -- Begin function reorg_cpu
	.p2align	2
	.type	reorg_cpu,@function
reorg_cpu:                              // @reorg_cpu
// %bb.0:
	sub	sp, sp, #96
	str	x0, [sp, #88]
	str	w1, [sp, #84]
	str	w2, [sp, #80]
	str	w3, [sp, #76]
	str	w4, [sp, #72]
	str	w5, [sp, #68]
	str	w6, [sp, #64]
	str	x7, [sp, #56]
	ldr	w8, [sp, #76]
	ldr	w9, [sp, #68]
	ldr	w10, [sp, #68]
	mul	w9, w9, w10
	sdiv	w8, w8, w9
	str	w8, [sp, #36]
	str	wzr, [sp, #52]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #40]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #76]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #44]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_7 Depth 4
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #80]
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	str	wzr, [sp, #48]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        //       Parent Loop BB0_5 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #84]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #84]
	ldr	w10, [sp, #44]
	ldr	w11, [sp, #80]
	ldr	w12, [sp, #40]
	ldr	w13, [sp, #76]
	ldr	w14, [sp, #52]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #32]
	ldr	w8, [sp, #40]
	ldr	w10, [sp, #36]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #28]
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #36]
	sdiv	w8, w8, w9
	str	w8, [sp, #24]
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #68]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	ldr	w11, [sp, #68]
	sdiv	w10, w9, w11
	mul	w10, w10, w11
	subs	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #20]
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #68]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #68]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #84]
	ldr	w10, [sp, #68]
	mul	w9, w9, w10
	ldr	w10, [sp, #16]
	ldr	w11, [sp, #80]
	ldr	w12, [sp, #68]
	mul	w11, w11, w12
	ldr	w12, [sp, #28]
	ldr	w13, [sp, #36]
	ldr	w14, [sp, #52]
	mul	w13, w13, w14
	add	w12, w12, w13
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #64]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	x8, [sp, #88]
	ldrsw	x9, [sp, #32]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=4
	ldr	x8, [sp, #88]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #56]
	ldrsw	x10, [sp, #32]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=4
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=4
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_7
.LBB0_13:                               //   in Loop: Header=BB0_5 Depth=3
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_5
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_3
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_1
.LBB0_19:
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	reorg_cpu, .Lfunc_end0-reorg_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig