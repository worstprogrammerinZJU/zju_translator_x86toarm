	.text
	.globl	decFloatIsInteger               // -- Begin function decFloatIsInteger
	.p2align	2
	.type	decFloatIsInteger,@function
decFloatIsInteger:                      // @decFloatIsInteger
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	DFISINT
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	decFloatIsInteger, .Lfunc_end0-decFloatIsInteger
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym DFISINT