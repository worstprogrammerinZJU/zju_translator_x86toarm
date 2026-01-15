	.text
	.globl	decFloatIsNaN                   // -- Begin function decFloatIsNaN
	.p2align	2
	.type	decFloatIsNaN,@function
decFloatIsNaN:                          // @decFloatIsNaN
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	DFISNAN
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsNaN, .Lfunc_end0-decFloatIsNaN
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISNAN