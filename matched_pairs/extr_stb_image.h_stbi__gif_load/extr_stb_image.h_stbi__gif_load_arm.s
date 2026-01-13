	.text
	.p2align	2                               // -- Begin function stbi__gif_load
	.type	stbi__gif_load,@function
stbi__gif_load:                         // @stbi__gif_load
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	w4, [x29, #-36]
	str	x5, [sp, #48]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	add	x0, sp, #24
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	mov	w1, wzr
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	mov	w2, #16
	bl	memset
	ldr	x1, [sp, #8]                    // 8-byte Folded Reload
	ldr	w4, [sp, #20]                   // 4-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x2, [x29, #-32]
	ldur	w3, [x29, #-36]
	bl	stbi__gif_load_next
	str	x0, [sp, #40]
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #40]
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #40]
	cbz	x8, .LBB0_7
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #24]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	w8, [sp, #28]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldur	w8, [x29, #-36]
	cbz	w8, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldur	w8, [x29, #-36]
	subs	w8, w8, #4
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp, #40]
	ldur	w2, [x29, #-36]
	ldr	w3, [sp, #24]
	ldr	w4, [sp, #28]
	mov	w1, #4
	bl	stbi__convert_format
	str	x0, [sp, #40]
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldr	w0, [sp, #36]
	bl	STBI_FREE
	ldr	w0, [sp, #32]
	bl	STBI_FREE
	ldr	x0, [sp, #40]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	stbi__gif_load, .Lfunc_end0-stbi__gif_load
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_load
	.addrsig_sym memset
	.addrsig_sym stbi__gif_load_next
	.addrsig_sym stbi__convert_format
	.addrsig_sym STBI_FREE