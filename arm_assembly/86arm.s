	.text
	.globl	mean_cpu                        // -- Begin function mean_cpu
	.p2align	2
	.type	mean_cpu,@function
mean_cpu:                               // @mean_cpu
// %bb.0:
	sub	sp, sp, #64
	str	x0, [sp, #56]
	str	w1, [sp, #52]
	str	w2, [sp, #48]
	str	w3, [sp, #44]
	str	x4, [sp, #32]
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #44]
	mul	w8, w8, w9
	scvtf	d1, w8
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #28]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #24]
	movi	d0, #0000000000000000
	str	s0, [x8, x9, lsl #2]
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #52]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #16]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #48]
	mul	w8, w8, w9
	ldr	w9, [sp, #44]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #44]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #12]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #24]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	s1, [sp, #28]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #24]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fmul	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	mean_cpu, .Lfunc_end0-mean_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig