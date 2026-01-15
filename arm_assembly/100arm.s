	.text
	.globl	weighted_delta_cpu              // -- Begin function weighted_delta_cpu
	.p2align	2
	.type	weighted_delta_cpu,@function
weighted_delta_cpu:                     // @weighted_delta_cpu
// %bb.0:
	sub	sp, sp, #80
	str	x0, [sp, #72]
	str	x1, [sp, #64]
	str	x2, [sp, #56]
	str	x3, [sp, #48]
	str	x4, [sp, #40]
	str	x5, [sp, #32]
	str	w6, [sp, #28]
	str	x7, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #48]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #12]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #2
	ldr	s2, [x8]
	fmadd	s0, s0, s1, s2
	str	s0, [x8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #12]
	ldr	s2, [x8, x9, lsl #2]
	fmov	s1, #1.00000000
	fsub	s1, s1, s2
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #2
	ldr	s2, [x8]
	fmadd	s0, s0, s1, s2
	str	s0, [x8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #12]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #12]
	ldr	s2, [x8, x9, lsl #2]
	fsub	s1, s1, s2
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #2
	ldr	s2, [x8]
	fmadd	s0, s0, s1, s2
	str	s0, [x8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_8:
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	weighted_delta_cpu, .Lfunc_end0-weighted_delta_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig