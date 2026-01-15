	.text
	.globl	variance_cpu                    // -- Begin function variance_cpu
	.p2align	2
	.type	variance_cpu,@function
variance_cpu:                           // @variance_cpu
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
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-28]
	mul	w8, w8, w9
	subs	w8, w8, #1
	scvtf	d1, w8
	fmov	d0, #1.00000000
	fdiv	d0, d0, d1
	fcvt	s0, d0
	str	s0, [sp, #20]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	movi	d0, #0000000000000000
	str	s0, [x8, x9, lsl #2]
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-28]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldr	w9, [sp, #8]
	add	w8, w8, w9
	str	w8, [sp, #4]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #16]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	mov	w0, #2
	bl	pow
	scvtf	s1, x0
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	s1, [sp, #20]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fmul	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	variance_cpu, .Lfunc_end0-variance_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow