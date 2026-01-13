	.text
	.p2align	2                               // -- Begin function t4
	.type	t4,@function
t4:                                     // @t4
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, #61
	str	w8, [sp, #8]
	mov	w8, #3
	strb	w8, [sp, #12]
	mov	w8, #3
	str	w8, [sp, #16]
	ldr	w8, [sp, #8]
	ldrb	w9, [sp, #12]
	add	w8, w8, w9
	ldr	w9, [sp, #16]
	add	w1, w8, w9
	mov	w0, #67
	bl	expect
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	t4, .Lfunc_end0-t4
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t4
	.addrsig_sym expect