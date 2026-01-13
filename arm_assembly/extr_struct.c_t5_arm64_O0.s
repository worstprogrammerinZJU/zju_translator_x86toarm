	.text
	.p2align	2                               // -- Begin function t5
	.type	t5,@function
t5:                                     // @t5
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	sub	x8, x29, #4
	str	x8, [sp]
	mov	w0, #68
	stur	w0, [x29, #-4]
	ldr	x8, [sp]
	ldr	w1, [x8]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t5, .Lfunc_end0-t5
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t5
	.addrsig_sym expect