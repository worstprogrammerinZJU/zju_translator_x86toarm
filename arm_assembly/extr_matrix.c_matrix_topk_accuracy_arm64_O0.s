	.text
	.globl	matrix_topk_accuracy            // -- Begin function matrix_topk_accuracy
	.p2align	2
	.type	matrix_topk_accuracy,@function
matrix_topk_accuracy:                   // @matrix_topk_accuracy
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-24]
	stur	w4, [x29, #-36]
	ldur	w0, [x29, #-36]
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #32]
	ldur	w8, [x29, #-16]
	str	w8, [sp, #28]
	str	wzr, [sp, #16]
	str	wzr, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #24]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #24]
	ldr	x0, [x8, x9, lsl #3]
	ldr	w1, [sp, #28]
	ldur	w2, [x29, #-36]
	ldr	x3, [sp, #32]
	bl	top_k
	str	wzr, [sp, #20]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-36]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	.LBB0_1
.LBB0_10:
	ldr	x0, [sp, #32]
	bl	free
	ldr	s0, [sp, #16]
	scvtf	s0, s0
	ldur	s1, [x29, #-12]
	scvtf	s1, s1
	fdiv	s0, s0, s1
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	matrix_topk_accuracy, .Lfunc_end0-matrix_topk_accuracy
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym top_k
	.addrsig_sym free