	.text
	.globl	backward_scale_cpu              // -- Begin function backward_scale_cpu
	.p2align	2
	.type	backward_scale_cpu,@function
backward_scale_cpu:                     // @backward_scale_cpu
// %bb.0:
	sub	sp, sp, #64
	str	x0, [sp, #56]
	str	x1, [sp, #48]
	str	w2, [sp, #44]
	str	w3, [sp, #40]
	str	w4, [sp, #36]
	str	x5, [sp, #24]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	movi	d0, #0000000000000000
	str	s0, [sp, #8]
	str	wzr, [sp, #16]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #20]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #36]
	ldr	w10, [sp, #12]
	ldr	w11, [sp, #40]
	ldr	w12, [sp, #16]
	mul	w11, w11, w12
	add	w10, w10, w11
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #4]
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #4]
	ldr	s1, [x8, x9, lsl #2]
	ldr	s2, [sp, #8]
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #8]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	s1, [sp, #8]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	backward_scale_cpu, .Lfunc_end0-backward_scale_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig