	.text
	.globl	show_image_normalized           // -- Begin function show_image_normalized
	.p2align	2
	.type	show_image_normalized,@function
show_image_normalized:                  // @show_image_normalized
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w0, [x29, #-4]
	bl	copy_image
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	bl	normalize_image
	ldr	w0, [sp, #12]
	ldr	x1, [sp, #16]
	mov	w2, #1
	bl	show_image
	ldr	w0, [sp, #12]
	bl	free_image
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	show_image_normalized, .Lfunc_end0-show_image_normalized
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_image
	.addrsig_sym normalize_image
	.addrsig_sym show_image
	.addrsig_sym free_image