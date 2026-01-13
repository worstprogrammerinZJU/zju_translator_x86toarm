	.text
	.p2align	2                               // -- Begin function stbiw__putc
	.type	stbiw__putc,@function
stbiw__putc:                            // @stbiw__putc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, w1
	str	x0, [sp, #8]
	add	x1, sp, #7
	strb	w8, [sp, #7]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	w0, [x9]
	mov	w2, #1
	blr	x8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbiw__putc, .Lfunc_end0-stbiw__putc
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__putc