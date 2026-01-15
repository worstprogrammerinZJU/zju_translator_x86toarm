	.text
	.globl	inter_cpu                       // -- Begin function inter_cpu
	.p2align	2
	.type	inter_cpu,@function
inter_cpu:                              // @inter_cpu
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
                                        //     Child Loop BB0_7 Depth 2
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #60]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #48]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #60]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #44]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #32]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #44]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_7
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	inter_cpu, .Lfunc_end0-inter_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig