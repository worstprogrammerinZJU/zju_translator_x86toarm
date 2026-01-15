	.text
	.globl	show_image_collapsed            // -- Begin function show_image_collapsed
	.p2align	2
	.type	show_image_collapsed,@function
show_image_collapsed:                   // @show_image_collapsed
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	str	x1, [sp, #16]
	ldur	w0, [x29, #-4]
	mov	w1, #1
	str	w1, [sp, #8]                    // 4-byte Folded Spill
	bl	collapse_image_layers
	ldr	w2, [sp, #8]                    // 4-byte Folded Reload
	str	w0, [sp, #12]
	ldr	w0, [sp, #12]
	ldr	x1, [sp, #16]
	bl	show_image
	ldr	w0, [sp, #12]
	bl	free_image
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	show_image_collapsed, .Lfunc_end0-show_image_collapsed
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym collapse_image_layers
	.addrsig_sym show_image
	.addrsig_sym free_image