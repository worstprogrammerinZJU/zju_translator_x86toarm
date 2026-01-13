	.text
	.p2align	2                               // -- Begin function t3
	.type	t3,@function
t3:                                     // @t3
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	str	w3, [sp, #16]
	str	w4, [sp, #12]
	str	w5, [sp, #8]
	ldur	w1, [x29, #-4]
	mov	w0, #1
	bl	expect
	ldur	w1, [x29, #-8]
	mov	w0, #2
	bl	expect
	ldur	w1, [x29, #-12]
	mov	w0, #3
	bl	expect
	ldr	w1, [sp, #16]
	mov	w0, #4
	bl	expect
	ldr	w1, [sp, #12]
	mov	w0, #5
	bl	expect
	ldr	w1, [sp, #8]
	mov	w0, #6
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t3, .Lfunc_end0-t3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect