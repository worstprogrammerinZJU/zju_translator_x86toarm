	.text
	.globl	load_weights                    // -- Begin function load_weights
	.p2align	2
	.type	load_weights,@function
load_weights:                           // @load_weights
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	w3, [x8]
	mov	w2, wzr
	bl	load_weights_upto
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	load_weights, .Lfunc_end0-load_weights
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_weights_upto