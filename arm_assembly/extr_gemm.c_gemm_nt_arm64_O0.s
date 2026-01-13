	.text
	.globl	gemm_nt                         // -- Begin function gemm_nt
	.p2align	2
	.type	gemm_nt,@function
gemm_nt:                                // @gemm_nt
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
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #76]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #72]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	movi	d0, #0000000000000000
	str	s0, [sp, #4]
	str	wzr, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	s0, [sp, #64]
	ldr	x8, [sp, #56]
	ldr	w9, [sp, #16]
	ldr	w10, [sp, #52]
	mul	w9, w9, w10
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	fmul	s0, s0, s1
	ldr	x8, [sp, #40]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #36]
	mul	w9, w9, w10
	ldr	w10, [sp, #8]
	add	w9, w9, w10
	ldr	s1, [x8, w9, sxtw #2]
	ldr	s2, [sp, #4]
	fmadd	s0, s0, s1, s2
	str	s0, [sp, #4]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	s1, [sp, #4]
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
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	gemm_nt, .Lfunc_end0-gemm_nt
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig