	.text
	.globl	rgbgr_weights                   // -- Begin function rgbgr_weights
	.p2align	2
	.type	rgbgr_weights,@function
rgbgr_weights:                          // @rgbgr_weights
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w0
	stur	w8, [x29, #-4]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #8]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	get_convolutional_weight
	str	w0, [sp, #4]
	ldr	w8, [sp, #4]
	subs	w8, w8, #3
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	mov	w0, w8
	bl	rgbgr_image
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	rgbgr_weights, .Lfunc_end0-rgbgr_weights
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_convolutional_weight
	.addrsig_sym rgbgr_image