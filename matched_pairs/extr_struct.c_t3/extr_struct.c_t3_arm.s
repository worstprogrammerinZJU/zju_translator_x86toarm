	.text
	.p2align	2                               // -- Begin function t3
	.type	t3,@function
t3:                                     // @t3
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	w8, #61
	str	w8, [sp, #4]
	mov	w8, #3
	strb	w8, [sp, #8]
	mov	w8, #3
	str	w8, [sp, #12]
	ldr	w8, [sp, #4]
	ldrb	w9, [sp, #8]
	add	w8, w8, w9
	ldr	w9, [sp, #12]
	add	w1, w8, w9
	mov	w0, #67
	bl	expect
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	t3, .Lfunc_end0-t3
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym t3
	.addrsig_sym expect