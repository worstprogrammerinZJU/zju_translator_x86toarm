	.text
	.globl	delta_region_mask               // -- Begin function delta_region_mask
	.p2align	2
	.type	delta_region_mask,@function
delta_region_mask:                      // @delta_region_mask
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	w2, [sp, #28]
	str	w3, [sp, #24]
	str	x4, [sp, #16]
	str	w5, [sp, #12]
	str	w6, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #8]
	scvtf	s0, s0
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #4]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #4]
	ldr	w11, [sp, #12]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s2, [x8, w9, sxtw #2]
	fsub	s1, s1, s2
	fmul	s0, s0, s1
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #4]
	ldr	w11, [sp, #12]
	mul	w10, w10, w11
	add	w9, w9, w10
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	delta_region_mask, .Lfunc_end0-delta_region_mask
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig