	.text
	.globl	top_predictions                 // -- Begin function top_predictions
	.p2align	2
	.type	top_predictions,@function
top_predictions:                        // @top_predictions
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	ldur	w2, [x29, #-12]
	ldr	x3, [sp, #8]
	bl	top_k
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	top_predictions, .Lfunc_end0-top_predictions
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym top_k