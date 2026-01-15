	.text
	.globl	visualize_convolutional_layer   // -- Begin function visualize_convolutional_layer
	.p2align	2
	.type	visualize_convolutional_layer,@function
visualize_convolutional_layer:          // @visualize_convolutional_layer
// %bb.0:
	sub	sp, sp, #336
	stp	x29, x30, [sp, #304]            // 16-byte Folded Spill
	str	x28, [sp, #320]                 // 8-byte Folded Spill
	add	x29, sp, #304
	mov	w8, w0
	stur	w8, [x29, #-4]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	get_weights
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	ldur	w1, [x29, #-4]
	ldur	x2, [x29, #-16]
	bl	show_images
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	get_convolutional_image
	stur	w0, [x29, #-36]
	ldur	w0, [x29, #-36]
	mov	w1, #1
	bl	collapse_image_layers
	stur	w0, [x29, #-40]
	ldur	x2, [x29, #-16]
	add	x0, sp, #8
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	sprintf
	ldur	w0, [x29, #-40]
	bl	free_image
	ldur	x0, [x29, #-32]
	ldr	x28, [sp, #320]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #304]            // 16-byte Folded Reload
	add	sp, sp, #336
	ret
.Lfunc_end0:
	.size	visualize_convolutional_layer, .Lfunc_end0-visualize_convolutional_layer
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s: Output"
	.size	.L.str, 11
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym get_weights
	.addrsig_sym show_images
	.addrsig_sym get_convolutional_image
	.addrsig_sym collapse_image_layers
	.addrsig_sym sprintf
	.addrsig_sym free_image