	.text
	.globl	backward_avgpool_layer          // -- Begin function backward_avgpool_layer
	.p2align	2
	.type	backward_avgpool_layer,@function
backward_avgpool_layer:                 // @backward_avgpool_layer
// %bb.0:
	sub	sp, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	x1, [sp, #40]
	str	wzr, [sp, #36]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #36]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #28]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_5 Depth 3
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #36]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #24]
	str	wzr, [sp, #32]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_3 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #32]
	ldr	w9, [x10, #8]
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w8, [sp, #32]
	ldr	w9, [x10, #8]
	ldr	w11, [x10, #12]
	mul	w9, w9, w11
	ldr	w11, [sp, #28]
	ldr	w12, [sp, #36]
	ldr	w13, [x10, #4]
	mul	w12, w12, w13
	add	w11, w11, w12
	mul	w9, w9, w11
	add	w8, w8, w9
	str	w8, [sp, #20]
	ldr	x8, [x10, #16]
	ldrsw	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [x10, #8]
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	sdiv	w10, w8, w9
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #20]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=3
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_3
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	backward_avgpool_layer, .Lfunc_end0-backward_avgpool_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig