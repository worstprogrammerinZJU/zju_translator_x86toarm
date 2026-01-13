	.text
	.p2align	2                               // -- Begin function assign
	.type	assign,@function
assign:                                 // @assign
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	w0, #3
	stur	w0, [x29, #-16]
	mov	w8, #5
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	stur	w8, [x29, #-12]
	mov	w8, #7
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	stur	w8, [x29, #-8]
	mov	w8, #9
	sturh	w8, [x29, #-4]
	mov	w8, #11
	sturb	w8, [x29, #-2]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldr	w1, [sp, #16]
	bl	expect
	ldr	w0, [sp, #8]                    // 4-byte Folded Reload
	ldr	w1, [sp, #20]
	bl	expect
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	ldr	w1, [sp, #24]
	bl	expect
	ldrsh	w1, [sp, #28]
	mov	w0, #9
	bl	expect
	ldrb	w1, [sp, #30]
	mov	w0, #11
	bl	expect
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	assign, .Lfunc_end0-assign
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assign
	.addrsig_sym expect