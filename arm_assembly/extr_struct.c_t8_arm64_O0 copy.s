	.text
	.p2align	2                               // -- Begin function t8
	.type	t8,@function
t8:                                     // @t8
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	add	x8, sp, #8
	str	x8, [sp]
	ldr	x8, [sp]
	mov	w0, #72
	str	w0, [x8, #4]
	ldr	w1, [sp, #12]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t8, .Lfunc_end0-t8
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t8
	.addrsig_sym expect