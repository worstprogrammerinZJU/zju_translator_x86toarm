	.text
	.p2align	2                               // -- Begin function stbi__bmp_parse_header
	.type	stbi__bmp_parse_header,@function
stbi__bmp_parse_header:                 // @stbi__bmp_parse_header
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #66
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	and	w8, w0, #0xff
	subs	w8, w8, #77
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_50
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldr	x8, [sp, #24]
	str	x0, [x8, #32]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	str	w8, [sp, #20]
	ldr	x9, [sp, #24]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	str	wzr, [x8, #16]
	ldr	x8, [sp, #24]
	str	wzr, [x8, #12]
	ldr	x8, [sp, #24]
	str	wzr, [x8, #8]
	ldr	x8, [sp, #24]
	str	wzr, [x8, #4]
	ldr	w8, [sp, #20]
	subs	w8, w8, #12
	b.eq	.LBB0_9
	b	.LBB0_4
.LBB0_4:
	ldr	w8, [sp, #20]
	subs	w8, w8, #40
	b.eq	.LBB0_9
	b	.LBB0_5
.LBB0_5:
	ldr	w8, [sp, #20]
	subs	w8, w8, #56
	b.eq	.LBB0_9
	b	.LBB0_6
.LBB0_6:
	ldr	w8, [sp, #20]
	subs	w8, w8, #108
	b.eq	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldr	w8, [sp, #20]
	subs	w8, w8, #124
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_50
.LBB0_9:
	ldr	w8, [sp, #20]
	subs	w8, w8, #12
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	ldur	x8, [x29, #-16]
	str	w0, [x8]
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	ldur	x8, [x29, #-16]
	str	w0, [x8, #4]
	b	.LBB0_12
.LBB0_11:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldur	x9, [x29, #-16]
	str	w8, [x9, #4]
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	subs	w8, w0, #1
	b.eq	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	x0, x1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_50
.LBB0_14:
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	ldr	x8, [sp, #24]
	str	w0, [x8, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #12
	b.eq	.LBB0_49
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, #1
	b.eq	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldr	w8, [sp, #16]
	subs	w8, w8, #2
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_50
.LBB0_18:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldr	w8, [sp, #20]
	subs	w8, w8, #40
	b.eq	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	w8, [sp, #20]
	subs	w8, w8, #56
	b.ne	.LBB0_38
	b	.LBB0_20
.LBB0_20:
	ldr	w8, [sp, #20]
	subs	w8, w8, #56
	b.ne	.LBB0_22
	b	.LBB0_21
.LBB0_21:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	b	.LBB0_22
.LBB0_22:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #20]
	subs	w8, w8, #16
	b.eq	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #20]
	subs	w8, w8, #32
	b.ne	.LBB0_37
	b	.LBB0_24
.LBB0_24:
	ldr	w8, [sp, #16]
	cbnz	w8, .LBB0_29
	b	.LBB0_25
.LBB0_25:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #20]
	subs	w8, w8, #32
	b.ne	.LBB0_27
	b	.LBB0_26
.LBB0_26:
	ldr	x9, [sp, #24]
	mov	w8, #16711680
	str	w8, [x9, #4]
	ldr	x9, [sp, #24]
	mov	w8, #65280
	str	w8, [x9, #8]
	ldr	x9, [sp, #24]
	mov	w8, #255
	str	w8, [x9, #12]
	ldr	x9, [sp, #24]
	mov	w8, #-16777216
	str	w8, [x9, #16]
	ldr	x8, [sp, #24]
	str	xzr, [x8, #24]
	b	.LBB0_28
.LBB0_27:
	ldr	x9, [sp, #24]
	mov	w8, #31744
	str	w8, [x9, #4]
	ldr	x9, [sp, #24]
	mov	w8, #992
	str	w8, [x9, #8]
	ldr	x9, [sp, #24]
	mov	w8, #31
	str	w8, [x9, #12]
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_36
.LBB0_29:
	ldr	w8, [sp, #16]
	subs	w8, w8, #3
	b.ne	.LBB0_34
	b	.LBB0_30
.LBB0_30:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldr	x9, [sp, #24]
	str	w8, [x9, #4]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldr	x9, [sp, #24]
	str	w8, [x9, #12]
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ne	.LBB0_33
	b	.LBB0_31
.LBB0_31:
	ldr	x8, [sp, #24]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #24]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ne	.LBB0_33
	b	.LBB0_32
.LBB0_32:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	x0, x1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_50
.LBB0_33:
	b	.LBB0_35
.LBB0_34:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	x0, x1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_50
.LBB0_35:
	b	.LBB0_36
.LBB0_36:
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_48
.LBB0_38:
	ldr	w8, [sp, #20]
	subs	w8, w8, #108
	b.eq	.LBB0_41
	b	.LBB0_39
.LBB0_39:
	ldr	w8, [sp, #20]
	subs	w8, w8, #124
	b.eq	.LBB0_41
	b	.LBB0_40
.LBB0_40:
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	mov	x0, x1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_50
.LBB0_41:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldr	x9, [sp, #24]
	str	w8, [x9, #4]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldr	x9, [sp, #24]
	str	w8, [x9, #8]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldr	x9, [sp, #24]
	str	w8, [x9, #12]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	mov	w8, w0
	ldr	x9, [sp, #24]
	str	w8, [x9, #16]
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	str	wzr, [sp, #12]
	b	.LBB0_42
.LBB0_42:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #12
	b.ge	.LBB0_45
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_42 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	b	.LBB0_44
.LBB0_44:                               //   in Loop: Header=BB0_42 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_42
.LBB0_45:
	ldr	w8, [sp, #20]
	subs	w8, w8, #124
	b.ne	.LBB0_47
	b	.LBB0_46
.LBB0_46:
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	ldur	x0, [x29, #-16]
	bl	stbi__get32le
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_48
.LBB0_48:
	b	.LBB0_49
.LBB0_49:
	mov	x8, #1
	stur	x8, [x29, #-8]
	b	.LBB0_50
.LBB0_50:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	stbi__bmp_parse_header, .Lfunc_end0-stbi__bmp_parse_header
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"not BMP"
	.size	.L.str, 8
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt BMP"
	.size	.L.str.1, 12
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"unknown BMP"
	.size	.L.str.2, 12
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"BMP type not supported: unknown"
	.size	.L.str.3, 32
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"bad BMP"
	.size	.L.str.4, 8
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"BMP RLE"
	.size	.L.str.5, 8
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"BMP type not supported: RLE"
	.size	.L.str.6, 28
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__bmp_parse_header
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__get32le
	.addrsig_sym stbi__get16le