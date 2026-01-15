	.text
	.globl	three_way_min                   // -- Begin function three_way_min
	.p2align	2
	.type	three_way_min,@function
three_way_min:                          // @three_way_min
// %bb.0:
	sub	sp, sp, #32
	str	s0, [sp, #28]
	str	s1, [sp, #24]
	str	s2, [sp, #20]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #24]
	fcmp	s0, s1
	b.pl	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #20]
	fcmp	s0, s1
	b.pl	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #28]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_3:
	ldr	w8, [sp, #20]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_5:
	ldr	s0, [sp, #24]
	ldr	s1, [sp, #20]
	fcmp	s0, s1
	b.pl	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #24]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	ldr	w8, [sp, #20]
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	fmov	s0, w8
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	three_way_min, .Lfunc_end0-three_way_min
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig