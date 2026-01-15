	.text
	.globl	decFloatToUInt32                // -- Begin function decFloatToUInt32
	.p2align	2
	.type	decFloatToUInt32,@function
decFloatToUInt32:                       // @decFloatToUInt32
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
	mov	w3, wzr
	mov	w4, #1
	bl	decToInt32
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatToUInt32, .Lfunc_end0-decFloatToUInt32
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToInt32