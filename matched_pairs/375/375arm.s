	.text
	.globl	get_weights                     // -- Begin function get_weights
	.p2align	2
	.type	get_weights,@function
get_weights:                            // @get_weights
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, w0
	stur	w8, [x29, #-4]
	ldur	w0, [x29, #-4]
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w1, [sp, #12]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	get_convolutional_weight
	bl	copy_image
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	str	w0, [x8, x9, lsl #2]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	w0, [x8, x9, lsl #2]
	bl	normalize_image
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	get_weights, .Lfunc_end0-get_weights
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym copy_image
	.addrsig_sym get_convolutional_weight
	.addrsig_sym normalize_image