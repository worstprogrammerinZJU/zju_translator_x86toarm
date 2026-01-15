	.text
	.p2align	2                               // -- Begin function stbi__pnm_getinteger
	.type	stbi__pnm_getinteger,@function
stbi__pnm_getinteger:                   // @stbi__pnm_getinteger
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-8]
	bl	stbi__at_eof
	mov	w8, #0
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w0, [x8]
	bl	stbi__pnm_isdigit
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	mov	w9, #10
	mul	w8, w8, w9
	ldr	x9, [sp, #16]
	ldrb	w9, [x9]
	subs	w9, w9, #48
	add	w8, w8, w9
	str	w8, [sp, #12]
	ldur	x0, [x29, #-8]
	bl	stbi__get8
	ldr	x9, [sp, #16]
	mov	w8, w0
	strb	w8, [x9]
	b	.LBB0_1
.LBB0_5:
	ldr	w0, [sp, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__pnm_getinteger, .Lfunc_end0-stbi__pnm_getinteger
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_getinteger
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__pnm_isdigit
	.addrsig_sym stbi__get8