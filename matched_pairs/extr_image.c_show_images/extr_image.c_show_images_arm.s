	.text
	.globl	show_images                     // -- Begin function show_images
	.p2align	2
	.type	show_images,@function
show_images:                            // @show_images
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	collapse_images_vert
	str	w0, [sp, #4]
	ldr	w0, [sp, #4]
	bl	normalize_image
	ldr	w0, [sp, #4]
	ldr	x1, [sp, #8]
	bl	save_image
	ldr	w0, [sp, #4]
	ldr	x1, [sp, #8]
	mov	w2, #1
	bl	show_image
	ldr	w0, [sp, #4]
	bl	free_image
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	show_images, .Lfunc_end0-show_images
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym collapse_images_vert
	.addrsig_sym normalize_image
	.addrsig_sym save_image
	.addrsig_sym show_image
	.addrsig_sym free_image