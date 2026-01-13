	.text
	.p2align	2                               // -- Begin function stbi__vertical_flip_slices
	.type	stbi__vertical_flip_slices,@function
stbi__vertical_flip_slices:             // @stbi__vertical_flip_slices
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	str	w4, [sp, #24]
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldr	w9, [sp, #24]
	mul	w8, w8, w9
	str	w8, [sp, #16]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	str	wzr, [sp, #20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldur	w1, [x29, #-12]
	ldur	w2, [x29, #-16]
	ldr	w3, [sp, #24]
	bl	stbi__vertical_flip
	ldrsw	x9, [sp, #16]
	ldr	x8, [sp, #8]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__vertical_flip_slices, .Lfunc_end0-stbi__vertical_flip_slices
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__vertical_flip_slices
	.addrsig_sym stbi__vertical_flip