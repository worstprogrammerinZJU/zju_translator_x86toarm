	.text
	.globl	mean_delta_cpu                  // -- Begin function mean_delta_cpu
	.p2align	2
	.type	mean_delta_cpu,@function
mean_delta_cpu:                         // @mean_delta_cpu
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	w4, [x29, #-28]
	str	x5, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	movi	d0, #0000000000000000
	str	s0, [x8, x9, lsl #2]
	str	wzr, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #12]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-28]
	mul	w8, w8, w9
	ldr	w9, [sp, #20]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	mov	w8, #50604
	movk	w8, #14119, lsl #16
	fmov	s1, w8
	fadd	s0, s0, s1
	bl	sqrt
	scvtf	d1, w0
	fmov	d0, #-1.00000000
	fdiv	d1, d0, d1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fcvt	d0, s0
	fmul	d0, d0, d1
	fcvt	s0, d0
	str	s0, [x8]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	mean_delta_cpu, .Lfunc_end0-mean_delta_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym sqrt