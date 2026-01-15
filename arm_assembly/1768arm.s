	.text
	.globl	network_predict_data_multi      // -- Begin function network_predict_data_multi
	.p2align	2
	.type	network_predict_data_multi,@function
network_predict_data_multi:             // @network_predict_data_multi
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-16]
	stur	x0, [x29, #-32]
	stur	w3, [x29, #-36]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	str	w8, [sp, #24]
	ldur	w0, [x29, #-24]
	ldr	w1, [sp, #24]
	bl	make_matrix
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8, #4]
	ldur	w9, [x29, #-24]
	mul	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #16]
	str	wzr, [sp, #40]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //     Child Loop BB0_9 Depth 2
                                        //       Child Loop BB0_11 Depth 3
                                        //         Child Loop BB0_15 Depth 4
	ldr	w8, [sp, #40]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_24
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #32]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #32]
	ldur	w10, [x29, #-20]
	mul	w9, w9, w10
	add	x0, x8, w9, sxtw #2
	ldur	x8, [x29, #-16]
	ldr	w9, [sp, #40]
	ldr	w10, [sp, #32]
	add	w9, w9, w10
	ldr	w1, [x8, w9, sxtw #2]
	ldursw	x8, [x29, #-20]
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #28]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_11 Depth 3
                                        //         Child Loop BB0_15 Depth 4
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_22
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	x0, [x29, #-32]
	ldr	x1, [sp, #16]
	bl	network_predict
	str	x0, [sp, #8]
	str	wzr, [sp, #32]
	b	.LBB0_11
.LBB0_11:                               //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_9 Depth=2
                                        // =>    This Loop Header: Depth=3
                                        //         Child Loop BB0_15 Depth 4
	ldr	w8, [sp, #32]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #32]
	add	w8, w8, w9
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_20
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=3
	str	wzr, [sp, #36]
	b	.LBB0_15
.LBB0_15:                               //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_9 Depth=2
                                        //       Parent Loop BB0_11 Depth=3
                                        // =>      This Inner Loop Header: Depth=4
	ldr	w8, [sp, #36]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=4
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #36]
	ldr	w10, [sp, #32]
	ldr	w11, [sp, #24]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	s0, [x8, w9, sxtw #2]
	ldur	s1, [x29, #-36]
	scvtf	s1, s1
	fdiv	s1, s0, s1
	ldur	x8, [x29, #-8]
	ldr	w9, [sp, #40]
	ldr	w10, [sp, #32]
	add	w9, w9, w10
	ldr	x8, [x8, w9, sxtw #3]
	ldrsw	x9, [sp, #36]
	add	x8, x8, x9, lsl #2
	ldr	s0, [x8]
	fadd	s0, s0, s1
	str	s0, [x8]
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=4
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_15
.LBB0_18:                               //   in Loop: Header=BB0_11 Depth=3
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_11 Depth=3
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_11
.LBB0_20:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_9
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldr	w9, [x8, #4]
	ldr	w8, [sp, #40]
	add	w8, w8, w9
	str	w8, [sp, #40]
	b	.LBB0_1
.LBB0_24:
	ldr	x0, [sp, #16]
	bl	free
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	network_predict_data_multi, .Lfunc_end0-network_predict_data_multi
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym calloc
	.addrsig_sym memcpy
	.addrsig_sym network_predict
	.addrsig_sym free