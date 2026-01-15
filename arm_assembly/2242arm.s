	.text
	.p2align	2                               // -- Begin function stbi__mad2sizes_valid
	.type	stbi__mad2sizes_valid,@function
stbi__mad2sizes_valid:                  // @stbi__mad2sizes_valid
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	stur	w0, [x29, #-4]
	str	w1, [sp, #8]
	str	w2, [sp, #4]
	ldur	w0, [x29, #-4]
	ldr	w1, [sp, #8]
	bl	stbi__mul2sizes_valid
	mov	w8, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	ldr	w9, [sp, #8]
	mul	w0, w8, w9
	ldr	w1, [sp, #4]
	bl	stbi__addsizes_valid
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	stbi__mad2sizes_valid, .Lfunc_end0-stbi__mad2sizes_valid
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__mad2sizes_valid
	.addrsig_sym stbi__mul2sizes_valid
	.addrsig_sym stbi__addsizes_valid