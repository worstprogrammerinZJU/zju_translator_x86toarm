	.text
	.p2align	2                               // -- Begin function stbi__bit_reverse
	.type	stbi__bit_reverse,@function
stbi__bit_reverse:                      // @stbi__bit_reverse
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	ldr	w8, [sp, #8]
	mov	w9, #16
	str	w9, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #16
	cset	w8, le
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldur	w0, [x29, #-4]
	bl	stbi__bitreverse16
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	asr	w0, w0, w8
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__bit_reverse, .Lfunc_end0-stbi__bit_reverse
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bit_reverse
	.addrsig_sym STBI_ASSERT
	.addrsig_sym stbi__bitreverse16