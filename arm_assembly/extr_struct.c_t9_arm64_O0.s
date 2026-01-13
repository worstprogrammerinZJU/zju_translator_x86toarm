	.text
	.p2align	2                               // -- Begin function t9
	.type	t9,@function
t9:                                     // @t9
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w0, #73
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	bl	expect
	mov	w0, #74
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	str	w0, [sp, #24]
	ldr	w1, [sp, #24]
	bl	expect
	ldr	w0, [sp, #4]                    // 4-byte Folded Reload
	ldr	w1, [sp, #24]
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t9, .Lfunc_end0-t9
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t9
	.addrsig_sym expect