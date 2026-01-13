	.text
	.p2align	2                               // -- Begin function stbi__parse_zlib_header
	.type	stbi__parse_zlib_header,@function
stbi__parse_zlib_header:                // @stbi__parse_zlib_header
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	bl	stbi__zget8
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	and	w8, w8, #0xf
	str	w8, [sp, #8]
	ldr	x0, [sp, #16]
	bl	stbi__zget8
	str	w0, [sp, #4]
	ldr	w9, [sp, #12]
	ldr	w8, [sp, #4]
	add	w8, w8, w9, lsl #8
	mov	w10, #31
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	w8, [sp, #4]
	tbz	w8, #5, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldr	w8, [sp, #8]
	subs	w8, w8, #8
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_7
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
	.size	stbi__parse_zlib_header, .Lfunc_end0-stbi__parse_zlib_header
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad zlib header"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt PNG"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"no preset dict"
	.size	.L.str.2, 15
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"bad compression"
	.size	.L.str.3, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__parse_zlib_header
	.addrsig_sym stbi__zget8
	.addrsig_sym stbi__err