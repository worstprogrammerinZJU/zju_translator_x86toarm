	.text
	.p2align	2                               // -- Begin function t7
	.type	t7,@function
t7:                                     // @t7
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	sub	x8, x29, #4
	add	x9, x8, #4
	str	x9, [sp, #16]
	add	x8, x8, #4
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	mov	w1, w8
	mov	w0, wzr
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t7, .Lfunc_end0-t7
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t7
	.addrsig_sym expect