	.text
	.p2align	2                               // -- Begin function put_char
	.type	put_char,@function
put_char:                               // @put_char
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w8, w0
	sub	x0, x29, #1
	sturb	w8, [x29, #-1]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	w3, [sp, #4]
	ldr	x2, [sp, #16]
	ldr	x3, [sp, #8]
	ldr	w4, [sp, #4]
	mov	w1, #1
	bl	put_buf
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	put_char, .Lfunc_end0-put_char
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym put_char
	.addrsig_sym put_buf