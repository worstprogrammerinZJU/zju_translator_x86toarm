	.text
	.globl	decFloatToIntegralExact         // -- Begin function decFloatToIntegralExact
	.p2align	2
	.type	decFloatToIntegralExact,@function
decFloatToIntegralExact:                // @decFloatToIntegralExact
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w3, [x8]
	mov	w4, #1
	bl	decToIntegral
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	decFloatToIntegralExact, .Lfunc_end0-decFloatToIntegralExact
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToIntegral