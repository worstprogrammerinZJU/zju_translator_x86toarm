	.text
	.p2align	2                               // -- Begin function stbi__pnm_isdigit
	.type	stbi__pnm_isdigit,@function
stbi__pnm_isdigit:                      // @stbi__pnm_isdigit
// %bb.0:
	sub	sp, sp, #16
	strb	w0, [sp, #15]
	ldrb	w9, [sp, #15]
	mov	w8, #0
	subs	w9, w9, #48
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.lt	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldrb	w8, [sp, #15]
	subs	w8, w8, #57
	cset	w8, le
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	stbi__pnm_isdigit, .Lfunc_end0-stbi__pnm_isdigit
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__pnm_isdigit