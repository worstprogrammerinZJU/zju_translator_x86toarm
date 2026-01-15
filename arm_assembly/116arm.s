	.text
	.globl	overlap                         // -- Begin function overlap
	.p2align	2
	.type	overlap,@function
overlap:                                // @overlap
// %bb.0:
	sub	sp, sp, #48
	str	s0, [sp, #44]
	str	s1, [sp, #40]
	str	s2, [sp, #36]
	str	s3, [sp, #32]
	ldr	s0, [sp, #44]
	ldr	s1, [sp, #40]
	fmov	s2, #2.00000000
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	str	s0, [sp, #28]
	ldr	s0, [sp, #36]
	ldr	s1, [sp, #32]
	fdiv	s1, s1, s2
	fsub	s0, s0, s1
	str	s0, [sp, #24]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #24]
	fcmp	s0, s1
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #28]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_2:
	ldr	w8, [sp, #24]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	str	w8, [sp, #20]
	ldr	s0, [sp, #44]
	ldr	s1, [sp, #40]
	fmov	s2, #2.00000000
	fdiv	s1, s1, s2
	fadd	s0, s0, s1
	str	s0, [sp, #16]
	ldr	s0, [sp, #36]
	ldr	s1, [sp, #32]
	fdiv	s1, s1, s2
	fadd	s0, s0, s1
	str	s0, [sp, #12]
	ldr	s0, [sp, #16]
	ldr	s1, [sp, #12]
	fcmp	s0, s1
	b.pl	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #16]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_5:
	ldr	w8, [sp, #12]
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	str	w8, [sp, #8]
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #20]
	fsub	s0, s0, s1
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	overlap, .Lfunc_end0-overlap
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig