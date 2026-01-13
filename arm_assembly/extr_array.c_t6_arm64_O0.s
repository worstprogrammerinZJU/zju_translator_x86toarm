	.text
	.p2align	2                               // -- Begin function t6
	.type	t6,@function
t6:                                     // @t6
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	add	x1, sp, #8
	mov	x8, x1
	str	x8, [sp]
	ldr	x8, [sp]
	mov	w0, #65
	str	w0, [x8, #16]
	bl	t6a
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t6, .Lfunc_end0-t6
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym t6a