	.text
	.p2align	2                               // -- Begin function stbi__pnm_skip_whitespace
	.type	stbi__pnm_skip_whitespace,@function
stbi__pnm_skip_whitespace:              // @stbi__pnm_skip_whitespace
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_2 Depth 2
                                        //     Child Loop BB0_10 Depth 2
	b	.LBB0_2
.LBB0_2:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x0, [x29, #-8]
	bl	stbi__at_eof
	mov	w8, #0
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	cbnz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=2
	ldr	x8, [sp, #16]
	ldrb	w0, [x8]
	bl	stbi__pnm_isspace
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=2
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_2 Depth=2
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	ldr	x9, [sp, #16]
	mov	w8, w0
	strb	w8, [x9]
	b	.LBB0_2
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	stbi__at_eof
	cbnz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	subs	w8, w8, #35
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	b	.LBB0_16
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x0, [x29, #-8]
	bl	stbi__at_eof
	mov	w8, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbnz	x0, .LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x8, [sp, #16]
	ldrb	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	subs	w8, w8, #13
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_10 Depth=2
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	ldr	x9, [sp, #16]
	mov	w8, w0
	strb	w8, [x9]
	b	.LBB0_10
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_16:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__pnm_skip_whitespace, .Lfunc_end0-stbi__pnm_skip_whitespace
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_skip_whitespace
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__pnm_isspace
	.addrsig_sym stbi__get8