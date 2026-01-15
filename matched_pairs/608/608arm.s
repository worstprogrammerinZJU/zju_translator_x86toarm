	.text
	.globl	decFloatToInt32Exact            // -- Begin function decFloatToInt32Exact
	.p2align	2
	.type	decFloatToInt32Exact,@function
decFloatToInt32Exact:                   // @decFloatToInt32Exact
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
	mov	w3, #1
	mov	w4, wzr
	bl	decToInt32
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatToInt32Exact, .Lfunc_end0-decFloatToInt32Exact
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToInt32