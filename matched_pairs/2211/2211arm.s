	.text
	.p2align	2                               // -- Begin function stbi__gif_test_raw
	.type	stbi__gif_test_raw,@function
stbi__gif_test_raw:                     // @stbi__gif_test_raw
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #71
	b.ne	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #73
	b.ne	.LBB0_4
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #70
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #56
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_5:
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #57
	b.eq	.LBB0_8
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #12]
	subs	w8, w8, #55
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_8:
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #97
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	stur	wzr, [x29, #-4]
	b	.LBB0_11
.LBB0_10:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_11
.LBB0_11:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__gif_test_raw, .Lfunc_end0-stbi__gif_test_raw
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_test_raw
	.addrsig_sym stbi__get8