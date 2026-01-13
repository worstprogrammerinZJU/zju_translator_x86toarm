	.text
	.p2align	2                               // -- Begin function t2
	.type	t2,@function
t2:                                     // @t2
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	wzr, [x29, #-4]
	mov	w8, #1
	sturb	w8, [x29, #-3]
	ldur	w1, [x29, #-4]
	mov	w0, #256
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t2, .Lfunc_end0-t2
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t2
	.addrsig_sym expect