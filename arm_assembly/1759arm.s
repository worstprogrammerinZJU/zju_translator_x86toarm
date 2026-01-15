	.text
	.globl	network_accuracies              // -- Begin function network_accuracies
	.p2align	2
	.type	network_accuracies,@function
network_accuracies:                     // @network_accuracies
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	adrp	x8, network_accuracies.acc
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	adrp	x8, network_accuracies.acc
	add	x8, x8, :lo12:network_accuracies.acc
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	w8, w1
	stur	w8, [x29, #-4]
	stur	x0, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x0, [x29, #-16]
	ldur	w8, [x29, #-4]
	mov	w1, w8
	bl	network_predict_data
	str	w0, [sp, #24]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #24]
	mov	w2, #1
	bl	matrix_topk_accuracy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	s0, [x8, :lo12:network_accuracies.acc]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #24]
	ldur	w2, [x29, #-20]
	bl	matrix_topk_accuracy
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	s0, [x8, #4]
	ldr	w0, [sp, #24]
	bl	free_matrix
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	network_accuracies, .Lfunc_end0-network_accuracies
                                        // -- End function
	.type	network_accuracies.acc,@object  // @network_accuracies.acc
	.local	network_accuracies.acc
	.comm	network_accuracies.acc,8,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym network_predict_data
	.addrsig_sym matrix_topk_accuracy
	.addrsig_sym free_matrix
	.addrsig_sym network_accuracies.acc