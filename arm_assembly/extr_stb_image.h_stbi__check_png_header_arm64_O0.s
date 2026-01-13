	.text
	.p2align	2                               // -- Begin function stbi__check_png_header
	.type	stbi__check_png_header,@function
stbi__check_png_header:                 // @stbi__check_png_header
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #8
	b.ge	.LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	bl	stbi__get8
	ldrsw	x9, [sp, #12]
	adrp	x8, stbi__check_png_header.png_sig
	add	x8, x8, :lo12:stbi__check_png_header.png_sig
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w0, w8
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_6:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__check_png_header, .Lfunc_end0-stbi__check_png_header
                                        // -- End function
	.type	stbi__check_png_header.png_sig,@object // @stbi__check_png_header.png_sig
	.section	.rodata,"a",@progbits
	.p2align	2
stbi__check_png_header.png_sig:
	.word	137                             // 0x89
	.word	80                              // 0x50
	.word	78                              // 0x4e
	.word	71                              // 0x47
	.word	13                              // 0xd
	.word	10                              // 0xa
	.word	26                              // 0x1a
	.word	10                              // 0xa
	.size	stbi__check_png_header.png_sig, 32
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad png sig"
	.size	.L.str, 12
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Not a PNG"
	.size	.L.str.1, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__check_png_header
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__err
	.addrsig_sym stbi__check_png_header.png_sig