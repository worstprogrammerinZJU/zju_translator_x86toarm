	.text
	.p2align	2                               // -- Begin function stbi__vertical_flip
	.type	stbi__vertical_flip,@function
stbi__vertical_flip:                    // @stbi__vertical_flip
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #2, lsl #12             // =8192
	sub	sp, sp, #96
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	w2, [x29, #-16]
	stur	w3, [x29, #-20]
	ldursw	x8, [x29, #-12]
	ldursw	x9, [x29, #-20]
	mul	x8, x8, x9
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #56]
	stur	wzr, [x29, #-24]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-24]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9, asr #1
	b.ge	.LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	ldursw	x9, [x29, #-24]
	ldur	x10, [x29, #-32]
	mul	x9, x9, x10
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #48]
	ldr	x8, [sp, #56]
	ldur	w9, [x29, #-16]
	ldur	w10, [x29, #-24]
	subs	w9, w9, w10
	subs	w10, w9, #1
                                        // implicit-def: $x9
	mov	w9, w10
	sxtw	x9, w9
	ldur	x10, [x29, #-32]
	mul	x9, x9, x10
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #32]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #32]
	subs	x8, x8, #2, lsl #12             // =8192
	b.hs	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=2
	mov	x8, #8192
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #24]
	ldr	x1, [sp, #48]
	ldr	x2, [sp, #24]
	add	x0, sp, #64
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #48]
	ldr	x1, [sp, #40]
	ldr	x2, [sp, #24]
	bl	memcpy
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [sp, #40]
	ldr	x2, [sp, #24]
	bl	memcpy
	ldr	x9, [sp, #24]
	ldr	x8, [sp, #48]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #48]
	ldr	x9, [sp, #24]
	ldr	x8, [sp, #40]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #40]
	ldr	x9, [sp, #24]
	ldr	x8, [sp, #32]
	subs	x8, x8, x9
	str	x8, [sp, #32]
	b	.LBB0_3
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_1
.LBB0_10:
	add	sp, sp, #2, lsl #12             // =8192
	add	sp, sp, #96
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	stbi__vertical_flip, .Lfunc_end0-stbi__vertical_flip
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__vertical_flip
	.addrsig_sym memcpy