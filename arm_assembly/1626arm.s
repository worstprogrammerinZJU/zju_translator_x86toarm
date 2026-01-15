	.text
	.p2align	2                               // -- Begin function span
	.type	span,@function
span:                                   // @span
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	ldr	x8, [sp, #24]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #24]
	ldr	x1, [sp, #8]
	bl	strspn
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	x0, x8, w0, sxtw
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	span, .Lfunc_end0-span
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym span
	.addrsig_sym strspn