	.text
	.p2align	2                               // -- Begin function stbi__process_marker
	.type	stbi__process_marker,@function
stbi__process_marker:                   // @stbi__process_marker
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	sub	x8, x29, #16
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8]
	stur	w1, [x29, #-20]
	ldur	w8, [x29, #-20]
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	subs	w8, w8, #128
	b.eq	.LBB0_4
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w8, #196
	b.eq	.LBB0_24
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w8, #219
	b.eq	.LBB0_8
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	subs	w8, w8, #221
	b.eq	.LBB0_5
	b	.LBB0_48
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	subs	w8, w0, #4
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_7:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	str	w0, [x8]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_80
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	subs	w8, w0, #2
	stur	w8, [x29, #-24]
	b	.LBB0_9
.LBB0_9:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_16 Depth 2
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	b.le	.LBB0_23
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	and	w8, w0, #0xff
	stur	w8, [x29, #-28]
	ldur	w8, [x29, #-28]
	asr	w8, w8, #4
	stur	w8, [x29, #-32]
	ldur	w8, [x29, #-32]
	subs	w8, w8, #0
	cset	w8, ne
	and	w8, w8, #0x1
	stur	w8, [x29, #-36]
	ldur	w8, [x29, #-28]
	and	w8, w8, #0xf
	stur	w8, [x29, #-40]
	ldur	w8, [x29, #-32]
	cbz	w8, .LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-32]
	subs	w8, w8, #1
	b.eq	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-40]
	subs	w8, w8, #3
	b.le	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_15:                               //   in Loop: Header=BB0_9 Depth=1
	stur	wzr, [x29, #-44]
	b	.LBB0_16
.LBB0_16:                               //   Parent Loop BB0_9 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-44]
	subs	w8, w8, #64
	b.ge	.LBB0_22
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-36]
	cbz	w8, .LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	str	w0, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_20
.LBB0_19:                               //   in Loop: Header=BB0_16 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	and	w8, w0, #0xff
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_16 Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	ldr	x9, [x9]
	ldr	x9, [x9, #40]
	ldursw	x10, [x29, #-40]
	ldr	x9, [x9, x10, lsl #3]
	adrp	x10, stbi__jpeg_dezigzag
	ldr	x10, [x10, :lo12:stbi__jpeg_dezigzag]
	ldursw	x11, [x29, #-44]
	ldr	x10, [x10, x11, lsl #3]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_16 Depth=2
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_16
.LBB0_22:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w10, [x29, #-36]
	mov	w9, #65
	mov	w8, #129
	subs	w10, w10, #0
	csel	w9, w8, w9, ne
	ldur	w8, [x29, #-24]
	subs	w8, w8, w9
	stur	w8, [x29, #-24]
	b	.LBB0_9
.LBB0_23:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_80
.LBB0_24:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	subs	w8, w0, #2
	stur	w8, [x29, #-24]
	b	.LBB0_25
.LBB0_25:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_30 Depth 2
                                        //     Child Loop BB0_41 Depth 2
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	b.le	.LBB0_47
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	wzr, [sp, #48]
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	and	w8, w0, #0xff
	str	w8, [sp, #44]
	ldr	w8, [sp, #44]
	asr	w8, w8, #4
	str	w8, [sp, #40]
	ldr	w8, [sp, #44]
	and	w8, w8, #0xf
	str	w8, [sp, #36]
	ldr	w8, [sp, #40]
	subs	w8, w8, #1
	b.gt	.LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	w8, [sp, #36]
	subs	w8, w8, #3
	b.le	.LBB0_29
	b	.LBB0_28
.LBB0_28:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_29:                               //   in Loop: Header=BB0_25 Depth=1
	str	wzr, [sp, #52]
	b	.LBB0_30
.LBB0_30:                               //   Parent Loop BB0_25 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #52]
	subs	w8, w8, #16
	b.ge	.LBB0_33
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_30 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	and	w9, w0, #0xff
	ldrsw	x10, [sp, #52]
	add	x8, sp, #56
	str	w9, [x8, x10, lsl #2]
	ldrsw	x9, [sp, #52]
	ldr	w9, [x8, x9, lsl #2]
	ldr	w8, [sp, #48]
	add	w8, w8, w9
	str	w8, [sp, #48]
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_30 Depth=2
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_30
.LBB0_33:                               //   in Loop: Header=BB0_25 Depth=1
	ldur	w8, [x29, #-24]
	subs	w8, w8, #17
	stur	w8, [x29, #-24]
	ldr	w8, [sp, #40]
	cbnz	w8, .LBB0_37
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x8, [x8, #32]
	ldrsw	x9, [sp, #36]
	add	x8, x8, x9, lsl #3
	mov	w0, w8
	add	x1, sp, #56
	bl	stbi__build_huffman
	cbnz	w0, .LBB0_36
	b	.LBB0_35
.LBB0_35:
	stur	wzr, [x29, #-4]
	b	.LBB0_80
.LBB0_36:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x8, [x8, #32]
	ldrsw	x9, [sp, #36]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-56]
	b	.LBB0_40
.LBB0_37:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #36]
	add	x8, x8, x9, lsl #3
	mov	w0, w8
	add	x1, sp, #56
	bl	stbi__build_huffman
	cbnz	w0, .LBB0_39
	b	.LBB0_38
.LBB0_38:
	stur	wzr, [x29, #-4]
	b	.LBB0_80
.LBB0_39:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #36]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-56]
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_25 Depth=1
	str	wzr, [sp, #52]
	b	.LBB0_41
.LBB0_41:                               //   Parent Loop BB0_25 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	b.ge	.LBB0_44
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_41 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	ldur	x8, [x29, #-56]
	ldrsw	x9, [sp, #52]
	strb	w0, [x8, x9]
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_41 Depth=2
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_41
.LBB0_44:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	w8, [sp, #40]
	cbz	w8, .LBB0_46
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x9, [x9, #24]
	ldrsw	x10, [sp, #36]
	ldr	w0, [x9, x10, lsl #2]
	ldr	x8, [x8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #36]
	add	x8, x8, x9, lsl #3
	mov	w1, w8
	bl	stbi__build_fast_ac
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_25 Depth=1
	ldr	w9, [sp, #48]
	ldur	w8, [x29, #-24]
	subs	w8, w8, w9
	stur	w8, [x29, #-24]
	b	.LBB0_25
.LBB0_47:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-4]
	b	.LBB0_80
.LBB0_48:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #224
	b.lt	.LBB0_50
	b	.LBB0_49
.LBB0_49:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #239
	b.le	.LBB0_51
	b	.LBB0_50
.LBB0_50:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #254
	b.ne	.LBB0_79
	b	.LBB0_51
.LBB0_51:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	stur	w0, [x29, #-24]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #2
	b.ge	.LBB0_55
	b	.LBB0_52
.LBB0_52:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #254
	b.ne	.LBB0_54
	b	.LBB0_53
.LBB0_53:
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_54:
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_55:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #2
	stur	w8, [x29, #-24]
	ldur	w8, [x29, #-20]
	subs	w8, w8, #224
	b.ne	.LBB0_66
	b	.LBB0_56
.LBB0_56:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #5
	b.lt	.LBB0_66
	b	.LBB0_57
.LBB0_57:
	mov	w8, #1
	str	w8, [sp, #32]
	str	wzr, [sp, #28]
	b	.LBB0_58
.LBB0_58:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #5
	b.ge	.LBB0_63
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_58 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	ldrsw	x9, [sp, #28]
	adrp	x8, stbi__process_marker.tag
	add	x8, x8, :lo12:stbi__process_marker.tag
	ldrb	w8, [x8, x9]
	subs	w8, w8, w0, uxtb
	b.eq	.LBB0_61
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_58 Depth=1
	str	wzr, [sp, #32]
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_58 Depth=1
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_58 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_58
.LBB0_63:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #5
	stur	w8, [x29, #-24]
	ldr	w8, [sp, #32]
	cbz	w8, .LBB0_65
	b	.LBB0_64
.LBB0_64:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8]
	mov	w8, #1
	str	w8, [x9, #4]
	b	.LBB0_65
.LBB0_65:
	b	.LBB0_78
.LBB0_66:
	ldur	w8, [x29, #-20]
	subs	w8, w8, #238
	b.ne	.LBB0_77
	b	.LBB0_67
.LBB0_67:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #12
	b.lt	.LBB0_77
	b	.LBB0_68
.LBB0_68:
	mov	w8, #1
	str	w8, [sp, #24]
	str	wzr, [sp, #20]
	b	.LBB0_69
.LBB0_69:                               // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #6
	b.ge	.LBB0_74
	b	.LBB0_70
.LBB0_70:                               //   in Loop: Header=BB0_69 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	ldrsw	x9, [sp, #20]
	adrp	x8, stbi__process_marker.tag.8
	add	x8, x8, :lo12:stbi__process_marker.tag.8
	ldrb	w8, [x8, x9]
	subs	w8, w8, w0, uxtb
	b.eq	.LBB0_72
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_69 Depth=1
	str	wzr, [sp, #24]
	b	.LBB0_72
.LBB0_72:                               //   in Loop: Header=BB0_69 Depth=1
	b	.LBB0_73
.LBB0_73:                               //   in Loop: Header=BB0_69 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_69
.LBB0_74:
	ldur	w8, [x29, #-24]
	subs	w8, w8, #6
	stur	w8, [x29, #-24]
	ldr	w8, [sp, #24]
	cbz	w8, .LBB0_76
	b	.LBB0_75
.LBB0_75:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get16be
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	bl	stbi__get8
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	strb	w0, [x8, #8]
	ldur	w8, [x29, #-24]
	subs	w8, w8, #6
	stur	w8, [x29, #-24]
	b	.LBB0_76
.LBB0_76:
	b	.LBB0_77
.LBB0_77:
	b	.LBB0_78
.LBB0_78:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w0, [x8, #12]
	ldur	w1, [x29, #-24]
	bl	stbi__skip
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_80
.LBB0_79:
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__err
	stur	w0, [x29, #-4]
	b	.LBB0_80
.LBB0_80:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	stbi__process_marker, .Lfunc_end0-stbi__process_marker
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"expected marker"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Corrupt JPEG"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"bad DRI len"
	.size	.L.str.2, 12
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"bad DQT type"
	.size	.L.str.3, 13
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"bad DQT table"
	.size	.L.str.4, 14
	.type	stbi__jpeg_dezigzag,@object     // @stbi__jpeg_dezigzag
	.bss
	.globl	stbi__jpeg_dezigzag
	.p2align	3
stbi__jpeg_dezigzag:
	.xword	0
	.size	stbi__jpeg_dezigzag, 8
	.type	.L.str.5,@object                // @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"bad DHT header"
	.size	.L.str.5, 15
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"bad COM len"
	.size	.L.str.6, 12
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"bad APP len"
	.size	.L.str.7, 12
	.type	stbi__process_marker.tag,@object // @stbi__process_marker.tag
	.section	.rodata,"a",@progbits
stbi__process_marker.tag:
	.asciz	"JFIF"
	.size	stbi__process_marker.tag, 5
	.type	stbi__process_marker.tag.8,@object // @stbi__process_marker.tag.8
stbi__process_marker.tag.8:
	.asciz	"Adobe"
	.size	stbi__process_marker.tag.8, 6
	.type	.L.str.9,@object                // @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"unknown marker"
	.size	.L.str.9, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__process_marker
	.addrsig_sym stbi__err
	.addrsig_sym stbi__get16be
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__build_huffman
	.addrsig_sym stbi__build_fast_ac
	.addrsig_sym stbi__skip
	.addrsig_sym stbi__jpeg_dezigzag
	.addrsig_sym stbi__process_marker.tag
	.addrsig_sym stbi__process_marker.tag.8