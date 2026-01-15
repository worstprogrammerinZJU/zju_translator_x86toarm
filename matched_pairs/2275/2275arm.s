	.text
	.p2align	2                               // -- Begin function stbi__psd_decode_rle
	.type	stbi__psd_decode_rle,@function
stbi__psd_decode_rle:                   // @stbi__psd_decode_rle
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	w2, [sp, #20]
	str	wzr, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_15 Depth 2
                                        //     Child Loop BB0_8 Depth 2
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	str	w8, [sp, #12]
	subs	w8, w8, #0
	b.le	.LBB0_21
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	subs	w8, w8, #128
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_20
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #128
	b.ge	.LBB0_11
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.le	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-4]
	b	.LBB0_22
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #8]
	ldr	w8, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_8
.LBB0_8:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_8 Depth=2
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	ldr	x8, [sp, #24]
	str	x0, [x8]
	ldr	x8, [sp, #24]
	add	x8, x8, #32
	str	x8, [sp, #24]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_8
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_19
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	subs	w8, w8, #128
	b.le	.LBB0_18
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #8]
	mov	w8, #257
	subs	w8, w8, w9
	str	w8, [sp, #8]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.le	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	stur	wzr, [x29, #-4]
	b	.LBB0_22
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	str	x0, [sp]
	ldr	w9, [sp, #8]
	ldr	w8, [sp, #16]
	add	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_15
.LBB0_15:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=2
	ldr	x8, [sp]
	ldr	x9, [sp, #24]
	str	x8, [x9]
	ldr	x8, [sp, #24]
	add	x8, x8, #32
	str	x8, [sp, #24]
	ldr	w8, [sp, #8]
	subs	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_15
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_21:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_22
.LBB0_22:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__psd_decode_rle, .Lfunc_end0-stbi__psd_decode_rle
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__psd_decode_rle
	.addrsig_sym stbi__get8