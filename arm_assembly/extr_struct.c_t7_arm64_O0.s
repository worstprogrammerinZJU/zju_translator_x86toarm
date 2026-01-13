	.text
	.p2align	2                               // -- Begin function t7
	.type	t7,@function
t7:                                     // @t7
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	add	x8, sp, #8
	str	x8, [sp]
	mov	w0, #71
	str	w0, [sp, #12]
	ldr	x8, [sp]
	ldr	w1, [x8, #4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t7, .Lfunc_end0-t7
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t7
	.addrsig_sym expect