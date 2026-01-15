	.text
	.p2align	2                               // -- Begin function priv_fwrite
	.type	priv_fwrite,@function
priv_fwrite:                            // @priv_fwrite
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	ldur	x0, [x29, #-8]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	mov	w1, #1
	bl	fwrite
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	priv_fwrite, .Lfunc_end0-priv_fwrite
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym priv_fwrite
	.addrsig_sym fwrite