	.text
	.globl	deinter_cpu                     // -- Begin function deinter_cpu
	.p2align	2
	.type	deinter_cpu,@function
deinter_cpu:                            // @deinter_cpu
// %bb.0:
	sub	sp, sp, #64
	str	w0, [sp, #60]
	str	x1, [sp, #48]
	str	w2, [sp, #44]
	str	x3, [sp, #32]
	str	w4, [sp, #28]
	str	x5, [sp, #16]
	str	wzr, [sp, #4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //     Child Loop BB0_9 Depth 2
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #60]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #48]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #48]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #60]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldr	s1, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #44]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_9
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_16:
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	deinter_cpu, .Lfunc_end0-deinter_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig