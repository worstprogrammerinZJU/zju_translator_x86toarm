	.text
	.p2align	2                               // -- Begin function copy_token
	.type	copy_token,@function
copy_token:                             // @copy_token
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	mov	w0, #4
	bl	malloc
	str	x0, [sp]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldr	x9, [sp]
	str	w8, [x9]
	ldr	x0, [sp]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	copy_token, .Lfunc_end0-copy_token
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_token
	.addrsig_sym malloc