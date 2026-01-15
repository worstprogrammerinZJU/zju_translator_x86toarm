	.text
	.p2align	2                               // -- Begin function stbi__bmp_test_raw
	.type	stbi__bmp_test_raw,@function
stbi__bmp_test_raw:                     // @stbi__bmp_test_raw
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #66
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #77
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_10
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	stbi__get32le
	ldr	x0, [sp, #16]
	bl	stbi__get16le
	ldr	x0, [sp, #16]
	bl	stbi__get16le
	ldr	x0, [sp, #16]
	bl	stbi__get32le
	ldr	x0, [sp, #16]
	bl	stbi__get32le
	str	w0, [sp, #8]
	ldr	w9, [sp, #8]
	mov	w8, #1
	subs	w9, w9, #12
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_9
	b	.LBB0_5
.LBB0_5:
	ldr	w9, [sp, #8]
	mov	w8, #1
	subs	w9, w9, #40
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_9
	b	.LBB0_6
.LBB0_6:
	ldr	w9, [sp, #8]
	mov	w8, #1
	subs	w9, w9, #56
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldr	w9, [sp, #8]
	mov	w8, #1
	subs	w9, w9, #108
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #8]
	subs	w8, w8, #124
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	stur	w8, [x29, #-4]
	b	.LBB0_10
.LBB0_10:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__bmp_test_raw, .Lfunc_end0-stbi__bmp_test_raw
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bmp_test_raw
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__get32le
	.addrsig_sym stbi__get16le