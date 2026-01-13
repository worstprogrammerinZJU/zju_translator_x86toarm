	.text
	.p2align	2                               // -- Begin function decApplyRound
	.type	decApplyRound,@function
decApplyRound:                          // @decApplyRound
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x8, [x29, #-24]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_89
.LBB0_2:
	stur	xzr, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	subs	x8, x8, #7
	b.hi	.LBB0_48
// %bb.3:
	ldr	x11, [sp, #16]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	mov	w10, #5
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ge	.LBB0_7
	b	.LBB0_5
.LBB0_5:
	ldur	x8, [x29, #-48]
	subs	x8, x8, #1
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	mov	x8, #-1
	stur	x8, [x29, #-40]
	b	.LBB0_11
.LBB0_7:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.le	.LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-48]
	cbnz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_11
.LBB0_11:
	b	.LBB0_49
.LBB0_12:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ge	.LBB0_14
	b	.LBB0_13
.LBB0_13:
	mov	x8, #-1
	stur	x8, [x29, #-40]
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_49
.LBB0_15:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #5
	b.le	.LBB0_17
	b	.LBB0_16
.LBB0_16:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_17
.LBB0_17:
	b	.LBB0_49
.LBB0_18:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #5
	b.le	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_25
.LBB0_20:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #5
	b.ne	.LBB0_24
	b	.LBB0_21
.LBB0_21:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldr	w8, [x8]
	tbz	w8, #0, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_23
.LBB0_23:
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_49
.LBB0_26:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #5
	b.lt	.LBB0_28
	b	.LBB0_27
.LBB0_27:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_28
.LBB0_28:
	b	.LBB0_49
.LBB0_29:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.le	.LBB0_31
	b	.LBB0_30
.LBB0_30:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_31
.LBB0_31:
	b	.LBB0_49
.LBB0_32:
	ldur	x0, [x29, #-8]
	bl	decNumberIsNegative
	cbz	w0, .LBB0_36
	b	.LBB0_33
.LBB0_33:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ge	.LBB0_35
	b	.LBB0_34
.LBB0_34:
	mov	x8, #-1
	stur	x8, [x29, #-40]
	b	.LBB0_35
.LBB0_35:
	b	.LBB0_39
.LBB0_36:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.le	.LBB0_38
	b	.LBB0_37
.LBB0_37:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_38
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	b	.LBB0_49
.LBB0_40:
	ldur	x0, [x29, #-8]
	bl	decNumberIsNegative
	cbnz	w0, .LBB0_44
	b	.LBB0_41
.LBB0_41:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.ge	.LBB0_43
	b	.LBB0_42
.LBB0_42:
	mov	x8, #-1
	stur	x8, [x29, #-40]
	b	.LBB0_43
.LBB0_43:
	b	.LBB0_47
.LBB0_44:
	ldur	x8, [x29, #-24]
	subs	x8, x8, #0
	b.le	.LBB0_46
	b	.LBB0_45
.LBB0_45:
	mov	x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_46
.LBB0_46:
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_49
.LBB0_48:
	adrp	x8, DEC_Invalid_context
	ldr	x10, [x8, :lo12:DEC_Invalid_context]
	ldur	x9, [x29, #-32]
	ldr	x8, [x9]
	orr	x8, x8, x10
	str	x8, [x9]
	b	.LBB0_49
.LBB0_49:
	ldur	x8, [x29, #-40]
	cbnz	x8, .LBB0_51
	b	.LBB0_50
.LBB0_50:
	b	.LBB0_89
.LBB0_51:
	ldur	x8, [x29, #-40]
	subs	x8, x8, #0
	b.le	.LBB0_68
	b	.LBB0_52
.LBB0_52:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #48]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #56]
	b	.LBB0_53
.LBB0_53:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #48]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.hi	.LBB0_63
	b	.LBB0_54
.LBB0_54:
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	adrp	x9, powers
	ldr	x9, [x9, :lo12:powers]
	ldr	x10, [sp, #48]
	ldr	w9, [x9, x10, lsl #2]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.eq	.LBB0_56
	b	.LBB0_55
.LBB0_55:
	b	.LBB0_67
.LBB0_56:
	adrp	x8, powers
	ldr	x8, [x8, :lo12:powers]
	ldr	x9, [sp, #48]
	subs	x9, x9, #1
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #56]
	str	w8, [x9]
	ldr	x8, [sp, #56]
	subs	x8, x8, #4
	str	x8, [sp, #56]
	b	.LBB0_57
.LBB0_57:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.lo	.LBB0_60
	b	.LBB0_58
.LBB0_58:                               //   in Loop: Header=BB0_57 Depth=1
	ldr	x8, [sp, #56]
	str	wzr, [x8]
	b	.LBB0_59
.LBB0_59:                               //   in Loop: Header=BB0_57 Depth=1
	ldr	x8, [sp, #56]
	subs	x8, x8, #4
	str	x8, [sp, #56]
	b	.LBB0_57
.LBB0_60:
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #16]
	add	x8, x8, #1
	str	x8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	add	x8, x8, x9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	add	x9, x9, #1
	subs	x8, x8, x9
	b.ls	.LBB0_62
	b	.LBB0_61
.LBB0_61:
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-32]
	bl	decSetOverflow
	b	.LBB0_62
.LBB0_62:
	b	.LBB0_89
.LBB0_63:                               //   in Loop: Header=BB0_53 Depth=1
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	adrp	x9, DECDPUNMAX
	ldr	w9, [x9, :lo12:DECDPUNMAX]
	subs	w8, w8, w9
	b.eq	.LBB0_65
	b	.LBB0_64
.LBB0_64:
	b	.LBB0_67
.LBB0_65:                               //   in Loop: Header=BB0_53 Depth=1
	adrp	x8, DECDPUN
	ldr	x9, [x8, :lo12:DECDPUN]
	ldr	x8, [sp, #48]
	subs	x8, x8, x9
	str	x8, [sp, #48]
	b	.LBB0_66
.LBB0_66:                               //   in Loop: Header=BB0_53 Depth=1
	ldr	x8, [sp, #56]
	add	x8, x8, #4
	str	x8, [sp, #56]
	b	.LBB0_53
.LBB0_67:
	b	.LBB0_88
.LBB0_68:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #40]
	b	.LBB0_69
.LBB0_69:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.hi	.LBB0_83
	b	.LBB0_70
.LBB0_70:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	adrp	x9, powers
	ldr	x9, [x9, :lo12:powers]
	ldr	x10, [sp, #24]
	subs	x10, x10, #1
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	b.eq	.LBB0_72
	b	.LBB0_71
.LBB0_71:
	b	.LBB0_87
.LBB0_72:
	ldr	x8, [sp, #40]
	str	x8, [sp, #32]
	adrp	x8, powers
	ldr	x8, [x8, :lo12:powers]
	ldr	x9, [sp, #24]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #1
	ldr	x9, [sp, #40]
	str	w8, [x9]
	ldr	x8, [sp, #40]
	subs	x8, x8, #4
	str	x8, [sp, #40]
	b	.LBB0_73
.LBB0_73:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #40]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.lo	.LBB0_76
	b	.LBB0_74
.LBB0_74:                               //   in Loop: Header=BB0_73 Depth=1
	adrp	x8, powers
	ldr	x8, [x8, :lo12:powers]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #1
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	.LBB0_75
.LBB0_75:                               //   in Loop: Header=BB0_73 Depth=1
	ldr	x8, [sp, #40]
	subs	x8, x8, #4
	str	x8, [sp, #40]
	b	.LBB0_73
.LBB0_76:
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #16]
	subs	x8, x8, #1
	str	x8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	add	x8, x8, #1
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #16]
	ldur	x10, [x29, #-16]
	ldr	x10, [x10, #24]
	subs	x9, x9, x10
	add	x9, x9, #1
	subs	x8, x8, x9
	b.ne	.LBB0_82
	b	.LBB0_77
.LBB0_77:
	ldr	x8, [sp, #24]
	subs	x8, x8, #1
	b.ne	.LBB0_80
	b	.LBB0_78
.LBB0_78:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	subs	x8, x8, #1
	b.ne	.LBB0_80
	b	.LBB0_79
.LBB0_79:
	ldr	x8, [sp, #32]
	str	wzr, [x8]
	b	.LBB0_81
.LBB0_80:
	adrp	x8, powers
	ldr	x8, [x8, :lo12:powers]
	ldr	x9, [sp, #24]
	subs	x9, x9, #1
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #1
	ldr	x9, [sp, #32]
	str	w8, [x9]
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #8]
	subs	x8, x8, #1
	str	x8, [x9, #8]
	b	.LBB0_81
.LBB0_81:
	ldur	x9, [x29, #-8]
	ldr	x8, [x9, #16]
	add	x8, x8, #1
	str	x8, [x9, #16]
	adrp	x8, DEC_Underflow
	ldr	x8, [x8, :lo12:DEC_Underflow]
	adrp	x9, DEC_Subnormal
	ldr	x9, [x9, :lo12:DEC_Subnormal]
	orr	x8, x8, x9
	adrp	x9, DEC_Inexact
	ldr	x9, [x9, :lo12:DEC_Inexact]
	orr	x8, x8, x9
	adrp	x9, DEC_Rounded
	ldr	x9, [x9, :lo12:DEC_Rounded]
	orr	x10, x8, x9
	ldur	x9, [x29, #-32]
	ldr	x8, [x9]
	orr	x8, x8, x10
	str	x8, [x9]
	b	.LBB0_82
.LBB0_82:
	b	.LBB0_89
.LBB0_83:                               //   in Loop: Header=BB0_69 Depth=1
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	cbz	w8, .LBB0_85
	b	.LBB0_84
.LBB0_84:
	b	.LBB0_87
.LBB0_85:                               //   in Loop: Header=BB0_69 Depth=1
	adrp	x8, DECDPUN
	ldr	x9, [x8, :lo12:DECDPUN]
	ldr	x8, [sp, #24]
	subs	x8, x8, x9
	str	x8, [sp, #24]
	b	.LBB0_86
.LBB0_86:                               //   in Loop: Header=BB0_69 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	str	x8, [sp, #40]
	b	.LBB0_69
.LBB0_87:
	b	.LBB0_88
.LBB0_88:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	mov	w0, w8
	bl	D2U
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x8, uarrone
	ldr	w2, [x8, :lo12:uarrone]
	ldur	x8, [x29, #-8]
	ldr	x5, [x8]
	ldur	x6, [x29, #-40]
	mov	w3, #1
	mov	w4, wzr
	bl	decUnitAddSub
	b	.LBB0_89
.LBB0_89:
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	decApplyRound, .Lfunc_end0-decApplyRound
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_26-.Ltmp0
	.word	.LBB0_18-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_40-.Ltmp0
	.word	.LBB0_12-.Ltmp0
	.word	.LBB0_32-.Ltmp0
	.word	.LBB0_4-.Ltmp0
                                        // -- End function
	.type	DEC_Invalid_context,@object     // @DEC_Invalid_context
	.bss
	.globl	DEC_Invalid_context
	.p2align	3
DEC_Invalid_context:
	.xword	0                               // 0x0
	.size	DEC_Invalid_context, 8
	.type	DECDPUN,@object                 // @DECDPUN
	.globl	DECDPUN
	.p2align	3
DECDPUN:
	.xword	0                               // 0x0
	.size	DECDPUN, 8
	.type	powers,@object                  // @powers
	.globl	powers
	.p2align	3
powers:
	.xword	0
	.size	powers, 8
	.type	DECDPUNMAX,@object              // @DECDPUNMAX
	.globl	DECDPUNMAX
	.p2align	2
DECDPUNMAX:
	.word	0                               // 0x0
	.size	DECDPUNMAX, 4
	.type	DEC_Underflow,@object           // @DEC_Underflow
	.globl	DEC_Underflow
	.p2align	3
DEC_Underflow:
	.xword	0                               // 0x0
	.size	DEC_Underflow, 8
	.type	DEC_Subnormal,@object           // @DEC_Subnormal
	.globl	DEC_Subnormal
	.p2align	3
DEC_Subnormal:
	.xword	0                               // 0x0
	.size	DEC_Subnormal, 8
	.type	DEC_Inexact,@object             // @DEC_Inexact
	.globl	DEC_Inexact
	.p2align	3
DEC_Inexact:
	.xword	0                               // 0x0
	.size	DEC_Inexact, 8
	.type	DEC_Rounded,@object             // @DEC_Rounded
	.globl	DEC_Rounded
	.p2align	3
DEC_Rounded:
	.xword	0                               // 0x0
	.size	DEC_Rounded, 8
	.type	uarrone,@object                 // @uarrone
	.globl	uarrone
	.p2align	2
uarrone:
	.word	0                               // 0x0
	.size	uarrone, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decApplyRound
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decSetOverflow
	.addrsig_sym decUnitAddSub
	.addrsig_sym D2U
	.addrsig_sym DEC_Invalid_context
	.addrsig_sym DECDPUN
	.addrsig_sym powers
	.addrsig_sym DECDPUNMAX
	.addrsig_sym DEC_Underflow
	.addrsig_sym DEC_Subnormal
	.addrsig_sym DEC_Inexact
	.addrsig_sym DEC_Rounded
	.addrsig_sym uarrone