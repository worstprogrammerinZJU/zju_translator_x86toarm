	.text
	.p2align	2                               // -- Begin function t2
	.type	t2,@function
t2:                                     // @t2
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	add	x8, sp, #24
	add	x9, x8, #12
	str	x9, [sp, #16]
	ldr	x10, [sp, #16]
	mov	w9, #1
	str	w9, [x10]
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	mov	w0, #32
	str	w0, [x8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #12]
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	t2, .Lfunc_end0-t2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t2
	.addrsig_sym expect