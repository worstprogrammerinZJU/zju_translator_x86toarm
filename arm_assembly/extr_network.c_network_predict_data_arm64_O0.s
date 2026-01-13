	.text
	.globl	network_predict_data            // -- Begin function network_predict_data
	.p2align	2
	.type	network_predict_data,@function
network_predict_data:                   // @network_predict_data
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-16]
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	str	w8, [sp, #16]
	ldur	w0, [x29, #-24]
	ldr	w1, [sp, #16]
	bl	make_matrix
	stur	x0, [x29, #-8]
	ldr	x8, [sp, #32]
	ldr	w8, [x8, #4]
	ldur	w9, [x29, #-20]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #8]
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //     Child Loop BB0_9 Depth 2
                                        //       Child Loop BB0_13 Depth 3
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #20]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #28]
	ldr	w10, [sp, #20]
	add	w9, w9, w10
	ldr	w1, [x8, w9, sxtw #2]
	ldursw	x8, [x29, #-20]
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #8]
	bl	network_predict
	str	x0, [sp]
	str	wzr, [sp, #20]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_13 Depth 3
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_18
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #20]
	add	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=2
	str	wzr, [sp, #24]
	b	.LBB0_13
.LBB0_13:                               //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_9 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_13 Depth=3
	ldr	x8, [sp]
	ldr	w9, [sp, #24]
	ldr	w10, [sp, #20]
	ldr	w11, [sp, #16]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-8]
	ldr	w10, [sp, #28]
	ldr	w11, [sp, #20]
	add	w10, w10, w11
	ldr	x9, [x9, w10, sxtw #3]
	ldrsw	x10, [sp, #24]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_13 Depth=3
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_13
.LBB0_16:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_9
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	w9, [x8, #4]
	ldr	w8, [sp, #28]
	add	w8, w8, w9
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_20:
	ldr	x0, [sp, #8]
	bl	free
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	network_predict_data, .Lfunc_end0-network_predict_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym calloc
	.addrsig_sym memcpy
	.addrsig_sym network_predict
	.addrsig_sym free