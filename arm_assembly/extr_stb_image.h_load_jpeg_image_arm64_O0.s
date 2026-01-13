	.text
	.p2align	2                               // -- Begin function load_jpeg_image
	.type	load_jpeg_image,@function
load_jpeg_image:                        // @load_jpeg_image
// %bb.0:
	sub	sp, sp, #448
	stp	x29, x30, [sp, #416]            // 16-byte Folded Spill
	str	x28, [sp, #432]                 // 8-byte Folded Spill
	add	x29, sp, #416
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	w4, [x29, #-44]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	str	wzr, [x8]
	ldur	w8, [x29, #-44]
	tbnz	w8, #31, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-44]
	subs	w8, w8, #4
	b.le	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_139
.LBB0_3:
	ldur	x0, [x29, #-16]
	bl	stbi__decode_jpeg_image
	cbnz	w0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	stbi__cleanup_jpeg
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_139
.LBB0_5:
	ldur	w8, [x29, #-44]
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w8, [x29, #-44]
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w9, [x8]
	mov	w8, #3
	subs	w9, w9, #3
	csinc	w8, w8, wzr, ge
	str	w8, [sp, #68]                   // 4-byte Folded Spill
	b	.LBB0_8
.LBB0_8:
	ldr	w8, [sp, #68]                   // 4-byte Folded Reload
	stur	w8, [x29, #-48]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w9, [x8]
	mov	w8, #0
	subs	w9, w9, #3
	str	w8, [sp, #64]                   // 4-byte Folded Spill
	b.ne	.LBB0_14
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-16]
	ldr	w9, [x8]
	mov	w8, #1
	subs	w9, w9, #3
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	b.eq	.LBB0_13
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	mov	w9, #0
	str	w9, [sp, #56]                   // 4-byte Folded Spill
	cbnz	x8, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #56]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #56]                   // 4-byte Folded Spill
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #56]                   // 4-byte Folded Reload
	str	w8, [sp, #60]                   // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:
	ldr	w8, [sp, #60]                   // 4-byte Folded Reload
	str	w8, [sp, #64]                   // 4-byte Folded Spill
	b	.LBB0_14
.LBB0_14:
	ldr	w8, [sp, #64]                   // 4-byte Folded Reload
	and	w8, w8, #0x1
	stur	w8, [x29, #-56]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	subs	w8, w8, #3
	b.ne	.LBB0_18
	b	.LBB0_15
.LBB0_15:
	ldur	w8, [x29, #-48]
	subs	w8, w8, #3
	b.ge	.LBB0_18
	b	.LBB0_16
.LBB0_16:
	ldur	w8, [x29, #-56]
	cbnz	w8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_19
.LBB0_18:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	stur	w8, [x29, #-52]
	b	.LBB0_19
.LBB0_19:
	stur	wzr, [x29, #-60]
	b	.LBB0_20
.LBB0_20:                               // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_41
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_20 Depth=1
	ldursw	x8, [x29, #-60]
	mov	x9, #40
	str	x9, [sp, #48]                   // 8-byte Folded Spill
	mul	x9, x8, x9
	add	x8, sp, #144
	add	x8, x8, x9
	str	x8, [sp, #136]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8, #4]
	add	w0, w8, #3
	bl	stbi__malloc
	ldr	x10, [sp, #48]                  // 8-byte Folded Reload
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-60]
	mul	x9, x9, x10
	str	x0, [x8, x9]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-60]
	mul	x9, x9, x10
	ldr	x8, [x8, x9]
	cbnz	x8, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldur	x0, [x29, #-16]
	bl	stbi__cleanup_jpeg
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_139
.LBB0_23:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #48]
	ldursw	x11, [x29, #-60]
	mov	x10, #40
	mul	x11, x11, x10
	add	x9, x9, x11
	ldr	w9, [x9, #8]
	sdiv	w8, w8, w9
	ldr	x9, [sp, #136]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #20]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #48]
	ldursw	x11, [x29, #-60]
	mul	x11, x11, x10
	add	x9, x9, x11
	ldr	w9, [x9, #12]
	sdiv	w8, w8, w9
	ldr	x9, [sp, #136]
	str	w8, [x9, #4]
	ldr	x8, [sp, #136]
	ldr	w8, [x8, #4]
	asr	w8, w8, #1
	ldr	x9, [sp, #136]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8, #4]
	ldr	x9, [sp, #136]
	ldr	w9, [x9]
	add	w8, w8, w9
	subs	w8, w8, #1
	ldr	x9, [sp, #136]
	ldr	w9, [x9]
	sdiv	w8, w8, w9
	ldr	x9, [sp, #136]
	str	w8, [x9, #12]
	ldr	x8, [sp, #136]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-60]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #32]
	ldr	x9, [sp, #136]
	str	w8, [x9, #32]
	ldr	x9, [sp, #136]
	str	w8, [x9, #36]
	ldr	x8, [sp, #136]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.ne	.LBB0_26
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #136]
	ldr	w8, [x8, #4]
	subs	w8, w8, #1
	b.ne	.LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x9, [sp, #136]
	adrp	x8, :got:resample_row_1
	ldr	x8, [x8, :got_lo12:resample_row_1]
	str	x8, [x9, #24]
	b	.LBB0_39
.LBB0_26:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #136]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.ne	.LBB0_29
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #136]
	ldr	w8, [x8, #4]
	subs	w8, w8, #2
	b.ne	.LBB0_29
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x9, [sp, #136]
	adrp	x8, :got:stbi__resample_row_v_2
	ldr	x8, [x8, :got_lo12:stbi__resample_row_v_2]
	str	x8, [x9, #24]
	b	.LBB0_38
.LBB0_29:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #136]
	ldr	w8, [x8]
	subs	w8, w8, #2
	b.ne	.LBB0_32
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #136]
	ldr	w8, [x8, #4]
	subs	w8, w8, #1
	b.ne	.LBB0_32
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x9, [sp, #136]
	adrp	x8, :got:stbi__resample_row_h_2
	ldr	x8, [x8, :got_lo12:stbi__resample_row_h_2]
	str	x8, [x9, #24]
	b	.LBB0_37
.LBB0_32:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #136]
	ldr	w8, [x8]
	subs	w8, w8, #2
	b.ne	.LBB0_35
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x8, [sp, #136]
	ldr	w8, [x8, #4]
	subs	w8, w8, #2
	b.ne	.LBB0_35
	b	.LBB0_34
.LBB0_34:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #136]
	str	x8, [x9, #24]
	b	.LBB0_36
.LBB0_35:                               //   in Loop: Header=BB0_20 Depth=1
	ldr	x9, [sp, #136]
	adrp	x8, :got:stbi__resample_row_generic
	ldr	x8, [x8, :got_lo12:stbi__resample_row_generic]
	str	x8, [x9, #24]
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_39
.LBB0_39:                               //   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_20 Depth=1
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_20
.LBB0_41:
	ldur	w0, [x29, #-48]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w1, [x8, #4]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w2, [x8, #8]
	mov	w3, #1
	bl	stbi__malloc_mad3
	stur	x0, [x29, #-80]
	ldur	x8, [x29, #-80]
	cbnz	x8, .LBB0_43
	b	.LBB0_42
.LBB0_42:
	ldur	x0, [x29, #-16]
	bl	stbi__cleanup_jpeg
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	stbi__errpuc
	stur	x0, [x29, #-8]
	b	.LBB0_139
.LBB0_43:
	stur	wzr, [x29, #-68]
	b	.LBB0_44
.LBB0_44:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_46 Depth 2
                                        //     Child Loop BB0_126 Depth 2
                                        //     Child Loop BB0_121 Depth 2
                                        //     Child Loop BB0_115 Depth 2
                                        //     Child Loop BB0_108 Depth 2
                                        //     Child Loop BB0_100 Depth 2
                                        //     Child Loop BB0_95 Depth 2
                                        //     Child Loop BB0_86 Depth 2
                                        //     Child Loop BB0_78 Depth 2
                                        //     Child Loop BB0_72 Depth 2
                                        //     Child Loop BB0_63 Depth 2
	ldur	w8, [x29, #-68]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.hs	.LBB0_136
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-80]
	ldur	w9, [x29, #-48]
	ldur	x10, [x29, #-16]
	ldr	x10, [x10, #32]
	ldr	w10, [x10, #4]
	mul	w9, w9, w10
	ldur	w10, [x29, #-68]
	mul	w9, w9, w10
	add	x8, x8, w9, uxtw #2
	str	x8, [sp, #128]
	stur	wzr, [x29, #-60]
	b	.LBB0_46
.LBB0_46:                               //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-60]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	b.ge	.LBB0_59
	b	.LBB0_47
.LBB0_47:                               //   in Loop: Header=BB0_46 Depth=2
	ldursw	x8, [x29, #-60]
	mov	x10, #40
	mul	x9, x8, x10
	add	x8, sp, #144
	add	x8, x8, x9
	str	x8, [sp, #120]
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #120]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9, asr #1
	cset	w8, ge
	and	w8, w8, #0x1
	str	w8, [sp, #116]
	ldr	x8, [sp, #120]
	ldr	x8, [x8, #24]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-60]
	mul	x9, x9, x10
	ldr	x8, [x8, x9]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldr	w8, [sp, #116]
	cbz	w8, .LBB0_49
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_46 Depth=2
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #32]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_50
.LBB0_49:                               //   in Loop: Header=BB0_46 Depth=2
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #36]
	str	w8, [sp, #28]                   // 4-byte Folded Spill
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_46 Depth=2
	ldr	w8, [sp, #28]                   // 4-byte Folded Reload
	str	w8, [sp, #24]                   // 4-byte Folded Spill
	ldr	w8, [sp, #116]
	cbz	w8, .LBB0_52
	b	.LBB0_51
.LBB0_51:                               //   in Loop: Header=BB0_46 Depth=2
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #36]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_53
.LBB0_52:                               //   in Loop: Header=BB0_46 Depth=2
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #32]
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_46 Depth=2
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w1, [sp, #24]                   // 4-byte Folded Reload
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	ldr	x9, [sp, #120]
	ldr	w3, [x9, #12]
	ldr	x9, [sp, #120]
	ldr	w4, [x9]
	blr	x8
	ldursw	x9, [x29, #-60]
	sub	x8, x29, #112
	str	x0, [x8, x9, lsl #3]
	ldr	x9, [sp, #120]
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	ldr	x9, [sp, #120]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.lt	.LBB0_57
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_46 Depth=2
	ldr	x8, [sp, #120]
	str	wzr, [x8, #8]
	ldr	x8, [sp, #120]
	ldr	w8, [x8, #32]
	ldr	x9, [sp, #120]
	str	w8, [x9, #36]
	ldr	x9, [sp, #120]
	ldr	x8, [x9, #16]
	add	x8, x8, #1
	str	x8, [x9, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #48]
	ldursw	x10, [x29, #-60]
	mov	x11, #40
	mul	x10, x10, x11
	add	x9, x9, x10
	ldr	x9, [x9, #16]
	subs	x8, x8, x9
	b.ge	.LBB0_56
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_46 Depth=2
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #48]
	ldursw	x9, [x29, #-60]
	mov	x10, #40
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	x10, [x8, #24]
	ldr	x9, [sp, #120]
	ldrsw	x8, [x9, #32]
	add	x8, x8, x10
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #32]
	b	.LBB0_56
.LBB0_56:                               //   in Loop: Header=BB0_46 Depth=2
	b	.LBB0_57
.LBB0_57:                               //   in Loop: Header=BB0_46 Depth=2
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_46 Depth=2
	ldur	w8, [x29, #-60]
	add	w8, w8, #1
	stur	w8, [x29, #-60]
	b	.LBB0_46
.LBB0_59:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	w8, [x29, #-48]
	subs	w8, w8, #3
	b.lt	.LBB0_92
	b	.LBB0_60
.LBB0_60:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-112]
	str	x8, [sp, #104]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	subs	w8, w8, #3
	b.ne	.LBB0_69
	b	.LBB0_61
.LBB0_61:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	w8, [x29, #-56]
	cbz	w8, .LBB0_67
	b	.LBB0_62
.LBB0_62:                               //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_63
.LBB0_63:                               //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_66
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_63 Depth=2
	ldr	x8, [sp, #104]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #128]
	str	w8, [x9]
	ldur	x8, [x29, #-104]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #128]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-96]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #128]
	str	w8, [x9, #8]
	ldr	x9, [sp, #128]
	mov	w8, #255
	str	w8, [x9, #12]
	ldursw	x9, [x29, #-48]
	ldr	x8, [sp, #128]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #128]
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_63 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_63
.LBB0_66:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_68
.LBB0_67:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #104]
	ldur	x2, [x29, #-104]
	ldur	x3, [x29, #-96]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w4, [x9, #4]
	ldur	w5, [x29, #-48]
	blr	x8
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_91
.LBB0_69:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	subs	w8, w8, #4
	b.ne	.LBB0_85
	b	.LBB0_70
.LBB0_70:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_76
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_72
.LBB0_72:                               //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_75
	b	.LBB0_73
.LBB0_73:                               //   in Loop: Header=BB0_72 Depth=2
	ldur	x8, [x29, #-88]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #100]
	ldur	x8, [x29, #-112]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #100]
	bl	stbi__blinn_8x8
	ldr	x8, [sp, #128]
	str	w0, [x8]
	ldur	x8, [x29, #-104]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #100]
	bl	stbi__blinn_8x8
	ldr	x8, [sp, #128]
	str	w0, [x8, #4]
	ldur	x8, [x29, #-96]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #100]
	bl	stbi__blinn_8x8
	ldr	x8, [sp, #128]
	str	w0, [x8, #8]
	ldr	x9, [sp, #128]
	mov	w8, #255
	str	w8, [x9, #12]
	ldursw	x9, [x29, #-48]
	ldr	x8, [sp, #128]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #128]
	b	.LBB0_74
.LBB0_74:                               //   in Loop: Header=BB0_72 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_72
.LBB0_75:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_84
.LBB0_76:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #2
	b.ne	.LBB0_82
	b	.LBB0_77
.LBB0_77:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #104]
	ldur	x2, [x29, #-104]
	ldur	x3, [x29, #-96]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w4, [x9, #4]
	ldur	w5, [x29, #-48]
	blr	x8
	stur	wzr, [x29, #-64]
	b	.LBB0_78
.LBB0_78:                               //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_81
	b	.LBB0_79
.LBB0_79:                               //   in Loop: Header=BB0_78 Depth=2
	ldur	x8, [x29, #-88]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #96]
	ldr	x8, [sp, #128]
	ldr	w9, [x8]
	mov	w8, #255
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	subs	w0, w8, w9
	ldr	w1, [sp, #96]
	bl	stbi__blinn_8x8
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	ldr	x9, [sp, #128]
	str	w0, [x9]
	ldr	x9, [sp, #128]
	ldr	w9, [x9, #4]
	subs	w0, w8, w9
	ldr	w1, [sp, #96]
	bl	stbi__blinn_8x8
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	ldr	x9, [sp, #128]
	str	w0, [x9, #4]
	ldr	x9, [sp, #128]
	ldr	w9, [x9, #8]
	subs	w0, w8, w9
	ldr	w1, [sp, #96]
	bl	stbi__blinn_8x8
	ldr	x8, [sp, #128]
	str	w0, [x8, #8]
	ldursw	x9, [x29, #-48]
	ldr	x8, [sp, #128]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #128]
	b	.LBB0_80
.LBB0_80:                               //   in Loop: Header=BB0_78 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_78
.LBB0_81:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_83
.LBB0_82:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #40]
	ldr	x0, [sp, #128]
	ldr	x1, [sp, #104]
	ldur	x2, [x29, #-104]
	ldur	x3, [x29, #-96]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w4, [x9, #4]
	ldur	w5, [x29, #-48]
	blr	x8
	b	.LBB0_83
.LBB0_83:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_84
.LBB0_84:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_90
.LBB0_85:                               //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_86
.LBB0_86:                               //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_89
	b	.LBB0_87
.LBB0_87:                               //   in Loop: Header=BB0_86 Depth=2
	ldr	x8, [sp, #104]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #128]
	str	w8, [x9, #8]
	ldr	x9, [sp, #128]
	str	w8, [x9, #4]
	ldr	x9, [sp, #128]
	str	w8, [x9]
	ldr	x9, [sp, #128]
	mov	w8, #255
	str	w8, [x9, #12]
	ldursw	x9, [x29, #-48]
	ldr	x8, [sp, #128]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #128]
	b	.LBB0_88
.LBB0_88:                               //   in Loop: Header=BB0_86 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_86
.LBB0_89:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_90
.LBB0_90:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_91
.LBB0_91:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_134
.LBB0_92:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	w8, [x29, #-56]
	cbz	w8, .LBB0_105
	b	.LBB0_93
.LBB0_93:                               //   in Loop: Header=BB0_44 Depth=1
	ldur	w8, [x29, #-48]
	subs	w8, w8, #1
	b.ne	.LBB0_99
	b	.LBB0_94
.LBB0_94:                               //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_95
.LBB0_95:                               //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_98
	b	.LBB0_96
.LBB0_96:                               //   in Loop: Header=BB0_95 Depth=2
	ldur	x8, [x29, #-112]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-104]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w1, [x8, x9, lsl #2]
	ldur	x8, [x29, #-96]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w2, [x8, x9, lsl #2]
	bl	stbi__compute_y
	mov	w8, w0
	ldr	x9, [sp, #128]
	add	x10, x9, #4
	str	x10, [sp, #128]
	str	w8, [x9]
	b	.LBB0_97
.LBB0_97:                               //   in Loop: Header=BB0_95 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_95
.LBB0_98:                               //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_104
.LBB0_99:                               //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_100
.LBB0_100:                              //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_103
	b	.LBB0_101
.LBB0_101:                              //   in Loop: Header=BB0_100 Depth=2
	ldur	x8, [x29, #-112]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldur	x8, [x29, #-104]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w1, [x8, x9, lsl #2]
	ldur	x8, [x29, #-96]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w2, [x8, x9, lsl #2]
	bl	stbi__compute_y
	mov	w8, w0
	ldr	x9, [sp, #128]
	str	w8, [x9]
	ldr	x9, [sp, #128]
	mov	w8, #255
	str	w8, [x9, #4]
	b	.LBB0_102
.LBB0_102:                              //   in Loop: Header=BB0_100 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	ldr	x8, [sp, #128]
	add	x8, x8, #8
	str	x8, [sp, #128]
	b	.LBB0_100
.LBB0_103:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_104
.LBB0_104:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_133
.LBB0_105:                              //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	subs	w8, w8, #4
	b.ne	.LBB0_112
	b	.LBB0_106
.LBB0_106:                              //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	cbnz	x8, .LBB0_112
	b	.LBB0_107
.LBB0_107:                              //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_108
.LBB0_108:                              //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_111
	b	.LBB0_109
.LBB0_109:                              //   in Loop: Header=BB0_108 Depth=2
	ldur	x8, [x29, #-88]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #92]
	ldur	x8, [x29, #-112]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #92]
	bl	stbi__blinn_8x8
	str	w0, [sp, #88]
	ldur	x8, [x29, #-104]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #92]
	bl	stbi__blinn_8x8
	str	w0, [sp, #84]
	ldur	x8, [x29, #-96]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #92]
	bl	stbi__blinn_8x8
	str	w0, [sp, #80]
	ldr	w0, [sp, #88]
	ldr	w1, [sp, #84]
	ldr	w2, [sp, #80]
	bl	stbi__compute_y
	mov	w8, w0
	ldr	x9, [sp, #128]
	str	w8, [x9]
	ldr	x9, [sp, #128]
	mov	w8, #255
	str	w8, [x9, #4]
	ldursw	x9, [x29, #-48]
	ldr	x8, [sp, #128]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #128]
	b	.LBB0_110
.LBB0_110:                              //   in Loop: Header=BB0_108 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_108
.LBB0_111:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_132
.LBB0_112:                              //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8]
	subs	w8, w8, #4
	b.ne	.LBB0_119
	b	.LBB0_113
.LBB0_113:                              //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #2
	b.ne	.LBB0_119
	b	.LBB0_114
.LBB0_114:                              //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_115
.LBB0_115:                              //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_118
	b	.LBB0_116
.LBB0_116:                              //   in Loop: Header=BB0_115 Depth=2
	ldur	x8, [x29, #-112]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w9, [x8, x9, lsl #2]
	mov	w8, #255
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	subs	w0, w8, w9
	ldur	x8, [x29, #-88]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w1, [x8, x9, lsl #2]
	bl	stbi__blinn_8x8
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	ldr	x9, [sp, #128]
	str	w0, [x9]
	ldr	x9, [sp, #128]
	str	w8, [x9, #4]
	ldursw	x9, [x29, #-48]
	ldr	x8, [sp, #128]
	add	x8, x8, x9, lsl #2
	str	x8, [sp, #128]
	b	.LBB0_117
.LBB0_117:                              //   in Loop: Header=BB0_115 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_115
.LBB0_118:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_131
.LBB0_119:                              //   in Loop: Header=BB0_44 Depth=1
	ldur	x8, [x29, #-112]
	str	x8, [sp, #72]
	ldur	w8, [x29, #-48]
	subs	w8, w8, #1
	b.ne	.LBB0_125
	b	.LBB0_120
.LBB0_120:                              //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_121
.LBB0_121:                              //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_124
	b	.LBB0_122
.LBB0_122:                              //   in Loop: Header=BB0_121 Depth=2
	ldr	x8, [sp, #72]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #128]
	ldur	w10, [x29, #-64]
                                        // kill: def $x10 killed $w10
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_123
.LBB0_123:                              //   in Loop: Header=BB0_121 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_121
.LBB0_124:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_130
.LBB0_125:                              //   in Loop: Header=BB0_44 Depth=1
	stur	wzr, [x29, #-64]
	b	.LBB0_126
.LBB0_126:                              //   Parent Loop BB0_44 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.hs	.LBB0_129
	b	.LBB0_127
.LBB0_127:                              //   in Loop: Header=BB0_126 Depth=2
	ldr	x8, [sp, #72]
	ldur	w9, [x29, #-64]
                                        // kill: def $x9 killed $w9
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #128]
	add	x10, x9, #4
	str	x10, [sp, #128]
	str	w8, [x9]
	ldr	x9, [sp, #128]
	add	x8, x9, #4
	str	x8, [sp, #128]
	mov	w8, #255
	str	w8, [x9]
	b	.LBB0_128
.LBB0_128:                              //   in Loop: Header=BB0_126 Depth=2
	ldur	w8, [x29, #-64]
	add	w8, w8, #1
	stur	w8, [x29, #-64]
	b	.LBB0_126
.LBB0_129:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_130
.LBB0_130:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_131
.LBB0_131:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_132
.LBB0_132:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_133
.LBB0_133:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_134
.LBB0_134:                              //   in Loop: Header=BB0_44 Depth=1
	b	.LBB0_135
.LBB0_135:                              //   in Loop: Header=BB0_44 Depth=1
	ldur	w8, [x29, #-68]
	add	w8, w8, #1
	stur	w8, [x29, #-68]
	b	.LBB0_44
.LBB0_136:
	ldur	x0, [x29, #-16]
	bl	stbi__cleanup_jpeg
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-32]
	str	w8, [x9]
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_138
	b	.LBB0_137
.LBB0_137:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	w9, [x8]
	mov	w8, #3
	subs	w9, w9, #3
	csinc	w8, w8, wzr, ge
	ldur	x9, [x29, #-40]
	str	w8, [x9]
	b	.LBB0_138
.LBB0_138:
	ldur	x8, [x29, #-80]
	stur	x8, [x29, #-8]
	b	.LBB0_139
.LBB0_139:
	ldur	x0, [x29, #-8]
	ldr	x28, [sp, #432]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #416]            // 16-byte Folded Reload
	add	sp, sp, #448
	ret
.Lfunc_end0:
	.size	load_jpeg_image, .Lfunc_end0-load_jpeg_image
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"bad req_comp"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Internal error"
	.size	.L.str.1, 15
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"outofmem"
	.size	.L.str.2, 9
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Out of memory"
	.size	.L.str.3, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym load_jpeg_image
	.addrsig_sym stbi__errpuc
	.addrsig_sym stbi__decode_jpeg_image
	.addrsig_sym stbi__cleanup_jpeg
	.addrsig_sym stbi__malloc
	.addrsig_sym resample_row_1
	.addrsig_sym stbi__resample_row_v_2
	.addrsig_sym stbi__resample_row_h_2
	.addrsig_sym stbi__resample_row_generic
	.addrsig_sym stbi__malloc_mad3
	.addrsig_sym stbi__blinn_8x8
	.addrsig_sym stbi__compute_y