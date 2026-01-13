	.text
	.globl	weighted_sum_cpu                // -- Begin function weighted_sum_cpu
	.p2align	2
	.type	weighted_sum_cpu,@function
weighted_sum_cpu:                       // @weighted_sum_cpu
// %bb.0:
	sub	sp, sp, #64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	x2, [sp, #40]
	str	w3, [sp, #36]
	str	x4, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	str	s0, [sp, #8]                    // 4-byte Folded Spill
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	str	s0, [sp, #12]                   // 4-byte Folded Spill
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	ldr	s1, [x8, x9, lsl #2]
	fmov	s0, #1.00000000
	fsub	s0, s0, s1
	str	s0, [sp, #16]                   // 4-byte Folded Spill
	ldr	x8, [sp, #48]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	movi	d0, #0000000000000000
	str	s0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #8]                    // 4-byte Folded Reload
	ldr	s1, [sp, #12]                   // 4-byte Folded Reload
	ldr	s2, [sp, #16]                   // 4-byte Folded Reload
	ldr	s3, [sp, #4]                    // 4-byte Folded Reload
	fmul	s2, s2, s3
	fmadd	s0, s0, s1, s2
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_7:
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	weighted_sum_cpu, .Lfunc_end0-weighted_sum_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig