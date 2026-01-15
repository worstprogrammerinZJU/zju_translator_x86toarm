	.text
	.globl	get_image_layer                 // -- Begin function get_image_layer
	.p2align	2
	.type	get_image_layer,@function
get_image_layer:                        // @get_image_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	str	w2, [sp, #12]
	ldr	w0, [sp, #16]
	ldr	w1, [sp, #20]
	mov	w2, #1
	bl	make_image
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #8]
	ldr	w10, [sp, #12]
	ldr	w11, [sp, #20]
	mul	w10, w10, w11
	ldr	w11, [sp, #16]
	mul	w10, w10, w11
	add	w9, w9, w10
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	get_image_layer, .Lfunc_end0-get_image_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image