	.text
	.globl	decFloatCanonical               // -- Begin function decFloatCanonical
	.p2align	2
	.type	decFloatCanonical,@function
decFloatCanonical:                      // @decFloatCanonical
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	decCanonical
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatCanonical, .Lfunc_end0-decFloatCanonical
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCanonical