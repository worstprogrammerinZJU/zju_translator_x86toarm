	.text
	.p2align	2                               // -- Begin function t2
	.type	t2,@function
t2:                                     // @t2
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #61
	str	w8, [sp, #8]
	mov	w8, #2
	str	w8, [sp, #12]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	add	w1, w8, w9
	mov	w0, #63
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t2, .Lfunc_end0-t2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t2
	.addrsig_sym expect