	.text
	.globl	network_accuracy                // -- Begin function network_accuracy
	.p2align	2
	.type	network_accuracy,@function
network_accuracy:                       // @network_accuracy
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, w1
	stur	w8, [x29, #-4]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	w8, [x29, #-4]
	mov	w1, w8
	bl	network_predict_data
	str	w0, [sp, #12]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #12]
	mov	w2, #1
	bl	matrix_topk_accuracy
	str	s0, [sp, #8]
	ldr	w0, [sp, #12]
	bl	free_matrix
	ldr	s0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	network_accuracy, .Lfunc_end0-network_accuracy
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_predict_data
	.addrsig_sym matrix_topk_accuracy
	.addrsig_sym free_matrix