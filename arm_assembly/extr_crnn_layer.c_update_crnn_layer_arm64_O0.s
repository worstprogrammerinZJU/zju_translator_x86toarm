	.text
	.globl	update_crnn_layer               // -- Begin function update_crnn_layer
	.p2align	2
	.type	update_crnn_layer,@function
update_crnn_layer:                      // @update_crnn_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]                        // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	ldr	x8, [x0, #16]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_convolutional_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0, #8]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_convolutional_layer
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x0]
	ldr	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	update_convolutional_layer
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	update_crnn_layer, .Lfunc_end0-update_crnn_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym update_convolutional_layer