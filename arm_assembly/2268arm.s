	.text
	.p2align	2                               // -- Begin function stbi__pnm_isspace
	.type	stbi__pnm_isspace,@function
stbi__pnm_isspace:                      // @stbi__pnm_isspace
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #15]
	ldrb	w9, [sp, #15]
	mov	w8, #1
	subs	w9, w9, #32
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldrb	w9, [sp, #15]
	mov	w8, #1
	subs	w9, w9, #9
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_6
	b	.LBB0_2
.LBB0_2:
	ldrb	w9, [sp, #15]
	mov	w8, #1
	subs	w9, w9, #10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldrb	w9, [sp, #15]
	mov	w8, #1
	subs	w9, w9, #11
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldrb	w9, [sp, #15]
	mov	w8, #1
	subs	w9, w9, #12
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldrb	w8, [sp, #15]
	subs	w8, w8, #13
	cset	w8, eq
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__pnm_isspace, .Lfunc_end0-stbi__pnm_isspace
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_isspace