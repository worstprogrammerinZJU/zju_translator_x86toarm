	.text
	.p2align	2                               // -- Begin function t5a
	.type	t5a,@function
t5a:                                    // @t5a
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	mov	w0, #99
	bl	expect
	ldr	x8, [sp, #8]
	add	x8, x8, #4
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	mov	w0, #98
	bl	expect
	ldr	x8, [sp, #8]
	add	x8, x8, #4
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	mov	w0, #97
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t5a, .Lfunc_end0-t5a
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5a
	.addrsig_sym expect