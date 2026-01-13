	.text
	.p2align	2                               // -- Begin function stbi__png_info_raw
	.type	stbi__png_info_raw,@function
stbi__png_info_raw:                     // @stbi__png_info_raw
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	str	x3, [sp, #8]
	ldur	x0, [x29, #-16]
	adrp	x8, STBI__SCAN_header
	ldr	w1, [x8, :lo12:STBI__SCAN_header]
	mov	w2, wzr
	bl	stbi__parse_png_file
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	stbi__rewind
	stur	wzr, [x29, #-4]
	b	.LBB0_9
.LBB0_2:
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	b	.LBB0_8
.LBB0_8:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_9
.LBB0_9:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__png_info_raw, .Lfunc_end0-stbi__png_info_raw
                                        // -- End function
	.type	STBI__SCAN_header,@object       // @STBI__SCAN_header
	.bss
	.globl	STBI__SCAN_header
	.p2align	2
STBI__SCAN_header:
	.word	0                               // 0x0
	.size	STBI__SCAN_header, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__png_info_raw
	.addrsig_sym stbi__parse_png_file
	.addrsig_sym stbi__rewind
	.addrsig_sym STBI__SCAN_header