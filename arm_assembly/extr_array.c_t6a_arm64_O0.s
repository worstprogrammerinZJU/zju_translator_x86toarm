	.text
	.p2align	2                               // -- Begin function t6a
	.type	t6a,@function
t6a:                                    // @t6a
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	x1, [sp]
	ldur	w0, [x29, #-4]
	ldr	x8, [sp]
	ldr	w1, [x8, #16]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t6a, .Lfunc_end0-t6a
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t6a
	.addrsig_sym expect