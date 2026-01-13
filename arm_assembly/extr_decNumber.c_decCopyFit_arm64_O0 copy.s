	.text
	.p2align	2                               // -- Begin function decCopyFit
	.type	decCopyFit,@function
decCopyFit:                             // @decCopyFit
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	str	x4, [sp, #8]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #12]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #12]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #24]
	ldur	x8, [x29, #-16]
	ldr	w2, [x8, #4]
	ldur	x8, [x29, #-16]
	ldr	w3, [x8]
	ldr	x4, [sp, #16]
	ldr	x5, [sp, #8]
	bl	decSetCoeff
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	decCopyFit, .Lfunc_end0-decCopyFit
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decCopyFit
	.addrsig_sym decSetCoeff