	.text
	.p2align	2                               // -- Begin function t6
	.type	t6,@function
t6:                                     // @t6
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sub	x8, x29, #4
	str	x8, [sp]
	ldr	x8, [sp]
	mov	w0, #69
	str	w0, [x8]
	ldur	w1, [x29, #-4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t6, .Lfunc_end0-t6
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6
	.addrsig_sym expect