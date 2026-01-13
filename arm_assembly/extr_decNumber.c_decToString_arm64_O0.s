	.text
	.p2align	2                               // -- Begin function decToString
	.type	decToString,@function
decToString:                            // @decToString
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	stur	x8, [x29, #-32]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #64]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	bl	D2U
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #3
	subs	x8, x8, #8
	str	x8, [sp, #56]
	ldur	x0, [x29, #-8]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #64]
	mov	w8, #45
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #20]
	adrp	x9, DECSPECIAL
	ldr	w9, [x9, :lo12:DECSPECIAL]
	and	w8, w8, w9
	cbz	w8, .LBB0_12
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	bl	decNumberIsInfinite
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldr	x0, [sp, #64]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcpy
	ldr	x8, [sp, #64]
	add	x0, x8, #3
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcpy
	b	.LBB0_86
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #20]
	adrp	x9, DECSNAN
	ldr	w9, [x9, :lo12:DECSNAN]
	and	w8, w8, w9
	cbz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x9, [sp, #64]
	mov	w8, #115
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	.LBB0_7
.LBB0_7:
	ldr	x0, [sp, #64]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcpy
	ldr	x8, [sp, #64]
	add	x8, x8, #3
	str	x8, [sp, #64]
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_11
	b	.LBB0_9
.LBB0_9:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #16]
	subs	w8, w8, #1
	b.ne	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_86
.LBB0_11:
	b	.LBB0_12
.LBB0_12:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #16]
	bl	MSUDIGITS
	stur	x0, [x29, #-56]
	ldur	x8, [x29, #-56]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	ldur	x8, [x29, #-32]
	cbnz	x8, .LBB0_22
	b	.LBB0_13
.LBB0_13:
	b	.LBB0_14
.LBB0_14:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_16 Depth 2
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.lo	.LBB0_21
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_14 Depth=1
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	b	.LBB0_16
.LBB0_16:                               //   Parent Loop BB0_14 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	x8, [x29, #-56]
	tbnz	x8, #63, .LBB0_19
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_16 Depth=2
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-56]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #40]
	bl	TODIGIT
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_16 Depth=2
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	ldur	x8, [x29, #-56]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	b	.LBB0_16
.LBB0_19:                               //   in Loop: Header=BB0_14 Depth=1
	adrp	x8, DECDPUN
	ldr	x8, [x8, :lo12:DECDPUN]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_14 Depth=1
	ldr	x8, [sp, #56]
	subs	x8, x8, #8
	str	x8, [sp, #56]
	b	.LBB0_14
.LBB0_21:
	ldr	x8, [sp, #64]
	strb	wzr, [x8]
	b	.LBB0_86
.LBB0_22:
	ldur	x8, [x29, #-8]
	ldrsw	x8, [x8, #16]
	ldur	x9, [x29, #-32]
	add	x8, x8, x9
	stur	x8, [x29, #-48]
	stur	xzr, [x29, #-40]
	ldur	x8, [x29, #-32]
	subs	x8, x8, #0
	b.gt	.LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldur	x8, [x29, #-48]
	adds	x8, x8, #5
	b.ge	.LBB0_38
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-8]
	ldrsw	x9, [x9, #16]
	add	x9, x8, x9
	mov	x8, #1
	subs	x9, x9, #1
	stur	x9, [x29, #-40]
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-20]
	cbz	w8, .LBB0_37
	b	.LBB0_25
.LBB0_25:
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_37
	b	.LBB0_26
.LBB0_26:
	ldur	x8, [x29, #-40]
	subs	x8, x8, #0
	b.ge	.LBB0_30
	b	.LBB0_27
.LBB0_27:
	ldur	x9, [x29, #-40]
	mov	x8, xzr
	subs	x8, x8, x9
	mov	x10, #3
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	ldr	x9, [sp, #32]
	mov	x8, #3
	subs	x8, x8, x9
	str	x8, [sp, #32]
	b	.LBB0_29
.LBB0_29:
	b	.LBB0_31
.LBB0_30:
	ldur	x8, [x29, #-40]
	mov	x10, #3
	sdiv	x9, x8, x10
	mul	x9, x9, x10
	subs	x8, x8, x9
	str	x8, [sp, #32]
	b	.LBB0_31
.LBB0_31:
	ldur	x8, [x29, #-40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-8]
	bl	ISZERO
	cbnz	w0, .LBB0_33
	b	.LBB0_32
.LBB0_32:
	ldr	x9, [sp, #32]
	ldur	x8, [x29, #-48]
	add	x8, x8, x9
	stur	x8, [x29, #-48]
	b	.LBB0_36
.LBB0_33:
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_35
	b	.LBB0_34
.LBB0_34:
	ldur	x8, [x29, #-40]
	add	x8, x8, #3
	stur	x8, [x29, #-40]
	ldr	x9, [sp, #32]
	mov	x8, #2
	subs	x9, x8, x9
	mov	x8, xzr
	subs	x8, x8, x9
	stur	x8, [x29, #-48]
	b	.LBB0_35
.LBB0_35:
	b	.LBB0_36
.LBB0_36:
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_38
.LBB0_38:
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	b.le	.LBB0_62
	b	.LBB0_39
.LBB0_39:
	ldur	x8, [x29, #-48]
	str	x8, [sp, #24]
	b	.LBB0_40
.LBB0_40:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	b.le	.LBB0_47
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_40 Depth=1
	ldur	x8, [x29, #-56]
	subs	x8, x8, #0
	b.ge	.LBB0_45
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_40 Depth=1
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_44
	b	.LBB0_43
.LBB0_43:
	b	.LBB0_47
.LBB0_44:                               //   in Loop: Header=BB0_40 Depth=1
	ldr	x8, [sp, #56]
	subs	x8, x8, #8
	str	x8, [sp, #56]
	adrp	x8, DECDPUN
	ldr	x8, [x8, :lo12:DECDPUN]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	b	.LBB0_45
.LBB0_45:                               //   in Loop: Header=BB0_40 Depth=1
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-56]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #40]
	bl	TODIGIT
	b	.LBB0_46
.LBB0_46:                               //   in Loop: Header=BB0_40 Depth=1
	ldur	x8, [x29, #-48]
	subs	x8, x8, #1
	stur	x8, [x29, #-48]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	ldur	x8, [x29, #-56]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	b	.LBB0_40
.LBB0_47:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	ldrsw	x9, [x9, #16]
	subs	x8, x8, x9
	b.ge	.LBB0_56
	b	.LBB0_48
.LBB0_48:
	ldr	x9, [sp, #64]
	mov	w8, #46
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	.LBB0_49
.LBB0_49:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-56]
	subs	x8, x8, #0
	b.ge	.LBB0_53
	b	.LBB0_50
.LBB0_50:                               //   in Loop: Header=BB0_49 Depth=1
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_52
	b	.LBB0_51
.LBB0_51:
	b	.LBB0_55
.LBB0_52:                               //   in Loop: Header=BB0_49 Depth=1
	ldr	x8, [sp, #56]
	subs	x8, x8, #8
	str	x8, [sp, #56]
	adrp	x8, DECDPUN
	ldr	x8, [x8, :lo12:DECDPUN]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	b	.LBB0_53
.LBB0_53:                               //   in Loop: Header=BB0_49 Depth=1
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-56]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #40]
	bl	TODIGIT
	b	.LBB0_54
.LBB0_54:                               //   in Loop: Header=BB0_49 Depth=1
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	ldur	x8, [x29, #-56]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	b	.LBB0_49
.LBB0_55:
	b	.LBB0_61
.LBB0_56:
	b	.LBB0_57
.LBB0_57:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	b.le	.LBB0_60
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_57 Depth=1
	ldr	x9, [sp, #64]
	mov	w8, #48
	strb	w8, [x9]
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_57 Depth=1
	ldur	x8, [x29, #-48]
	subs	x8, x8, #1
	stur	x8, [x29, #-48]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	.LBB0_57
.LBB0_60:
	b	.LBB0_61
.LBB0_61:
	b	.LBB0_74
.LBB0_62:
	ldr	x9, [sp, #64]
	mov	w8, #48
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	ldr	x9, [sp, #64]
	mov	w8, #46
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	.LBB0_63
.LBB0_63:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-48]
	subs	x8, x8, #0
	b.ge	.LBB0_66
	b	.LBB0_64
.LBB0_64:                               //   in Loop: Header=BB0_63 Depth=1
	ldr	x9, [sp, #64]
	mov	w8, #48
	strb	w8, [x9]
	b	.LBB0_65
.LBB0_65:                               //   in Loop: Header=BB0_63 Depth=1
	ldur	x8, [x29, #-48]
	add	x8, x8, #1
	stur	x8, [x29, #-48]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	.LBB0_63
.LBB0_66:
	b	.LBB0_67
.LBB0_67:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-56]
	subs	x8, x8, #0
	b.ge	.LBB0_71
	b	.LBB0_68
.LBB0_68:                               //   in Loop: Header=BB0_67 Depth=1
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_70
	b	.LBB0_69
.LBB0_69:
	b	.LBB0_73
.LBB0_70:                               //   in Loop: Header=BB0_67 Depth=1
	ldr	x8, [sp, #56]
	subs	x8, x8, #8
	str	x8, [sp, #56]
	adrp	x8, DECDPUN
	ldr	x8, [x8, :lo12:DECDPUN]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	ldr	x8, [sp, #56]
	ldr	x8, [x8]
	str	x8, [sp, #48]
	b	.LBB0_71
.LBB0_71:                               //   in Loop: Header=BB0_67 Depth=1
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-56]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #40]
	bl	TODIGIT
	b	.LBB0_72
.LBB0_72:                               //   in Loop: Header=BB0_67 Depth=1
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	ldur	x8, [x29, #-56]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	b	.LBB0_67
.LBB0_73:
	b	.LBB0_74
.LBB0_74:
	ldur	x8, [x29, #-40]
	cbz	x8, .LBB0_85
	b	.LBB0_75
.LBB0_75:
	str	wzr, [sp, #20]
	ldr	x9, [sp, #64]
	mov	w8, #69
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	ldr	x9, [sp, #64]
	mov	w8, #43
	strb	w8, [x9]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	ldur	x8, [x29, #-40]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-40]
	subs	x8, x8, #0
	b.ge	.LBB0_77
	b	.LBB0_76
.LBB0_76:
	ldr	x8, [sp, #64]
	subs	x9, x8, #1
	mov	w8, #45
	strb	w8, [x9]
	ldur	x9, [x29, #-40]
	mov	x8, xzr
	subs	x8, x8, x9
	str	x8, [sp, #48]
	b	.LBB0_77
.LBB0_77:
	mov	x8, #9
	stur	x8, [x29, #-56]
	b	.LBB0_78
.LBB0_78:                               // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-56]
	tbnz	x8, #63, .LBB0_84
	b	.LBB0_79
.LBB0_79:                               //   in Loop: Header=BB0_78 Depth=1
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-56]
	ldr	x2, [sp, #64]
	ldr	x3, [sp, #40]
	bl	TODIGIT
	ldr	x8, [sp, #64]
	ldrb	w8, [x8]
	subs	w8, w8, #48
	b.ne	.LBB0_82
	b	.LBB0_80
.LBB0_80:                               //   in Loop: Header=BB0_78 Depth=1
	ldr	w8, [sp, #20]
	cbnz	w8, .LBB0_82
	b	.LBB0_81
.LBB0_81:                               //   in Loop: Header=BB0_78 Depth=1
	b	.LBB0_83
.LBB0_82:                               //   in Loop: Header=BB0_78 Depth=1
	mov	w8, #1
	str	w8, [sp, #20]
	ldr	x8, [sp, #64]
	add	x8, x8, #1
	str	x8, [sp, #64]
	b	.LBB0_83
.LBB0_83:                               //   in Loop: Header=BB0_78 Depth=1
	ldur	x8, [x29, #-56]
	subs	x8, x8, #1
	stur	x8, [x29, #-56]
	b	.LBB0_78
.LBB0_84:
	b	.LBB0_85
.LBB0_85:
	ldr	x8, [sp, #64]
	strb	wzr, [x8]
	b	.LBB0_86
.LBB0_86:
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	decToString, .Lfunc_end0-decToString
                                        // -- End function
	.type	DECSPECIAL,@object              // @DECSPECIAL
	.bss
	.globl	DECSPECIAL
	.p2align	2
DECSPECIAL:
	.word	0                               // 0x0
	.size	DECSPECIAL, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Inf"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"inity"
	.size	.L.str.1, 6
	.type	DECSNAN,@object                 // @DECSNAN
	.bss
	.globl	DECSNAN
	.p2align	2
DECSNAN:
	.word	0                               // 0x0
	.size	DECSNAN, 4
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"NaN"
	.size	.L.str.2, 4
	.type	DECDPUN,@object                 // @DECDPUN
	.bss
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.xword	0                               // 0x0
	.size	DECDPUN, 8
	.type	DECUNCONT,@object               // @DECUNCONT
	.globl	DECUNCONT
	.p2align	2
DECUNCONT:
	.word	0                               // 0x0
	.size	DECUNCONT, 4
	.type	DECUNRESU,@object               // @DECUNRESU
	.globl	DECUNRESU
	.p2align	2
DECUNRESU:
	.word	0                               // 0x0
	.size	DECUNRESU, 4
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decToString
	.addrsig_sym D2U
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decNumberIsInfinite
	.addrsig_sym strcpy
	.addrsig_sym MSUDIGITS
	.addrsig_sym TODIGIT
	.addrsig_sym ISZERO
	.addrsig_sym DECSPECIAL
	.addrsig_sym DECSNAN
	.addrsig_sym DECDPUN