	.text
	.globl	calc_network_cost               // -- Begin function calc_network_cost
	.p2align	2
	.type	calc_network_cost,@function
calc_network_cost:                      // @calc_network_cost
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	ldr	q0, [x8]
	str	q0, [sp, #16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]
	movi	d0, #0000000000000000
	str	s0, [sp, #8]
	str	wzr, [sp, #4]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldr	d0, [x8]
	fmov	x8, d0
	scvtf	s1, x8
	ldr	s0, [sp, #8]
	fadd	s0, s0, s1
	str	s0, [sp, #8]
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_6:
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldr	x8, [sp, #24]
	str	s0, [x8]
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	calc_network_cost, .Lfunc_end0-calc_network_cost
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig