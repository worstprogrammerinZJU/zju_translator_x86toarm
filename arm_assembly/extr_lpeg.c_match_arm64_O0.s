	.text
	.p2align	2                               // -- Begin function match
	.type	match,@function
match:                                  // @match
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #272
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	stur	x5, [x29, #-56]
	stur	w6, [x29, #-60]
	adrp	x9, MAXBACK
	ldr	w8, [x9, :lo12:MAXBACK]
	mov	w10, w8
	mov	x8, sp
	stur	x8, [x29, #-72]
	mov	x8, #24
	mul	x8, x10, x8
	add	x8, x8, #15
	and	x11, x8, #0xfffffffffffffff0
	mov	x8, sp
	subs	x8, x8, x11
	mov	sp, x8
	stur	x8, [x29, #-192]                // 8-byte Folded Spill
	stur	x10, [x29, #-80]
	ldrsw	x9, [x9, :lo12:MAXBACK]
	mov	x10, #24
	mul	x9, x9, x10
	add	x9, x8, x9
	stur	x9, [x29, #-88]
	stur	x8, [x29, #-96]
	adrp	x8, IMAXCAPTURES
	ldr	w8, [x8, :lo12:IMAXCAPTURES]
	stur	w8, [x29, #-100]
	stur	wzr, [x29, #-104]
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-112]
	ldur	x9, [x29, #-96]
	adrp	x8, giveup
	add	x8, x8, :lo12:giveup
	str	x8, [x9, #16]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-96]
	str	x8, [x9]
	ldur	x8, [x29, #-96]
	str	wzr, [x8, #8]
	ldur	x8, [x29, #-96]
	add	x8, x8, #24
	stur	x8, [x29, #-96]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_45 Depth 2
                                        //     Child Loop BB0_51 Depth 2
                                        //     Child Loop BB0_79 Depth 2
	ldur	x8, [x29, #-112]
	ldr	w8, [x8, #16]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	stur	x8, [x29, #-200]                // 8-byte Folded Spill
	subs	x8, x8, #28
	b.hi	.LBB0_108
// %bb.2:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x11, [x29, #-200]               // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_3:
	ldur	x9, [x29, #-192]                // 8-byte Folded Reload
	ldur	x8, [x29, #-96]
	mov	x10, #24
	stur	x10, [x29, #-208]               // 8-byte Folded Spill
	add	x9, x9, #24
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldur	x10, [x29, #-208]               // 8-byte Folded Reload
	adrp	x8, Cclose
	ldr	w8, [x8, :lo12:Cclose]
	ldur	x9, [x29, #-56]
	ldursw	x11, [x29, #-104]
	mul	x11, x11, x10
	add	x9, x9, x11
	str	w8, [x9, #12]
	ldur	x9, [x29, #-56]
	ldursw	x8, [x29, #-104]
	mul	x10, x8, x10
	mov	x8, xzr
	str	x8, [x9, x10]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-116]
	b	.LBB0_109
.LBB0_4:
	ldur	x9, [x29, #-192]                // 8-byte Folded Reload
	ldur	x8, [x29, #-96]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-116]
	b	.LBB0_109
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x10, [x29, #-192]               // 8-byte Folded Reload
	ldur	x9, [x29, #-96]
	mov	w8, #0
	subs	x9, x9, x10
	stur	w8, [x29, #-212]                // 4-byte Folded Spill
	b.ls	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldur	x8, [x8, #-24]
	subs	x8, x8, #0
	cset	w8, eq
	stur	w8, [x29, #-212]                // 4-byte Folded Spill
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-212]                // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-96]
	subs	x9, x8, #24
	stur	x9, [x29, #-96]
	ldur	x8, [x8, #-8]
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-120]
	ldursw	x8, [x29, #-120]
	ldur	x9, [x29, #-40]
	ldur	x10, [x29, #-32]
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.le	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_78
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	ldursw	x9, [x29, #-120]
	ldur	x8, [x29, #-32]
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-124]
	ldursw	x8, [x29, #-124]
	ldur	x9, [x29, #-40]
	ldur	x10, [x29, #-32]
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.le	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_15
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	ldursw	x9, [x29, #-124]
	ldur	x8, [x29, #-32]
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-112]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.lo	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_78
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-112]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ne	.LBB0_23
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.lo	.LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_25
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	stur	w8, [x29, #-128]
	ldur	x8, [x29, #-112]
	ldr	w0, [x8, #44]
	ldur	w1, [x29, #-128]
	bl	testchar
	cbnz	w0, .LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_78
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, CHARSETINSTSIZE
	ldrsw	x9, [x8, :lo12:CHARSETINSTSIZE]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_30:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	stur	w8, [x29, #-132]
	ldur	x8, [x29, #-112]
	ldr	w0, [x8, #44]
	ldur	w1, [x29, #-132]
	bl	testchar
	cbnz	w0, .LBB0_32
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_33
.LBB0_32:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, CHARSETINSTSIZE
	ldrsw	x9, [x8, :lo12:CHARSETINSTSIZE]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_34:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	stur	w8, [x29, #-136]
	ldur	x8, [x29, #-112]
	ldr	w0, [x8, #44]
	ldur	w1, [x29, #-136]
	bl	testchar
	cbz	w0, .LBB0_36
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.lo	.LBB0_37
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_78
.LBB0_37:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, CHARSETINSTSIZE
	ldrsw	x9, [x8, :lo12:CHARSETINSTSIZE]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_39:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	stur	w8, [x29, #-140]
	ldur	x8, [x29, #-112]
	ldr	w0, [x8, #44]
	ldur	w1, [x29, #-140]
	bl	testchar
	cbz	w0, .LBB0_41
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.lo	.LBB0_42
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_43
.LBB0_42:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, CHARSETINSTSIZE
	ldrsw	x9, [x8, :lo12:CHARSETINSTSIZE]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_43
.LBB0_43:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_44:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_45
.LBB0_45:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	stur	w8, [x29, #-144]
	ldur	x8, [x29, #-112]
	ldr	w0, [x8, #44]
	ldur	w1, [x29, #-144]
	bl	testchar
	cbnz	w0, .LBB0_47
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_49
.LBB0_47:                               //   in Loop: Header=BB0_45 Depth=2
	b	.LBB0_48
.LBB0_48:                               //   in Loop: Header=BB0_45 Depth=2
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_45
.LBB0_49:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, CHARSETINSTSIZE
	ldrsw	x9, [x8, :lo12:CHARSETINSTSIZE]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_50:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_51
.LBB0_51:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	subs	x8, x8, x9
	b.hs	.LBB0_56
	b	.LBB0_52
.LBB0_52:                               //   in Loop: Header=BB0_51 Depth=2
	ldur	x8, [x29, #-32]
	ldrb	w8, [x8]
	stur	w8, [x29, #-148]
	ldur	x8, [x29, #-112]
	ldr	w0, [x8, #44]
	ldur	w1, [x29, #-148]
	bl	testchar
	cbnz	w0, .LBB0_54
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_56
.LBB0_54:                               //   in Loop: Header=BB0_51 Depth=2
	b	.LBB0_55
.LBB0_55:                               //   in Loop: Header=BB0_51 Depth=2
	ldur	x8, [x29, #-32]
	add	x8, x8, #1
	stur	x8, [x29, #-32]
	b	.LBB0_51
.LBB0_56:                               //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, CHARSETINSTSIZE
	ldrsw	x9, [x8, :lo12:CHARSETINSTSIZE]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_57:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-112]
	ldr	w0, [x9, #68]
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	ldur	x3, [x29, #-40]
	blr	x8
	stur	x0, [x29, #-160]
	ldur	x8, [x29, #-160]
	cbnz	x8, .LBB0_59
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_78
.LBB0_59:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-160]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_60:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_61:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldur	x9, [x29, #-88]
	subs	x8, x8, x9
	b.lo	.LBB0_63
	b	.LBB0_62
.LBB0_62:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-116]
	b	.LBB0_109
.LBB0_63:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x1, [x29, #-112]
	mov	w0, wzr
	bl	dest
	ldur	x8, [x29, #-96]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-112]
	ldrsw	x9, [x9, #8]
	subs	x8, x8, x9
	ldur	x9, [x29, #-96]
	str	x8, [x9]
	ldur	w8, [x29, #-104]
	ldur	x9, [x29, #-96]
	str	w8, [x9, #8]
	ldur	x8, [x29, #-96]
	add	x8, x8, #24
	stur	x8, [x29, #-96]
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_64:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldur	x9, [x29, #-88]
	subs	x8, x8, x9
	b.lo	.LBB0_66
	b	.LBB0_65
.LBB0_65:
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	luaL_error
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-116]
	b	.LBB0_109
.LBB0_66:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	add	x8, x8, #24
	ldur	x9, [x29, #-96]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-96]
	add	x8, x8, #24
	stur	x8, [x29, #-96]
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_67:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x10, [x29, #-192]               // 8-byte Folded Reload
	ldur	x9, [x29, #-96]
	mov	w8, #0
	subs	x9, x9, x10
	stur	w8, [x29, #-216]                // 4-byte Folded Spill
	b.ls	.LBB0_69
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldur	x8, [x8, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	stur	w8, [x29, #-216]                // 4-byte Folded Spill
	b	.LBB0_69
.LBB0_69:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-216]                // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-96]
	subs	x8, x8, #24
	stur	x8, [x29, #-96]
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_70:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x10, [x29, #-192]               // 8-byte Folded Reload
	ldur	x9, [x29, #-96]
	mov	w8, #0
	subs	x9, x9, x10
	stur	w8, [x29, #-220]                // 4-byte Folded Spill
	b.ls	.LBB0_72
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldur	x8, [x8, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	stur	w8, [x29, #-220]                // 4-byte Folded Spill
	b	.LBB0_72
.LBB0_72:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-220]                // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-96]
	stur	x8, [x9, #-24]
	ldur	w8, [x29, #-104]
	ldur	x9, [x29, #-96]
	stur	w8, [x9, #-16]
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_73:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x10, [x29, #-192]               // 8-byte Folded Reload
	ldur	x9, [x29, #-96]
	mov	w8, #0
	subs	x9, x9, x10
	stur	w8, [x29, #-224]                // 4-byte Folded Spill
	b.ls	.LBB0_75
	b	.LBB0_74
.LBB0_74:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldur	x8, [x8, #-24]
	subs	x8, x8, #0
	cset	w8, ne
	stur	w8, [x29, #-224]                // 4-byte Folded Spill
	b	.LBB0_75
.LBB0_75:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-224]                // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-96]
	subs	x9, x8, #24
	stur	x9, [x29, #-96]
	ldur	x8, [x8, #-24]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-112]
	ldrsw	x9, [x8, #12]
	ldur	x8, [x29, #-112]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_76:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x9, [x29, #-192]                // 8-byte Folded Reload
	ldur	x8, [x29, #-96]
	subs	x8, x8, x9
	cset	w8, hi
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-96]
	subs	x8, x8, #24
	stur	x8, [x29, #-96]
	b	.LBB0_77
.LBB0_77:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_78
.LBB0_78:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_79
.LBB0_79:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x9, [x29, #-192]                // 8-byte Folded Reload
	ldur	x8, [x29, #-96]
	subs	x8, x8, x9
	cset	w8, hi
	and	w0, w8, #0x1
	bl	assert
	ldur	x8, [x29, #-96]
	subs	x9, x8, #24
	stur	x9, [x29, #-96]
	ldur	x8, [x8, #-24]
	stur	x8, [x29, #-32]
	b	.LBB0_80
.LBB0_80:                               //   in Loop: Header=BB0_79 Depth=2
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_79
	b	.LBB0_81
.LBB0_81:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-96]
	ldr	w8, [x8, #8]
	stur	w8, [x29, #-104]
	ldur	x8, [x29, #-96]
	ldr	x8, [x8, #16]
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_82:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	lua_gettop
	add	w8, w0, #1
	stur	w8, [x29, #-164]
	ldur	x0, [x29, #-16]
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-104]
	mov	x10, #24
	mul	x9, x9, x10
	add	x1, x8, x9
	ldur	x2, [x29, #-56]
	ldur	x3, [x29, #-24]
	ldur	x4, [x29, #-32]
	ldur	w5, [x29, #-60]
	bl	runtimecap
	stur	w0, [x29, #-168]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-164]
	bl	lua_tointeger
	subs	w8, w0, #1
	stur	w8, [x29, #-172]
	ldur	x0, [x29, #-16]
	bl	lua_gettop
	ldur	w8, [x29, #-164]
	subs	w8, w0, w8
	stur	w8, [x29, #-176]
	ldur	w8, [x29, #-172]
	adds	w8, w8, #1
	b.ne	.LBB0_89
	b	.LBB0_83
.LBB0_83:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-164]
	bl	lua_toboolean
	cbnz	w0, .LBB0_85
	b	.LBB0_84
.LBB0_84:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w8, [x29, #-164]
	subs	w1, w8, #1
	bl	lua_settop
	b	.LBB0_78
.LBB0_85:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-164]
	bl	lua_isboolean
	cbz	w0, .LBB0_87
	b	.LBB0_86
.LBB0_86:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-172]
	b	.LBB0_87
.LBB0_87:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_88
.LBB0_88:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_89
.LBB0_89:                               //   in Loop: Header=BB0_1 Depth=1
	ldursw	x8, [x29, #-172]
	ldur	x9, [x29, #-32]
	ldur	x10, [x29, #-24]
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.lt	.LBB0_91
	b	.LBB0_90
.LBB0_90:                               //   in Loop: Header=BB0_1 Depth=1
	ldursw	x8, [x29, #-172]
	ldur	x9, [x29, #-40]
	ldur	x10, [x29, #-24]
	subs	x9, x9, x10
	subs	x8, x8, x9
	b.le	.LBB0_92
	b	.LBB0_91
.LBB0_91:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	luaL_error
	b	.LBB0_92
.LBB0_92:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldursw	x9, [x29, #-172]
	add	x8, x8, x9
	stur	x8, [x29, #-32]
	ldur	w9, [x29, #-168]
	ldur	w8, [x29, #-104]
	subs	w8, w8, w9
	stur	w8, [x29, #-104]
	ldur	x0, [x29, #-16]
	ldur	w1, [x29, #-164]
	bl	lua_remove
	ldur	w8, [x29, #-176]
	subs	w8, w8, #0
	b.le	.LBB0_96
	b	.LBB0_93
.LBB0_93:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-176]
	add	w9, w8, #1
	ldur	w8, [x29, #-104]
	add	w8, w8, w9
	stur	w8, [x29, #-104]
	ldur	w9, [x29, #-100]
	subs	w8, w8, w9
	b.lt	.LBB0_95
	b	.LBB0_94
.LBB0_94:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-56]
	ldur	w2, [x29, #-104]
	ldur	w3, [x29, #-60]
	bl	doublecap
	stur	x0, [x29, #-56]
	ldur	w9, [x29, #-104]
	mov	w8, #2
	mul	w8, w8, w9
	stur	w8, [x29, #-100]
	b	.LBB0_95
.LBB0_95:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-32]
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-104]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	ldursw	x9, [x29, #-176]
	mneg	x9, x9, x10
	add	x8, x8, x9
	subs	x1, x8, #24
	ldur	w2, [x29, #-176]
	ldur	w3, [x29, #-164]
	bl	adddyncaptures
	b	.LBB0_96
.LBB0_96:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_97:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-232]                // 8-byte Folded Spill
	ldur	x0, [x29, #-112]
	bl	getoff
	ldur	x8, [x29, #-232]                // 8-byte Folded Reload
                                        // implicit-def: $x9
	mov	w9, w0
	sxtw	x9, w9
	subs	x8, x8, x9
	stur	x8, [x29, #-184]
	ldur	w8, [x29, #-104]
	subs	w8, w8, #0
	cset	w8, gt
	and	w0, w8, #0x1
	bl	assert
	ldur	x10, [x29, #-56]
	ldur	w8, [x29, #-104]
	subs	w8, w8, #1
	mov	w9, #24
	smaddl	x8, w8, w9, x10
	ldr	w8, [x8, #8]
	cbnz	w8, .LBB0_100
	b	.LBB0_98
.LBB0_98:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-184]
	ldur	x9, [x29, #-56]
	ldur	w10, [x29, #-104]
	subs	w10, w10, #1
	mov	w11, #24
	smull	x10, w10, w11
	ldr	x9, [x9, x10]
	subs	x8, x8, x9
	adrp	x9, UCHAR_MAX
	ldr	x9, [x9, :lo12:UCHAR_MAX]
	subs	x8, x8, x9
	b.hs	.LBB0_100
	b	.LBB0_99
.LBB0_99:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-184]
	ldur	x9, [x29, #-56]
	ldur	w10, [x29, #-104]
	subs	w10, w10, #1
	mov	w11, #24
	smull	x10, w10, w11
	ldr	x9, [x9, x10]
	subs	x8, x8, x9
	add	x8, x8, #1
	ldur	x11, [x29, #-56]
	ldur	w9, [x29, #-104]
	subs	w9, w9, #1
	mov	w10, #24
	smaddl	x9, w9, w10, x11
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [x9, #8]
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_100:                              //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-104]
	mov	x10, #24
	mul	x9, x9, x10
	add	x9, x8, x9
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_104
.LBB0_101:                              //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-104]
	mov	x10, #24
	mul	x9, x9, x10
	add	x9, x8, x9
	mov	w8, #1
	str	w8, [x9, #8]
	b	.LBB0_104
.LBB0_102:                              //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-104]
	mov	x10, #24
	mul	x9, x9, x10
	add	x8, x8, x9
	str	wzr, [x8, #8]
	b	.LBB0_104
.LBB0_103:                              //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-112]
	bl	getoff
	add	w8, w0, #1
	ldur	x9, [x29, #-56]
	ldursw	x10, [x29, #-104]
	mov	x11, #24
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #8]
	b	.LBB0_104
.LBB0_104:                              //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-248]                // 8-byte Folded Spill
	ldur	x0, [x29, #-112]
	bl	getoff
	ldur	x8, [x29, #-248]                // 8-byte Folded Reload
                                        // implicit-def: $x9
	mov	w9, w0
	sxtw	x9, w9
	subs	x8, x8, x9
	ldur	x9, [x29, #-56]
	ldursw	x10, [x29, #-104]
	mov	x11, #24
	stur	x11, [x29, #-240]               // 8-byte Folded Spill
	mul	x10, x10, x11
	str	x8, [x9, x10]
	ldur	x8, [x29, #-112]
	ldr	w8, [x8, #12]
	ldur	x9, [x29, #-56]
	ldursw	x10, [x29, #-104]
	mul	x10, x10, x11
	add	x9, x9, x10
	str	w8, [x9, #16]
	ldur	x0, [x29, #-112]
	bl	getkind
	ldur	x10, [x29, #-240]               // 8-byte Folded Reload
	ldur	x8, [x29, #-56]
	ldursw	x9, [x29, #-104]
	mul	x9, x9, x10
	add	x8, x8, x9
	str	w0, [x8, #12]
	ldur	w8, [x29, #-104]
	add	w8, w8, #1
	stur	w8, [x29, #-104]
	ldur	w9, [x29, #-100]
	subs	w8, w8, w9
	b.lt	.LBB0_106
	b	.LBB0_105
.LBB0_105:                              //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-56]
	ldur	w2, [x29, #-104]
	ldur	w3, [x29, #-60]
	bl	doublecap
	stur	x0, [x29, #-56]
	ldur	w9, [x29, #-104]
	mov	w8, #2
	mul	w8, w8, w9
	stur	w8, [x29, #-100]
	b	.LBB0_106
.LBB0_106:                              //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-112]
	add	x8, x8, #24
	stur	x8, [x29, #-112]
	b	.LBB0_1
.LBB0_107:
	ldur	x8, [x29, #-16]
	sub	x9, x29, #8
	stur	x8, [x9, #-256]                 // 8-byte Folded Spill
	ldur	w0, [x29, #-60]
	bl	penvidx
	mov	w1, w0
	sub	x8, x29, #8
	ldur	x0, [x8, #-256]                 // 8-byte Folded Reload
	ldur	x8, [x29, #-112]
	ldr	w2, [x8, #12]
	bl	lua_rawgeti
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-256]                // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	mov	w1, #-1
	bl	val2str
	mov	w2, w0
	ldur	x0, [x29, #-256]                // 8-byte Folded Reload
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	luaL_error
	b	.LBB0_108
.LBB0_108:
	mov	w0, wzr
	bl	assert
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	mov	w8, #1
	stur	w8, [x29, #-116]
	b	.LBB0_109
.LBB0_109:
	ldur	x8, [x29, #-72]
	mov	sp, x8
	ldur	x0, [x29, #-8]
	mov	sp, x29
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	match, .Lfunc_end0-match
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_34-.Ltmp0
	.word	.LBB0_39-.Ltmp0
	.word	.LBB0_30-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_50-.Ltmp0
	.word	.LBB0_44-.Ltmp0
	.word	.LBB0_26-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_70-.Ltmp0
	.word	.LBB0_102-.Ltmp0
	.word	.LBB0_107-.Ltmp0
	.word	.LBB0_60-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_57-.Ltmp0
	.word	.LBB0_103-.Ltmp0
	.word	.LBB0_76-.Ltmp0
	.word	.LBB0_77-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_101-.Ltmp0
	.word	.LBB0_101-.Ltmp0
	.word	.LBB0_67-.Ltmp0
	.word	.LBB0_82-.Ltmp0
	.word	.LBB0_97-.Ltmp0
	.word	.LBB0_61-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_64-.Ltmp0
	.word	.LBB0_73-.Ltmp0
	.word	.LBB0_8-.Ltmp0
                                        // -- End function
	.type	MAXBACK,@object                 // @MAXBACK
	.bss
	.globl	MAXBACK
	.p2align	2
MAXBACK:
	.word	0                               // 0x0
	.size	MAXBACK, 4
	.type	IMAXCAPTURES,@object            // @IMAXCAPTURES
	.globl	IMAXCAPTURES
	.p2align	2
IMAXCAPTURES:
	.word	0                               // 0x0
	.size	IMAXCAPTURES, 4
	.type	giveup,@object                  // @giveup
	.section	.rodata,"a",@progbits
	.globl	giveup
	.p2align	3
giveup:
	.zero	24
	.size	giveup, 24
	.type	Cclose,@object                  // @Cclose
	.bss
	.globl	Cclose
	.p2align	2
Cclose:
	.word	0                               // 0x0
	.size	Cclose, 4
	.type	CHARSETINSTSIZE,@object         // @CHARSETINSTSIZE
	.globl	CHARSETINSTSIZE
	.p2align	2
CHARSETINSTSIZE:
	.word	0                               // 0x0
	.size	CHARSETINSTSIZE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"too many pending calls/choices"
	.size	.L.str, 31
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"invalid position returned by match-time capture"
	.size	.L.str.1, 48
	.type	UCHAR_MAX,@object               // @UCHAR_MAX
	.bss
	.globl	UCHAR_MAX
	.p2align	3
UCHAR_MAX:
	.xword	0
	.size	UCHAR_MAX, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"reference to %s outside a grammar"
	.size	.L.str.2, 34
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym match
	.addrsig_sym assert
	.addrsig_sym testchar
	.addrsig_sym luaL_error
	.addrsig_sym dest
	.addrsig_sym lua_gettop
	.addrsig_sym runtimecap
	.addrsig_sym lua_tointeger
	.addrsig_sym lua_toboolean
	.addrsig_sym lua_settop
	.addrsig_sym lua_isboolean
	.addrsig_sym lua_remove
	.addrsig_sym doublecap
	.addrsig_sym adddyncaptures
	.addrsig_sym getoff
	.addrsig_sym getkind
	.addrsig_sym lua_rawgeti
	.addrsig_sym penvidx
	.addrsig_sym val2str
	.addrsig_sym MAXBACK
	.addrsig_sym IMAXCAPTURES
	.addrsig_sym giveup
	.addrsig_sym Cclose
	.addrsig_sym CHARSETINSTSIZE
	.addrsig_sym UCHAR_MAX