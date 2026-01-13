	.text
	.globl	decCompareOp                    // -- Begin function decCompareOp
	.p2align	2
	.type	decCompareOp,@function
decCompareOp:                           // @decCompareOp
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	stur	x4, [x29, #-40]
	stur	x5, [x29, #-48]
	stur	wzr, [x29, #-52]
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPTOTAL
	ldr	x9, [x9, :lo12:COMPTOTAL]
	subs	x8, x8, x9
	b.ne	.LBB0_7
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNegative
	str	w0, [sp, #44]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	decNumberIsNegative
	mov	w8, w0
	ldr	w0, [sp, #44]                   // 4-byte Folded Reload
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	and	w8, w0, w8
	cbz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_48
.LBB0_4:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNegative
	subs	w8, w0, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #40]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	decNumberIsNegative
	ldr	w8, [sp, #40]                   // 4-byte Folded Reload
	and	w8, w8, w0
	cbz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_48
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	ldur	x9, [x29, #-24]
	ldr	w9, [x9, #8]
	orr	w8, w8, w9
	adrp	x9, DECSNAN
	ldr	w9, [x9, :lo12:DECSNAN]
	adrp	x10, DECNAN
	ldr	w10, [x10, :lo12:DECNAN]
	orr	w9, w9, w10
	and	w8, w8, w9
	stur	w8, [x29, #-56]
	ldur	w8, [x29, #-56]
	cbz	w8, .LBB0_43
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPARE
	ldr	x9, [x9, :lo12:COMPARE]
	subs	x8, x8, x9
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:
	b	.LBB0_42
.LBB0_10:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPSIG
	ldr	x9, [x9, :lo12:COMPSIG]
	subs	x8, x8, x9
	b.ne	.LBB0_12
	b	.LBB0_11
.LBB0_11:
	adrp	x8, DEC_Invalid_operation
	ldr	w8, [x8, :lo12:DEC_Invalid_operation]
	adrp	x9, DEC_sNaN
	ldr	w9, [x9, :lo12:DEC_sNaN]
	orr	w10, w8, w9
	ldur	x9, [x29, #-48]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_41
.LBB0_12:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPTOTAL
	ldr	x9, [x9, :lo12:COMPTOTAL]
	subs	x8, x8, x9
	b.ne	.LBB0_30
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNaN
	cbnz	w0, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_27
.LBB0_15:
	ldur	x0, [x29, #-24]
	bl	decNumberIsNaN
	cbnz	w0, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_26
.LBB0_17:
	ldur	x0, [x29, #-16]
	bl	decNumberIsSNaN
	cbz	x0, .LBB0_20
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-24]
	bl	decNumberIsQNaN
	cbz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_25
.LBB0_20:
	ldur	x0, [x29, #-16]
	bl	decNumberIsQNaN
	cbz	x0, .LBB0_23
	b	.LBB0_21
.LBB0_21:
	ldur	x0, [x29, #-24]
	bl	decNumberIsSNaN
	cbz	x0, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_24
.LBB0_23:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-16]
	ldr	x0, [x8]
	bl	D2U
	str	w0, [sp, #20]                   // 4-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #16]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	x0, [x8]
	bl	D2U
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	mov	w3, w0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	mov	w4, wzr
	bl	decUnitCompare
	stur	w0, [x29, #-52]
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_25
.LBB0_25:
	b	.LBB0_26
.LBB0_26:
	b	.LBB0_27
.LBB0_27:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNegative
	cbz	w0, .LBB0_29
	b	.LBB0_28
.LBB0_28:
	ldur	w9, [x29, #-52]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-52]
	b	.LBB0_29
.LBB0_29:
	b	.LBB0_48
.LBB0_30:
	ldur	w8, [x29, #-56]
	adrp	x9, DECSNAN
	ldr	w9, [x9, :lo12:DECSNAN]
	and	w8, w8, w9
	cbz	w8, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	b	.LBB0_39
.LBB0_32:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNaN
	cbz	w0, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	ldur	x0, [x29, #-24]
	bl	decNumberIsNaN
	cbnz	w0, .LBB0_38
	b	.LBB0_34
.LBB0_34:
	adrp	x8, COMPMAX
	ldr	x8, [x8, :lo12:COMPMAX]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, DECNAN
	ldr	w9, [x9, :lo12:DECNAN]
	and	w8, w8, w9
	cbz	w8, .LBB0_36
	b	.LBB0_35
.LBB0_35:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_37
.LBB0_36:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_37
.LBB0_37:
	b	.LBB0_48
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	b	.LBB0_40
.LBB0_40:
	b	.LBB0_41
.LBB0_41:
	b	.LBB0_42
.LBB0_42:
	adrp	x8, COMPNAN
	ldr	x8, [x8, :lo12:COMPNAN]
	stur	x8, [x29, #-40]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	ldur	x3, [x29, #-32]
	ldur	x4, [x29, #-48]
	bl	decNaNs
	b	.LBB0_48
.LBB0_43:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPMAXMAG
	ldr	x9, [x9, :lo12:COMPMAXMAG]
	subs	x8, x8, x9
	b.eq	.LBB0_45
	b	.LBB0_44
.LBB0_44:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPMINMAG
	ldr	x9, [x9, :lo12:COMPMINMAG]
	subs	x8, x8, x9
	b.ne	.LBB0_46
	b	.LBB0_45
.LBB0_45:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	mov	w2, #1
	bl	decCompare
	stur	w0, [x29, #-52]
	b	.LBB0_47
.LBB0_46:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	mov	w2, wzr
	bl	decCompare
	stur	w0, [x29, #-52]
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_48
.LBB0_48:
	ldur	w8, [x29, #-52]
	adrp	x9, BADINT
	ldr	w9, [x9, :lo12:BADINT]
	subs	w8, w8, w9
	b.ne	.LBB0_50
	b	.LBB0_49
.LBB0_49:
	adrp	x8, DEC_Insufficient_storage
	ldr	w10, [x8, :lo12:DEC_Insufficient_storage]
	ldur	x9, [x29, #-48]
	ldr	w8, [x9]
	orr	w8, w8, w10
	str	w8, [x9]
	b	.LBB0_97
.LBB0_50:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPARE
	ldr	x9, [x9, :lo12:COMPARE]
	subs	x8, x8, x9
	b.eq	.LBB0_53
	b	.LBB0_51
.LBB0_51:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPSIG
	ldr	x9, [x9, :lo12:COMPSIG]
	subs	x8, x8, x9
	b.eq	.LBB0_53
	b	.LBB0_52
.LBB0_52:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPTOTAL
	ldr	x9, [x9, :lo12:COMPTOTAL]
	subs	x8, x8, x9
	b.ne	.LBB0_68
	b	.LBB0_53
.LBB0_53:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPTOTAL
	ldr	x9, [x9, :lo12:COMPTOTAL]
	subs	x8, x8, x9
	b.ne	.LBB0_63
	b	.LBB0_54
.LBB0_54:
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_63
	b	.LBB0_55
.LBB0_55:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #24]
	subs	x8, x8, x9
	b.eq	.LBB0_62
	b	.LBB0_56
.LBB0_56:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #24]
	subs	x8, x8, x9
	b.ge	.LBB0_58
	b	.LBB0_57
.LBB0_57:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_59
.LBB0_58:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_59
.LBB0_59:
	ldur	x0, [x29, #-16]
	bl	decNumberIsNegative
	cbz	w0, .LBB0_61
	b	.LBB0_60
.LBB0_60:
	ldur	w9, [x29, #-52]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-52]
	b	.LBB0_61
.LBB0_61:
	b	.LBB0_62
.LBB0_62:
	b	.LBB0_63
.LBB0_63:
	ldur	x0, [x29, #-8]
	bl	decNumberZero
	ldur	w8, [x29, #-52]
	cbz	w8, .LBB0_67
	b	.LBB0_64
.LBB0_64:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #16]
	mov	w8, #1
	str	w8, [x9]
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	b.ge	.LBB0_66
	b	.LBB0_65
.LBB0_65:
	adrp	x8, DECNEG
	ldr	w8, [x8, :lo12:DECNEG]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	b	.LBB0_66
.LBB0_66:
	b	.LBB0_67
.LBB0_67:
	b	.LBB0_96
.LBB0_68:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPNAN
	ldr	x9, [x9, :lo12:COMPNAN]
	subs	x8, x8, x9
	b.ne	.LBB0_70
	b	.LBB0_69
.LBB0_69:
	b	.LBB0_95
.LBB0_70:
	stur	wzr, [x29, #-60]
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_88
	b	.LBB0_71
.LBB0_71:
	ldur	x8, [x29, #-16]
	ldr	w8, [x8, #8]
	adrp	x9, DECNEG
	ldr	w10, [x9, :lo12:DECNEG]
	and	w8, w8, w10
	str	w8, [sp, #52]
	ldur	x8, [x29, #-24]
	ldr	w8, [x8, #8]
	ldr	w9, [x9, :lo12:DECNEG]
	and	w8, w8, w9
	str	w8, [sp, #48]
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #48]
	subs	w8, w8, w9
	b.eq	.LBB0_76
	b	.LBB0_72
.LBB0_72:
	ldr	w8, [sp, #52]
	cbz	w8, .LBB0_74
	b	.LBB0_73
.LBB0_73:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_75
.LBB0_74:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_75
.LBB0_75:
	b	.LBB0_87
.LBB0_76:
	ldr	w8, [sp, #52]
	cbz	w8, .LBB0_82
	b	.LBB0_77
.LBB0_77:
	ldr	w8, [sp, #48]
	cbz	w8, .LBB0_82
	b	.LBB0_78
.LBB0_78:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #24]
	subs	x8, x8, x9
	b.ge	.LBB0_80
	b	.LBB0_79
.LBB0_79:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_81
.LBB0_80:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_81
.LBB0_81:
	b	.LBB0_86
.LBB0_82:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldur	x9, [x29, #-24]
	ldr	x9, [x9, #24]
	subs	x8, x8, x9
	b.le	.LBB0_84
	b	.LBB0_83
.LBB0_83:
	mov	w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_85
.LBB0_84:
	mov	w8, #-1
	stur	w8, [x29, #-52]
	b	.LBB0_85
.LBB0_85:
	b	.LBB0_86
.LBB0_86:
	b	.LBB0_87
.LBB0_87:
	b	.LBB0_88
.LBB0_88:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPMIN
	ldr	x9, [x9, :lo12:COMPMIN]
	subs	x8, x8, x9
	b.eq	.LBB0_90
	b	.LBB0_89
.LBB0_89:
	ldur	x8, [x29, #-40]
	adrp	x9, COMPMINMAG
	ldr	x9, [x9, :lo12:COMPMINMAG]
	subs	x8, x8, x9
	b.ne	.LBB0_91
	b	.LBB0_90
.LBB0_90:
	ldur	w9, [x29, #-52]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-52]
	b	.LBB0_91
.LBB0_91:
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	b.le	.LBB0_93
	b	.LBB0_92
.LBB0_92:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_94
.LBB0_93:
	ldur	x8, [x29, #-24]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	b	.LBB0_94
.LBB0_94:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [sp, #56]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #56]
	ldur	x2, [x29, #-32]
	ldur	x4, [x29, #-48]
	sub	x3, x29, #60
	str	x3, [sp]                        // 8-byte Folded Spill
	bl	decCopyFit
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-32]
	ldur	x3, [x29, #-48]
	bl	decFinish
	b	.LBB0_95
.LBB0_95:
	b	.LBB0_96
.LBB0_96:
	b	.LBB0_97
.LBB0_97:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	decCompareOp, .Lfunc_end0-decCompareOp
                                        // -- End function
	.type	COMPTOTAL,@object               // @COMPTOTAL
	.bss
	.globl	COMPTOTAL
	.p2align	3
COMPTOTAL:
	.xword	0                               // 0x0
	.size	COMPTOTAL, 8
	.type	DECSNAN,@object                 // @DECSNAN
	.globl	DECSNAN
	.p2align	2
DECSNAN:
	.word	0                               // 0x0
	.size	DECSNAN, 4
	.type	DECNAN,@object                  // @DECNAN
	.globl	DECNAN
	.p2align	2
DECNAN:
	.word	0                               // 0x0
	.size	DECNAN, 4
	.type	COMPARE,@object                 // @COMPARE
	.globl	COMPARE
	.p2align	3
COMPARE:
	.xword	0                               // 0x0
	.size	COMPARE, 8
	.type	COMPSIG,@object                 // @COMPSIG
	.globl	COMPSIG
	.p2align	3
COMPSIG:
	.xword	0                               // 0x0
	.size	COMPSIG, 8
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
	.type	DEC_sNaN,@object                // @DEC_sNaN
	.globl	DEC_sNaN
	.p2align	2
DEC_sNaN:
	.word	0                               // 0x0
	.size	DEC_sNaN, 4
	.type	COMPMAX,@object                 // @COMPMAX
	.globl	COMPMAX
	.p2align	3
COMPMAX:
	.xword	0                               // 0x0
	.size	COMPMAX, 8
	.type	COMPNAN,@object                 // @COMPNAN
	.globl	COMPNAN
	.p2align	3
COMPNAN:
	.xword	0                               // 0x0
	.size	COMPNAN, 8
	.type	COMPMAXMAG,@object              // @COMPMAXMAG
	.globl	COMPMAXMAG
	.p2align	3
COMPMAXMAG:
	.xword	0                               // 0x0
	.size	COMPMAXMAG, 8
	.type	COMPMINMAG,@object              // @COMPMINMAG
	.globl	COMPMINMAG
	.p2align	3
COMPMINMAG:
	.xword	0                               // 0x0
	.size	COMPMINMAG, 8
	.type	BADINT,@object                  // @BADINT
	.globl	BADINT
	.p2align	2
BADINT:
	.word	0                               // 0x0
	.size	BADINT, 4
	.type	DEC_Insufficient_storage,@object // @DEC_Insufficient_storage
	.globl	DEC_Insufficient_storage
	.p2align	2
DEC_Insufficient_storage:
	.word	0                               // 0x0
	.size	DEC_Insufficient_storage, 4
	.type	DECNEG,@object                  // @DECNEG
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	COMPMIN,@object                 // @COMPMIN
	.globl	COMPMIN
	.p2align	3
COMPMIN:
	.xword	0                               // 0x0
	.size	COMPMIN, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decNumberIsNaN
	.addrsig_sym decNumberIsSNaN
	.addrsig_sym decNumberIsQNaN
	.addrsig_sym decUnitCompare
	.addrsig_sym D2U
	.addrsig_sym decNaNs
	.addrsig_sym decCompare
	.addrsig_sym decNumberZero
	.addrsig_sym decCopyFit
	.addrsig_sym decFinish
	.addrsig_sym COMPTOTAL
	.addrsig_sym DECSNAN
	.addrsig_sym DECNAN
	.addrsig_sym COMPARE
	.addrsig_sym COMPSIG
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DEC_sNaN
	.addrsig_sym COMPMAX
	.addrsig_sym COMPNAN
	.addrsig_sym COMPMAXMAG
	.addrsig_sym COMPMINMAG
	.addrsig_sym BADINT
	.addrsig_sym DEC_Insufficient_storage
	.addrsig_sym DECNEG
	.addrsig_sym COMPMIN