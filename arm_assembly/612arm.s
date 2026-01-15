	.text
	.globl	decFloatToUInt32Exact           // -- Begin function decFloatToUInt32Exact
	.p2align	2
	.type	decFloatToUInt32Exact,@function
decFloatToUInt32Exact:                  // @decFloatToUInt32Exact
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	w2, [sp, #12]
	mov	w4, #1
	mov	w3, w4
	bl	decToInt32
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatToUInt32Exact, .Lfunc_end0-decFloatToUInt32Exact
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToInt32