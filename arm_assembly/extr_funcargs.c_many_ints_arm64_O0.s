	.text
	.p2align	2                               // -- Begin function many_ints
	.type	many_ints,@function
many_ints:                              // @many_ints
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	ldr	w8, [x29, #16]
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	stur	w3, [x29, #-16]
	stur	w4, [x29, #-20]
	str	w5, [sp, #24]
	str	w6, [sp, #20]
	str	w7, [sp, #16]
	str	w8, [sp, #12]
	ldur	w1, [x29, #-4]
	mov	w0, #1
	bl	expect
	ldur	w1, [x29, #-8]
	mov	w0, #2
	bl	expect
	ldur	w1, [x29, #-12]
	mov	w0, #3
	bl	expect
	ldur	w1, [x29, #-16]
	mov	w0, #4
	bl	expect
	ldur	w1, [x29, #-20]
	mov	w0, #5
	bl	expect
	ldr	w1, [sp, #24]
	mov	w0, #6
	bl	expect
	ldr	w1, [sp, #20]
	mov	w0, #7
	bl	expect
	ldr	w1, [sp, #16]
	mov	w0, #8
	bl	expect
	ldr	w1, [sp, #12]
	mov	w0, #9
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	many_ints, .Lfunc_end0-many_ints
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym many_ints
	.addrsig_sym expect