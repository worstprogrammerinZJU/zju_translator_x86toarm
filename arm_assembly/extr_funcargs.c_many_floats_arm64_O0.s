	.text
	.p2align	2                               // -- Begin function many_floats
	.type	many_floats,@function
many_floats:                            // @many_floats
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	ldr	w16, [x29, #16]
	ldr	w15, [x29, #24]
	ldr	w14, [x29, #32]
	ldr	w13, [x29, #40]
	ldr	w12, [x29, #48]
	ldr	w11, [x29, #56]
	ldr	w10, [x29, #64]
	ldr	w9, [x29, #72]
	ldr	w8, [x29, #80]
	stur	s0, [x29, #-4]
	stur	s1, [x29, #-8]
	stur	s2, [x29, #-12]
	stur	s3, [x29, #-16]
	stur	s4, [x29, #-20]
	stur	s5, [x29, #-24]
	stur	s6, [x29, #-28]
	stur	s7, [x29, #-32]
	stur	w16, [x29, #-36]
	str	w15, [sp, #40]
	str	w14, [sp, #36]
	str	w13, [sp, #32]
	str	w12, [sp, #28]
	str	w11, [sp, #24]
	str	w10, [sp, #20]
	str	w9, [sp, #16]
	str	w8, [sp, #12]
	ldur	s0, [x29, #-4]
	mov	w0, #1
	bl	expectf
	ldur	s0, [x29, #-8]
	mov	w0, #2
	bl	expectf
	ldur	s0, [x29, #-12]
	mov	w0, #3
	bl	expectf
	ldur	s0, [x29, #-16]
	mov	w0, #4
	bl	expectf
	ldur	s0, [x29, #-20]
	mov	w0, #5
	bl	expectf
	ldur	s0, [x29, #-24]
	mov	w0, #6
	bl	expectf
	ldur	s0, [x29, #-28]
	mov	w0, #7
	bl	expectf
	ldur	s0, [x29, #-32]
	mov	w0, #8
	bl	expectf
	ldur	s0, [x29, #-36]
	mov	w0, #9
	bl	expectf
	ldr	s0, [sp, #40]
	mov	w0, #10
	bl	expectf
	ldr	s0, [sp, #36]
	mov	w0, #11
	bl	expectf
	ldr	s0, [sp, #32]
	mov	w0, #12
	bl	expectf
	ldr	s0, [sp, #28]
	mov	w0, #13
	bl	expectf
	ldr	s0, [sp, #24]
	mov	w0, #14
	bl	expectf
	ldr	s0, [sp, #20]
	mov	w0, #15
	bl	expectf
	ldr	s0, [sp, #16]
	mov	w0, #16
	bl	expectf
	ldr	s0, [sp, #12]
	mov	w0, #17
	bl	expectf
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	many_floats, .Lfunc_end0-many_floats
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym many_floats
	.addrsig_sym expectf