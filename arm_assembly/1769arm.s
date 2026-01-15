	.text
	.globl	network_predict_image           // -- Begin function network_predict_image
	.p2align	2
	.type	network_predict_image,@function
network_predict_image:                  // @network_predict_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, w1
	stur	w8, [x29, #-4]
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #4]
	ldr	x8, [sp, #16]
	ldr	w2, [x8]
	ldur	w8, [x29, #-4]
	mov	w0, w8
	bl	letterbox_image
	str	w0, [sp, #12]
	ldr	x0, [sp, #16]
	mov	w1, #1
	bl	set_batch_network
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	network_predict
	str	x0, [sp]
	ldr	w8, [sp, #12]
	mov	w0, w8
	bl	free_image
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	network_predict_image, .Lfunc_end0-network_predict_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym letterbox_image
	.addrsig_sym set_batch_network
	.addrsig_sym network_predict
	.addrsig_sym free_image