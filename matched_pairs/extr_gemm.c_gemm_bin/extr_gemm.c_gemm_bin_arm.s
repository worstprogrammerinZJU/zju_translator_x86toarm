	.text
	.globl	gemm_bin                        // -- Begin function gemm_bin
	.p2align	2
	.type	gemm_bin,@function
gemm_bin:                               // @gemm_bin
// %bb.0:
	sub	sp, sp, #80
	ldr	w8, [sp, #80]
	str	w0, [sp, #76]
	str	w1, [sp, #72]
	str	w2, [sp, #68]
	str	s0, [sp, #64]
	str	x3, [sp, #56]
	str	w4, [sp, #52]
	str	x5, [sp, #40]
	str	w6, [sp, #36]
	str	x7, [sp, #24]
	str	w8, [sp, #20]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_11 Depth 3
                                        //       Child Loop BB0_6 Depth 3
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #76]
	subs	w8, w8, w9
	b.ge	.LBB0_19
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_11 Depth 3
                                        //       Child Loop BB0_6 Depth 3
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	b.ge	.LBB0_17
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #56]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #52]
	mul	w9, w9, w10
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	strb	w8, [sp, #7]
	ldrb	w8, [sp, #7]
	cbz	w8, .LBB0_10
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #12]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=3
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=3
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_6
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_15
.LBB0_10:                               //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #12]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	ldr	w10, [sp, #12]
	add	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	ldr	s0, [x8]
	fsub	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_11
.LBB0_14:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_19:
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gemm_bin, .Lfunc_end0-gemm_bin
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig