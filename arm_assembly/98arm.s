	.text
	.globl	upsample_cpu                    // -- Begin function upsample_cpu
	.p2align	2
	.type	upsample_cpu,@function
upsample_cpu:                           // @upsample_cpu
// %bb.0:
	sub	sp, sp, #80
	str	x0, [sp, #72]
	str	w1, [sp, #68]
	str	w2, [sp, #64]
	str	w3, [sp, #60]
	str	w4, [sp, #56]
	str	w5, [sp, #52]
	str	w6, [sp, #48]
	str	s0, [sp, #44]
	str	x7, [sp, #32]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
                                        //         Child Loop BB0_7 Depth 4
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #60]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_7 Depth 4
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #64]
	ldr	w10, [sp, #52]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_15
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	str	wzr, [sp, #28]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        //       Parent Loop BB0_5 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #68]
	ldr	w10, [sp, #52]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #68]
	mul	w8, w8, w9
	ldr	w9, [sp, #64]
	mul	w8, w8, w9
	ldr	w9, [sp, #60]
	mul	w8, w8, w9
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #68]
	mul	w9, w9, w10
	ldr	w10, [sp, #64]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #52]
	sdiv	w9, w9, w10
	ldr	w10, [sp, #68]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #52]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #68]
	mul	w8, w8, w9
	ldr	w9, [sp, #64]
	mul	w8, w8, w9
	ldr	w9, [sp, #60]
	mul	w8, w8, w9
	ldr	w9, [sp, #52]
	mul	w8, w8, w9
	ldr	w9, [sp, #52]
	mul	w8, w8, w9
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #68]
	mul	w9, w9, w10
	ldr	w10, [sp, #64]
	mul	w9, w9, w10
	ldr	w10, [sp, #52]
	mul	w9, w9, w10
	ldr	w10, [sp, #52]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #68]
	mul	w9, w9, w10
	ldr	w10, [sp, #52]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #28]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #48]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=4
	ldr	s0, [sp, #44]
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #12]
	ldr	s1, [x8, x9, lsl #2]
	fmul	s0, s0, s1
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #8]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_11
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=4
	ldr	s0, [sp, #44]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #8]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #2
	ldr	s2, [x8]
	fmadd	s0, s0, s1, s2
	str	s0, [x8]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=4
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=4
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_7
.LBB0_13:                               //   in Loop: Header=BB0_5 Depth=3
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_5
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_19:
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	upsample_cpu, .Lfunc_end0-upsample_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig