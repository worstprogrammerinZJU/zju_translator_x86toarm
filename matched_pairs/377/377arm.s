	.text
	.globl	rescale_weights                 // -- Begin function rescale_weights
	.p2align	2
	.type	rescale_weights,@function
rescale_weights:                        // @rescale_weights
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	stur	s0, [x29, #-20]
	str	s1, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w2, [sp, #20]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	bl	get_convolutional_weight
	stur	x0, [sp, #4]
	stur	x1, [sp, #12]
	ldr	w8, [sp, #4]
	subs	w8, w8, #3
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	s0, [x29, #-20]
	ldur	x0, [sp, #4]
	ldur	x1, [sp, #12]
	bl	scale_image
	ldr	w0, [sp, #16]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #4]
	mul	w1, w8, w9
	bl	sum_array
	str	s0, [sp]
	ldr	s0, [sp]
	ldr	s1, [sp, #24]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	add	x8, x8, x9, lsl #2
	ldr	s2, [x8]
	fmadd	s0, s0, s1, s2
	str	s0, [x8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_6:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	rescale_weights, .Lfunc_end0-rescale_weights
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_convolutional_weight
	.addrsig_sym scale_image
	.addrsig_sym sum_array