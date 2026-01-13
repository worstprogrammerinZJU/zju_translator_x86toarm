	.text
	.p2align	2                               // -- Begin function t1
	.type	t1,@function
t1:                                     // @t1
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	add	x8, sp, #8
	str	x8, [sp]
	ldr	x8, [sp]
	mov	w0, #1
	str	w0, [x8]
	ldr	x8, [sp]
	ldr	w1, [x8]
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t1, .Lfunc_end0-t1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t1
	.addrsig_sym expect