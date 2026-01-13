	.text
	.p2align	2                               // -- Begin function auxnew
	.type	auxnew,@function
auxnew:                                 // @auxnew
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #4]
	add	w1, w8, w9
	bl	newpatt
	ldr	x8, [sp, #16]
	str	x0, [x8]
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	jointable
	ldr	w10, [sp, #4]
	ldr	x9, [sp, #8]
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldrsw	x9, [x9]
	add	x8, x8, x9, lsl #2
	ldrsw	x10, [sp, #4]
	mov	x9, xzr
	subs	x9, x9, x10
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	auxnew, .Lfunc_end0-auxnew
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym auxnew
	.addrsig_sym newpatt
	.addrsig_sym jointable