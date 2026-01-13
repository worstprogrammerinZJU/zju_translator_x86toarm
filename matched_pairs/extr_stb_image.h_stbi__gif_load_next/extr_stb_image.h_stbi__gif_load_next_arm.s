	.text
	.p2align	2                               // -- Begin function stbi__gif_load_next
	.type	stbi__gif_load_next,@function
stbi__gif_load_next:                    // @stbi__gif_load_next
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	w3, [x29, #-36]
	stur	x4, [x29, #-48]
	stur	wzr, [x29, #-56]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	mov	w3, wzr
	bl	stbi__gif_header
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_78
.LBB0_3:
	ldur	x8, [x29, #-24]
	ldr	w9, [x8, #8]
	mov	w8, #4
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w0, w8, w9
	bl	stbi__malloc
	ldr	w8, [sp, #52]                   // 4-byte Folded Reload
	ldur	x9, [x29, #-24]
	str	x0, [x9]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w0, w8, w9
	bl	stbi__malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w0, w8, w9
	bl	stbi__malloc
	ldur	x8, [x29, #-24]
	str	x0, [x8, #24]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_78
.LBB0_5:
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	ldur	x8, [x29, #-24]
	ldr	w9, [x8, #8]
	mov	w8, #4
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w2, w8, w9
	mov	w1, wzr
	str	w1, [sp, #48]                   // 4-byte Folded Spill
	bl	memset
	ldr	w8, [sp, #44]                   // 4-byte Folded Reload
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	ldur	x9, [x29, #-24]
	ldr	x0, [x9, #16]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w2, w8, w9
	bl	memset
	ldr	w1, [sp, #48]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w2, w8, w9
	bl	memset
	mov	w8, #1
	stur	w8, [x29, #-56]
	b	.LBB0_28
.LBB0_6:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #32]
	and	w8, w8, #0x1c
	asr	w8, w8, #2
	stur	w8, [x29, #-52]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	stur	w8, [x29, #-64]
	ldur	w8, [x29, #-52]
	subs	w8, w8, #3
	b.ne	.LBB0_9
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-48]
	cbnz	x8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	mov	w8, #2
	stur	w8, [x29, #-52]
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-52]
	subs	w8, w8, #3
	b.ne	.LBB0_17
	b	.LBB0_10
.LBB0_10:
	stur	wzr, [x29, #-60]
	b	.LBB0_11
.LBB0_11:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-64]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-60]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldur	w9, [x29, #-60]
	lsl	w9, w9, #2
	add	x0, x8, w9, sxtw #3
	ldur	x8, [x29, #-48]
	ldur	w9, [x29, #-60]
	lsl	w9, w9, #2
	add	x1, x8, w9, sxtw #3
	mov	w2, #4
	bl	memcpy
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_11 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_11 Depth=1
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_11
.LBB0_16:
	b	.LBB0_27
.LBB0_17:
	ldur	w8, [x29, #-52]
	subs	w8, w8, #2
	b.ne	.LBB0_25
	b	.LBB0_18
.LBB0_18:
	stur	wzr, [x29, #-60]
	b	.LBB0_19
.LBB0_19:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-64]
	subs	w8, w8, w9
	b.ge	.LBB0_24
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-60]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_22
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_19 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldur	w9, [x29, #-60]
	lsl	w9, w9, #2
	add	x0, x8, w9, sxtw #3
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	ldur	w9, [x29, #-60]
	lsl	w9, w9, #2
	add	x1, x8, w9, sxtw #3
	mov	w2, #4
	bl	memcpy
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_19 Depth=1
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_19 Depth=1
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_19
.LBB0_24:
	b	.LBB0_26
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_27
.LBB0_27:
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #16]
	ldur	x8, [x29, #-24]
	ldr	x1, [x8]
	ldur	x8, [x29, #-24]
	ldr	w9, [x8, #8]
	mov	w8, #4
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w2, w8, w9
	bl	memcpy
	b	.LBB0_28
.LBB0_28:
	ldur	x8, [x29, #-24]
	ldr	x0, [x8, #24]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w2, w8, w9
	mov	w1, wzr
	bl	memset
	b	.LBB0_29
.LBB0_29:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_72 Depth 2
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	stur	w8, [x29, #-68]
	ldur	w8, [x29, #-68]
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	subs	w8, w8, #33
	b.eq	.LBB0_59
	b	.LBB0_30
.LBB0_30:
	ldr	w8, [sp, #40]                   // 4-byte Folded Reload
	subs	w8, w8, #44
	b.eq	.LBB0_32
	b	.LBB0_31
.LBB0_31:
	ldr	w8, [sp, #40]                   // 4-byte Folded Reload
	subs	w8, w8, #59
	b.eq	.LBB0_75
	b	.LBB0_76
.LBB0_32:
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	stur	w0, [x29, #-72]
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	stur	w0, [x29, #-76]
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	str	w0, [sp, #80]
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	str	w0, [sp, #76]
	ldur	w8, [x29, #-72]
	ldr	w9, [sp, #80]
	add	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.gt	.LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	w8, [x29, #-76]
	ldr	w9, [sp, #76]
	add	w8, w8, w9
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.le	.LBB0_35
	b	.LBB0_34
.LBB0_34:
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_78
.LBB0_35:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	lsl	w8, w8, #2
	ldur	x9, [x29, #-24]
	str	w8, [x9, #36]
	ldur	w8, [x29, #-72]
	lsl	w8, w8, #2
	ldur	x9, [x29, #-24]
	str	w8, [x9, #40]
	ldur	w8, [x29, #-76]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #36]
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	str	w8, [x9, #44]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #40]
	ldr	w9, [sp, #80]
	add	w8, w8, w9, lsl #2
	ldur	x9, [x29, #-24]
	str	w8, [x9, #48]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #44]
	ldr	w9, [sp, #76]
	ldur	x10, [x29, #-24]
	ldr	w10, [x10, #36]
	mul	w9, w9, w10
	add	w8, w8, w9
	ldur	x9, [x29, #-24]
	str	w8, [x9, #52]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #40]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #56]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #44]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #60]
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	ldur	x9, [x29, #-24]
	str	w8, [x9, #64]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #64]
	tbz	w8, #6, .LBB0_37
	b	.LBB0_36
.LBB0_36:
	ldur	x8, [x29, #-24]
	ldr	w9, [x8, #36]
	mov	w8, #8
	mul	w8, w8, w9
	ldur	x9, [x29, #-24]
	str	w8, [x9, #68]
	ldur	x9, [x29, #-24]
	mov	w8, #3
	str	w8, [x9, #72]
	b	.LBB0_38
.LBB0_37:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #36]
	ldur	x9, [x29, #-24]
	str	w8, [x9, #68]
	ldur	x8, [x29, #-24]
	str	wzr, [x8, #72]
	b	.LBB0_38
.LBB0_38:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #64]
	tbz	w8, #7, .LBB0_43
	b	.LBB0_39
.LBB0_39:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #120]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #64]
	and	w9, w8, #0x7
	mov	w8, #2
	lsl	w8, w8, w9
	str	w8, [sp, #36]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #32]
	tbz	w8, #0, .LBB0_41
	b	.LBB0_40
.LBB0_40:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #76]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_42
.LBB0_41:
	mov	w8, #-1
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	b	.LBB0_42
.LBB0_42:
	ldr	w2, [sp, #36]                   // 4-byte Folded Reload
	ldr	x1, [sp, #24]                   // 8-byte Folded Reload
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	w3, [sp, #12]                   // 4-byte Folded Reload
	bl	stbi__gif_parse_colortable
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #120]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #80]
	b	.LBB0_47
.LBB0_43:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #88]
	tbz	w8, #7, .LBB0_45
	b	.LBB0_44
.LBB0_44:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #96]
	ldur	x9, [x29, #-24]
	str	x8, [x9, #80]
	b	.LBB0_46
.LBB0_45:
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_78
.LBB0_46:
	b	.LBB0_47
.LBB0_47:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	stbi__process_gif_raster
	str	x0, [sp, #64]
	ldr	x8, [sp, #64]
	cbnz	x8, .LBB0_49
	b	.LBB0_48
.LBB0_48:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_78
.LBB0_49:
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	stur	w8, [x29, #-64]
	ldur	w8, [x29, #-56]
	cbz	w8, .LBB0_58
	b	.LBB0_50
.LBB0_50:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #104]
	subs	x8, x8, #0
	b.ls	.LBB0_58
	b	.LBB0_51
.LBB0_51:
	stur	wzr, [x29, #-60]
	b	.LBB0_52
.LBB0_52:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-64]
	subs	w8, w8, w9
	b.ge	.LBB0_57
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_52 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-60]
	ldr	x8, [x8, x9, lsl #3]
	cbnz	x8, .LBB0_55
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_52 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #96]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #104]
	ldr	x9, [x8, x9, lsl #3]
	mov	w8, #255
	str	w8, [x9, #12]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldur	w9, [x29, #-60]
	lsl	w9, w9, #2
	add	x0, x8, w9, sxtw #3
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #96]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #104]
	add	x1, x8, x9, lsl #3
	mov	w2, #4
	bl	memcpy
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_52 Depth=1
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_52 Depth=1
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_52
.LBB0_57:
	b	.LBB0_58
.LBB0_58:
	ldr	x8, [sp, #64]
	stur	x8, [x29, #-8]
	b	.LBB0_78
.LBB0_59:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #56]
	ldr	w8, [sp, #56]
	subs	w8, w8, #249
	b.ne	.LBB0_71
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #60]
	ldr	w8, [sp, #60]
	subs	w8, w8, #4
	b.ne	.LBB0_69
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	ldur	x9, [x29, #-24]
	str	w8, [x9, #32]
	ldur	x0, [x29, #-16]
	bl	stbi__get16le
	mov	w8, #10
	mul	w8, w8, w0
	ldur	x9, [x29, #-24]
	str	w8, [x9, #112]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #76]
	tbnz	w8, #31, .LBB0_63
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #96]
	ldur	x9, [x29, #-24]
	ldrsw	x9, [x9, #76]
	ldr	x9, [x8, x9, lsl #3]
	mov	w8, #255
	str	w8, [x9, #12]
	b	.LBB0_63
.LBB0_63:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #32]
	tbz	w8, #0, .LBB0_67
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	ldur	x9, [x29, #-24]
	str	w8, [x9, #76]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #76]
	tbnz	w8, #31, .LBB0_66
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #96]
	ldur	x9, [x29, #-24]
	ldrsw	x9, [x9, #76]
	ldr	x8, [x8, x9, lsl #3]
	str	wzr, [x8, #12]
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_29 Depth=1
	b	.LBB0_68
.LBB0_67:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x0, [x29, #-16]
	mov	w1, #1
	bl	stbi__skip
	ldur	x9, [x29, #-24]
	mov	w8, #-1
	str	w8, [x9, #76]
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_29 Depth=1
	b	.LBB0_70
.LBB0_69:                               //   in Loop: Header=BB0_29 Depth=1
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #60]
	bl	stbi__skip
	b	.LBB0_77
.LBB0_70:                               //   in Loop: Header=BB0_29 Depth=1
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_29 Depth=1
	b	.LBB0_72
.LBB0_72:                               //   Parent Loop BB0_29 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x0, [x29, #-16]
	bl	stbi__get8
	mov	w8, w0
	str	w8, [sp, #60]
	cbz	w8, .LBB0_74
	b	.LBB0_73
.LBB0_73:                               //   in Loop: Header=BB0_72 Depth=2
	ldur	x0, [x29, #-16]
	ldr	w1, [sp, #60]
	bl	stbi__skip
	b	.LBB0_72
.LBB0_74:                               //   in Loop: Header=BB0_29 Depth=1
	b	.LBB0_77
.LBB0_75:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_78
.LBB0_76:
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_78
.LBB0_77:                               //   in Loop: Header=BB0_29 Depth=1
	b	.LBB0_29
.LBB0_78:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	stbi__gif_load_next, .Lfunc_end0-stbi__gif_load_next
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"outofmem"
	.size	.L.str, 9
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Out of memory"
	.size	.L.str.1, 14
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"bad Image Descriptor"
	.size	.L.str.2, 21
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Corrupt GIF"
	.size	.L.str.3, 12
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"missing color table"
	.size	.L.str.4, 20
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"unknown code"
	.size	.L.str.5, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbi__gif_load_next
	.addrsig_sym stbi__gif_header
	.addrsig_sym stbi__malloc
	.addrsig_sym stbi__errpuc
	.addrsig_sym memset
	.addrsig_sym memcpy
	.addrsig_sym stbi__get8
	.addrsig_sym stbi__get16le
	.addrsig_sym stbi__gif_parse_colortable
	.addrsig_sym stbi__process_gif_raster
	.addrsig_sym stbi__skip