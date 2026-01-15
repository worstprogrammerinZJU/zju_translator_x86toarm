	.text
	.globl	col2im_cpu                      // -- Begin function col2im_cpu
	.p2align	2
	.type	col2im_cpu,@function
col2im_cpu:                             // @col2im_cpu
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	stur	w4, [x29, #-24]
	stur	w5, [x29, #-28]
	stur	w6, [x29, #-32]
	stur	x7, [x29, #-40]
	ldur	w8, [x29, #-16]
	ldur	w10, [x29, #-32]
	mov	w9, #2
	mul	w10, w9, w10
	add	w8, w8, w10
	ldur	w10, [x29, #-24]
	subs	w8, w8, w10
	ldur	w10, [x29, #-28]
	sdiv	w8, w8, w10
	add	w8, w8, #1
	str	w8, [sp, #40]
	ldur	w8, [x29, #-20]
	ldur	w10, [x29, #-32]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	ldur	w9, [x29, #-28]
	sdiv	w8, w8, w9
	add	w8, w8, #1
	str	w8, [sp, #36]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	str	w8, [sp, #32]
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldur	w8, [x29, #-44]
	ldr	w9, [sp, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	ldur	w10, [x29, #-24]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #28]
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-24]
	sdiv	w8, w8, w9
	ldur	w10, [x29, #-24]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	str	w8, [sp, #24]
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-24]
	sdiv	w8, w8, w9
	ldur	w9, [x29, #-24]
	sdiv	w8, w8, w9
	str	w8, [sp, #20]
	str	wzr, [sp, #48]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	w8, [sp, #48]
	ldr	w9, [sp, #40]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	str	wzr, [sp, #44]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #44]
	ldr	w9, [sp, #36]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #48]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #44]
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldur	w8, [x29, #-44]
	ldr	w9, [sp, #40]
	mul	w8, w8, w9
	ldr	w9, [sp, #48]
	add	w8, w8, w9
	ldr	w9, [sp, #36]
	mul	w8, w8, w9
	ldr	w9, [sp, #44]
	add	w8, w8, w9
	str	w8, [sp, #8]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	ldr	s0, [x8, x9, lsl #2]
	fcvt	d0, s0
	str	d0, [sp]
	ldur	x0, [x29, #-40]
	ldur	w1, [x29, #-16]
	ldur	w2, [x29, #-20]
	ldur	w3, [x29, #-12]
	ldr	w4, [sp, #16]
	ldr	w5, [sp, #12]
	ldr	w6, [sp, #20]
	ldur	w7, [x29, #-32]
	ldr	d0, [sp]
	bl	col2im_add_pixel
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	col2im_cpu, .Lfunc_end0-col2im_cpu
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym col2im_add_pixel