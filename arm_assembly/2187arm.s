	.text
	.p2align	2                               // -- Begin function stbi__decode_jpeg_header
	.type	stbi__decode_jpeg_header,@function
stbi__decode_jpeg_header:               // @stbi__decode_jpeg_header
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	w1, [sp, #12]
	ldr	x8, [sp, #16]
	str	xzr, [x8, #16]
	ldr	x9, [sp, #16]
	mov	w8, #-1
	str	w8, [x9]
	adrp	x8, STBI__MARKER_none
	ldr	w8, [x8, :lo12:STBI__MARKER_none]
	ldr	x9, [sp, #16]
	str	w8, [x9, #4]
	ldr	x0, [sp, #16]
	bl	stbi__get_marker
	str	w0, [sp, #8]
	ldr	w0, [sp, #8]
	bl	stbi__SOI
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_2:
	ldr	w8, [sp, #12]
	adrp	x9, STBI__SCAN_type
	ldr	w9, [x9, :lo12:STBI__SCAN_type]
	subs	w8, w8, w9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_4:
	ldr	x0, [sp, #16]
	bl	stbi__get_marker
	str	w0, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
	ldr	w0, [sp, #8]
	bl	stbi__SOF
	cbnz	w0, .LBB0_14
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #8]
	bl	stbi__process_marker
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	stur	wzr, [x29, #-4]
	b	.LBB0_17
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x0, [sp, #16]
	bl	stbi__get_marker
	str	w0, [sp, #8]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	adrp	x9, STBI__MARKER_none
	ldr	w9, [x9, :lo12:STBI__MARKER_none]
	subs	w8, w8, w9
	b.ne	.LBB0_13
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	bl	stbi__at_eof
	cbz	x0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_17
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	x0, [sp, #16]
	bl	stbi__get_marker
	str	w0, [sp, #8]
	b	.LBB0_9
.LBB0_13:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_5
.LBB0_14:
	ldr	w0, [sp, #8]
	bl	stbi__SOF_progressive
	ldr	x8, [sp, #16]
	str	w0, [x8, #8]
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	stbi__process_frame_header
	cbnz	w0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	stur	wzr, [x29, #-4]
	b	.LBB0_17
.LBB0_16:
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	stbi__decode_jpeg_header, .Lfunc_end0-stbi__decode_jpeg_header
                                        // -- End function
	.type	STBI__MARKER_none,@object       // @STBI__MARKER_none
	.bss
	.globl	STBI__MARKER_none
	.p2align	2
STBI__MARKER_none:
	.word	0                               // 0x0
	.size	STBI__MARKER_none, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"no SOI"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt JPEG"
	.size	.L.str.1, 13
	.type	STBI__SCAN_type,@object         // @STBI__SCAN_type
	.bss
	.globl	STBI__SCAN_type
	.p2align	2
STBI__SCAN_type:
	.word	0                               // 0x0
	.size	STBI__SCAN_type, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"no SOF"
	.size	.L.str.2, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__decode_jpeg_header
	.addrsig_sym stbi__get_marker
	.addrsig_sym stbi__SOI
	.addrsig_sym stbi__err
	.addrsig_sym stbi__SOF
	.addrsig_sym stbi__process_marker
	.addrsig_sym stbi__at_eof
	.addrsig_sym stbi__SOF_progressive
	.addrsig_sym stbi__process_frame_header
	.addrsig_sym STBI__MARKER_none
	.addrsig_sym STBI__SCAN_type