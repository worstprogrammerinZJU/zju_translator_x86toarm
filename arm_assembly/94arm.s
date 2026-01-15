	.text
	.globl	smooth_l1_cpu                   // -- Begin function smooth_l1_cpu
	.p2align	2
	.type	smooth_l1_cpu,@function
smooth_l1_cpu:                          // @smooth_l1_cpu
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	str	x3, [sp, #32]
	str	x4, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	ldr	s1, [x8, x9, lsl #2]
	fsub	s0, s0, s1
	str	s0, [sp, #16]
	ldr	s0, [sp, #16]
	bl	fabs
	str	s0, [sp, #12]
	ldr	s0, [sp, #12]
	fmov	s1, #1.00000000
	fcmp	s0, s1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #16]
	fmul	s0, s0, s1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	ldr	w8, [sp, #16]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #20]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s1, [sp, #12]
	fmov	s2, #-1.00000000
	fmov	s0, #2.00000000
	fmadd	s0, s0, s1, s2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	ldr	s0, [sp, #16]
	mov	w8, #-1
	fcmp	s0, #0.0
	csinc	w8, w8, wzr, pl
	scvtf	s0, w8
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_7:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	smooth_l1_cpu, .Lfunc_end0-smooth_l1_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fabs