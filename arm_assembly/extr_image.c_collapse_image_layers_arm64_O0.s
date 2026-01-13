	.text
	.globl	collapse_image_layers           // -- Begin function collapse_image_layers
	.p2align	2
	.type	collapse_image_layers,@function
collapse_image_layers:                  // @collapse_image_layers
// %bb.0:
	sub	sp, sp, #208
	stp	x29, x30, [sp, #192]            // 16-byte Folded Spill
	add	x29, sp, #192
	stur	x0, [x29, #-48]
	stur	x1, [x29, #-40]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-32]
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-24]
	stur	w2, [x29, #-52]
	ldur	w8, [x29, #-32]
	stur	w8, [x29, #-56]
	ldur	w8, [x29, #-56]
	ldur	w9, [x29, #-52]
	add	w8, w8, w9
	ldur	w9, [x29, #-28]
	mul	w8, w8, w9
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	stur	w8, [x29, #-56]
	ldur	w0, [x29, #-24]
	ldur	w1, [x29, #-56]
	mov	w2, #1
	bl	make_image
	stur	x0, [x29, #-72]
	stur	x1, [x29, #-64]
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-64]
	stur	w8, [x29, #-8]
	stur	wzr, [x29, #-76]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-28]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w2, [x29, #-76]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #88]
	ldur	w8, [x29, #-24]
	str	w8, [sp, #96]
	ldr	x0, [sp, #88]
	ldr	x1, [sp, #96]
	bl	get_image_layer
	str	x0, [sp, #72]
	str	x1, [sp, #80]
	ldr	x8, [sp, #72]
	stur	x8, [x29, #-88]
	ldr	w8, [sp, #80]
	stur	w8, [x29, #-80]
	ldur	w8, [x29, #-76]
	ldur	w9, [x29, #-32]
	ldur	w10, [x29, #-52]
	add	w9, w9, w10
	mul	w8, w8, w9
	str	w8, [sp, #68]
	ldr	w5, [sp, #68]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #48]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #56]
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #56]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #40]
	ldr	x2, [sp, #32]
	ldr	x3, [sp, #40]
	mov	w4, wzr
	bl	embed_image
	ldur	x8, [x29, #-88]
	str	x8, [sp, #16]
	ldur	w8, [x29, #-80]
	str	w8, [sp, #24]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	free_image
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-76]
	add	w8, w8, #1
	stur	w8, [x29, #-76]
	b	.LBB0_1
.LBB0_4:
	ldur	x8, [x29, #-16]
	str	x8, [sp]
	ldur	w8, [x29, #-8]
	str	w8, [sp, #8]
	ldr	x0, [sp]
	ldr	x1, [sp, #8]
	ldp	x29, x30, [sp, #192]            // 16-byte Folded Reload
	add	sp, sp, #208
	ret
.Lfunc_end0:
	.size	collapse_image_layers, .Lfunc_end0-collapse_image_layers
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image
	.addrsig_sym get_image_layer
	.addrsig_sym embed_image
	.addrsig_sym free_image