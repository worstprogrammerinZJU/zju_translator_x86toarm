	.text
	.p2align	2                               // -- Begin function stbi__decode_jpeg_image
	.type	stbi__decode_jpeg_image,@function
stbi__decode_jpeg_image:                // @stbi__decode_jpeg_image
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-20]
	subs	w8, w8, #4
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldursw	x9, [x29, #-20]
	add	x9, x8, x9, lsl #4
	mov	x8, xzr
	str	xzr, [x9, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldursw	x10, [x29, #-20]
	lsl	x10, x10, #4
	str	x8, [x9, x10]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #24]
	ldur	x0, [x29, #-16]
	adrp	x8, STBI__SCAN_load
	ldr	w1, [x8, :lo12:STBI__SCAN_load]
	bl	stbi__decode_jpeg_header
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	stur	wzr, [x29, #-4]
	b	.LBB0_35
.LBB0_6:
	ldur	x0, [x29, #-16]
	bl	stbi__get_marker
	stur	w0, [x29, #-20]
	b	.LBB0_7
.LBB0_7:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_15 Depth 2
	ldur	w0, [x29, #-20]
	bl	stbi__EOI
	cbnz	w0, .LBB0_32
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	w0, [x29, #-20]
	bl	stbi__SOS
	cbz	x0, .LBB0_21
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__process_scan_header
	cbnz	w0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	stur	wzr, [x29, #-4]
	b	.LBB0_35
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__parse_entropy_coded_data
	cbnz	w0, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	stur	wzr, [x29, #-4]
	b	.LBB0_35
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	adrp	x9, STBI__MARKER_none
	ldr	x9, [x9, :lo12:STBI__MARKER_none]
	subs	x8, x8, x9
	b.ne	.LBB0_20
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   Parent Loop BB0_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	stbi__at_eof
	cbnz	w0, .LBB0_19
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_15 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #24]
	ldr	w8, [sp, #24]
	subs	w8, w8, #255
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	stbi__get8
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_19
.LBB0_18:                               //   in Loop: Header=BB0_15 Depth=2
	b	.LBB0_15
.LBB0_19:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_31
.LBB0_21:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	w0, [x29, #-20]
	bl	stbi__DNL
	cbz	x0, .LBB0_27
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	stbi__get16be
	mov	w8, w0
	str	w8, [sp, #20]
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	bl	stbi__get16be
	str	x0, [sp, #8]
	ldr	w8, [sp, #20]
	subs	w8, w8, #4
	b.eq	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_35
.LBB0_24:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.eq	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_35
.LBB0_26:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_30
.LBB0_27:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-20]
	bl	stbi__process_marker
	cbnz	w0, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	stur	wzr, [x29, #-4]
	b	.LBB0_35
.LBB0_29:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_7 Depth=1
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get_marker
	stur	w0, [x29, #-20]
	b	.LBB0_7
.LBB0_32:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	cbz	x8, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	x0, [x29, #-16]
	bl	stbi__jpeg_finish
	b	.LBB0_34
.LBB0_34:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_35
.LBB0_35:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__decode_jpeg_image, .Lfunc_end0-stbi__decode_jpeg_image
                                        // -- End function
	.type	STBI__SCAN_load,@object         // @STBI__SCAN_load
	.bss
	.globl	STBI__SCAN_load
	.p2align	2
STBI__SCAN_load:
	.word	0                               // 0x0
	.size	STBI__SCAN_load, 4
	.type	STBI__MARKER_none,@object       // @STBI__MARKER_none
	.globl	STBI__MARKER_none
	.p2align	3
STBI__MARKER_none:
	.xword	0
	.size	STBI__MARKER_none, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad DNL len"
	.size	.L.str, 12
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt JPEG"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"bad DNL height"
	.size	.L.str.2, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__decode_jpeg_image
	.addrsig_sym stbi__decode_jpeg_header
	.addrsig_sym stbi__get_marker
	.addrsig_sym stbi__EOI
	.addrsig_sym stbi__SOS
	.addrsig_sym stbi__process_scan_header
	.addrsig_sym stbi__parse_entropy_coded_data
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__DNL
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__err
	.addrsig_sym stbi__process_marker
	.addrsig_sym stbi__jpeg_finish
	.addrsig_sym STBI__SCAN_load
	.addrsig_sym STBI__MARKER_none