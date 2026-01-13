	.text
	.p2align	2                               // -- Begin function dollar
	.type	dollar,@function
dollar:                                 // @dollar
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w0, #1
	stur	w0, [x29, #-4]
	ldur	w1, [x29, #-4]
	bl	expect
	mov	w0, #2
	str	w0, [sp, #8]
	ldr	w1, [sp, #8]
	bl	expect
	mov	w0, #3
	str	w0, [sp, #4]
	ldr	w1, [sp, #4]
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	dollar, .Lfunc_end0-dollar
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym dollar
	.addrsig_sym expect