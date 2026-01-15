	.text
	.globl	sum_array                       // -- Begin function sum_array
	.p2align	2
	.type	sum_array,@function
sum_array:                              // @sum_array
// %bb.0:
	sub	sp, sp, #32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	movi	d0, #0000000000000000
	str	s0, [sp, #12]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldr	s1, [x8, x9, lsl #2]
	ldr	s0, [sp, #12]
	fadd	s0, s0, s1
	str	s0, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_4:
	ldr	s0, [sp, #12]
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	sum_array, .Lfunc_end0-sum_array
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig