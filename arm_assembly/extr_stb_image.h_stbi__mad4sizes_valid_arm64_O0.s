	.text
	.p2align	2                               // -- Begin function stbi__mad4sizes_valid
	.type	stbi__mad4sizes_valid,@function
stbi__mad4sizes_valid:                  // @stbi__mad4sizes_valid
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	stur	w2, [x29, #-12]
	str	w3, [sp, #16]
	str	w4, [sp, #12]
	ldur	w0, [x29, #-4]
	ldur	w1, [x29, #-8]
	bl	stbi__mul2sizes_valid
	mov	w8, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	mul	w0, w8, w9
	ldur	w1, [x29, #-12]
	bl	stbi__mul2sizes_valid
	mov	w8, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-12]
	mul	w0, w8, w9
	ldr	w1, [sp, #16]
	bl	stbi__mul2sizes_valid
	mov	w8, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w8, [x29, #-4]
	ldur	w9, [x29, #-8]
	mul	w8, w8, w9
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #16]
	mul	w0, w8, w9
	ldr	w1, [sp, #12]
	bl	stbi__addsizes_valid
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__mad4sizes_valid, .Lfunc_end0-stbi__mad4sizes_valid
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__mad4sizes_valid
	.addrsig_sym stbi__mul2sizes_valid
	.addrsig_sym stbi__addsizes_valid