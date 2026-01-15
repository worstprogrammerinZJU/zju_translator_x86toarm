	.text
	.globl	normalize_delta_cpu             // -- Begin function normalize_delta_cpu
	.p2align	2
	.type	normalize_delta_cpu,@function
normalize_delta_cpu:                    // @normalize_delta_cpu
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	ldr	x8, [x29, #16]
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	w5, [x29, #-44]
	str	w6, [sp, #48]
	str	w7, [sp, #44]
	str	x8, [sp, #32]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #28]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #48]
	mul	w8, w8, w9
	ldr	w9, [sp, #44]
	mul	w8, w8, w9
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #44]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #16]
	ldr	s0, [x8, x9, lsl #2]
	fcvt	d0, s0
	fmov	d1, #1.00000000
	fmul	d0, d0, d1
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #28]
	ldr	s0, [x8, x9, lsl #2]
	mov	w8, #50604
	movk	w8, #14119, lsl #16
	fmov	s1, w8
	fadd	s0, s0, s1
	bl	sqrt
	fmov	s1, s0
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	fcvt	d1, s1
	fdiv	d0, d0, d1
	ldur	x8, [x29, #-40]
	ldrsw	x9, [sp, #28]
	ldr	s1, [x8, x9, lsl #2]
	fcvt	d1, s1
	fmov	d2, #2.00000000
	fmul	d1, d1, d2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	ldr	s2, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #28]
	ldr	s3, [x8, x9, lsl #2]
	fsub	s2, s2, s3
	fcvt	d2, s2
	fmul	d1, d1, d2
	ldr	w8, [sp, #44]
	ldur	w9, [x29, #-44]
	mul	w8, w8, w9
	scvtf	d2, w8
	fdiv	d1, d1, d2
	fadd	d0, d0, d1
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #28]
	ldr	s1, [x8, x9, lsl #2]
	ldr	w8, [sp, #44]
	ldur	w9, [x29, #-44]
	mul	w8, w8, w9
	scvtf	s2, w8
	fdiv	s1, s1, s2
	fcvt	d1, s1
	fadd	d0, d0, d1
	fcvt	s0, d0
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #16]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	normalize_delta_cpu, .Lfunc_end0-normalize_delta_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt