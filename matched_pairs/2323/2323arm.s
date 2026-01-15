	.text
	.p2align	2                               // -- Begin function stbiw__write3
	.type	stbiw__write3,@function
stbiw__write3:                          // @stbiw__write3
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	strb	w2, [sp, #6]
	strb	w3, [sp, #5]
	ldrb	w8, [sp, #7]
	add	x1, sp, #2
	strb	w8, [sp, #2]
	ldrb	w8, [sp, #6]
	strb	w8, [sp, #3]
	ldrb	w8, [sp, #5]
	strb	w8, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #8]
	ldr	w0, [x9]
	mov	w2, #3
	blr	x8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbiw__write3, .Lfunc_end0-stbiw__write3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__write3