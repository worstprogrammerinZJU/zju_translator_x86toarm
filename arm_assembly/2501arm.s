	.text
	.globl	get_hierarchy_probability       // -- Begin function get_hierarchy_probability
	.p2align	2
	.type	get_hierarchy_probability,@function
get_hierarchy_probability:              // @get_hierarchy_probability
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	str	w3, [sp, #8]
	fmov	s0, #1.00000000
	str	s0, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	tbnz	w8, #31, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #4]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #8]
	mul	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fmul	s0, s0, s1
	str	s0, [sp, #4]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_3:
	ldr	s0, [sp, #4]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	get_hierarchy_probability, .Lfunc_end0-get_hierarchy_probability
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig