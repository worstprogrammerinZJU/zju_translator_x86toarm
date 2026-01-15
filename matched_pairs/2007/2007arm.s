	.text
	.globl	save_weights                    // -- Begin function save_weights
	.p2align	2
	.type	save_weights,@function
save_weights:                           // @save_weights
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	w2, [x8]
	bl	save_weights_upto
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	save_weights, .Lfunc_end0-save_weights
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym save_weights_upto