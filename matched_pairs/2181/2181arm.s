	.text
	.p2align	2                               // -- Begin function stbi__compute_transparency16
	.type	stbi__compute_transparency16,@function
stbi__compute_transparency16:           // @stbi__compute_transparency16
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	ldr	x9, [sp, #32]
	ldr	x9, [x9, #8]
	mul	x8, x8, x9
	str	x8, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	ldur	w9, [x29, #-20]
	mov	w8, #1
	subs	w9, w9, #2
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #4
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	STBI_ASSERT
	ldur	w8, [x29, #-20]
	subs	w8, w8, #2
	b.ne	.LBB0_8
	b	.LBB0_3
.LBB0_3:
	str	xzr, [sp, #24]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #8]
	ldr	w10, [x8]
	ldur	x8, [x29, #-16]
	ldr	w11, [x8]
	mov	w9, #65535
	mov	w8, wzr
	subs	w10, w10, w11
	csel	w8, w8, w9, eq
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_4
.LBB0_7:
	b	.LBB0_17
.LBB0_8:
	str	xzr, [sp, #24]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ge	.LBB0_16
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ne	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]
	str	wzr, [x8, #12]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #16
	str	x8, [sp, #8]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_9
.LBB0_16:
	b	.LBB0_17
.LBB0_17:
	mov	w0, #1
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	stbi__compute_transparency16, .Lfunc_end0-stbi__compute_transparency16
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__compute_transparency16
	.addrsig_sym STBI_ASSERT