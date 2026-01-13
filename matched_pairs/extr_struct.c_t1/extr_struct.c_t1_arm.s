	.text
	.p2align	2                               // -- Begin function t1
	.type	t1,@function
t1:                                     // @t1
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #61
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t1, .Lfunc_end0-t1
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t1
	.addrsig_sym expect