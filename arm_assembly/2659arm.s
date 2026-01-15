	.text
	.globl	pulseInLong                     // -- Begin function pulseInLong
	.p2align	2
	.type	pulseInLong,@function
pulseInLong:                            // @pulseInLong
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	str	x2, [sp]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	ldr	x2, [sp]
	bl	pulseIn
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	pulseInLong, .Lfunc_end0-pulseInLong
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pulseIn