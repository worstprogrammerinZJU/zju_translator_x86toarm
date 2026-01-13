	.text
	.p2align	2                               // -- Begin function getpatt
	.type	getpatt,@function
getpatt:                                // @getpatt
// %bb.0:
	sub	sp, sp, #144
	stp	x29, x30, [sp, #128]            // 16-byte Folded Spill
	add	x29, sp, #128
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_type
	subs	w8, w0, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	subs	x8, x8, #4
	b.hi	.LBB0_23
// %bb.1:
	ldr	x11, [sp, #56]                  // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	sub	x2, x29, #48
	bl	lua_tolstring
	stur	x0, [x29, #-56]
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-48]
	mov	w1, w8
	bl	newpatt
	stur	x0, [x29, #-32]
	stur	xzr, [x29, #-40]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	b.hs	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-40]
	add	x0, x8, x9, lsl #2
	adrp	x8, IChar
	ldr	w1, [x8, :lo12:IChar]
	ldur	x8, [x29, #-56]
	ldur	x9, [x29, #-40]
	ldrb	w3, [x8, x9]
	mov	w2, wzr
	bl	setinstaux
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #1
	stur	x8, [x29, #-40]
	b	.LBB0_3
.LBB0_6:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_replace
	b	.LBB0_24
.LBB0_7:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_tointeger
	stur	w0, [x29, #-60]
	ldur	w8, [x29, #-60]
	cbnz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	mov	w1, wzr
	bl	newpatt
	stur	x0, [x29, #-32]
	b	.LBB0_16
.LBB0_9:
	ldur	w8, [x29, #-60]
	subs	w8, w8, #0
	b.le	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-60]
	mov	w2, wzr
	mov	x3, xzr
	bl	any
	stur	x0, [x29, #-32]
	b	.LBB0_15
.LBB0_11:
	ldur	w9, [x29, #-60]
	mov	w8, wzr
	subs	w8, w8, w9
	adrp	x9, UCHAR_MAX
	ldr	w9, [x9, :lo12:UCHAR_MAX]
	subs	w8, w8, w9
	b.gt	.LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldur	x0, [x29, #-8]
	mov	w1, #2
	str	w1, [sp, #48]                   // 4-byte Folded Spill
	bl	newpatt
	ldr	w2, [sp, #48]                   // 4-byte Folded Reload
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	adrp	x8, ITestAny
	ldr	w1, [x8, :lo12:ITestAny]
	ldur	w9, [x29, #-60]
	mov	w8, wzr
	str	w8, [sp, #52]                   // 4-byte Folded Spill
	subs	w3, w8, w9
	bl	setinstaux
	ldr	w2, [sp, #52]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-32]
	add	x0, x8, #4
	adrp	x8, IFail
	ldr	w1, [x8, :lo12:IFail]
	bl	setinst
	b	.LBB0_14
.LBB0_13:
	add	x3, sp, #64
	mov	w8, #2
	str	w8, [sp, #64]
	ldur	x0, [x29, #-8]
	ldur	w9, [x29, #-60]
	mov	w8, wzr
	str	w8, [sp, #44]                   // 4-byte Folded Spill
	subs	w8, w8, w9
	adrp	x9, UCHAR_MAX
	str	x9, [sp, #32]                   // 8-byte Folded Spill
	ldr	w9, [x9, :lo12:UCHAR_MAX]
	subs	w1, w8, w9
	mov	w2, #3
	bl	any
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	adrp	x9, ITestAny
	ldr	w1, [x9, :lo12:ITestAny]
	ldr	w9, [sp, #64]
	add	w2, w9, #1
	ldr	w3, [x8, :lo12:UCHAR_MAX]
	bl	setinstaux
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldur	x9, [x29, #-32]
	add	x0, x9, #4
	adrp	x9, IChoice
	ldr	w1, [x9, :lo12:IChoice]
	ldr	w2, [sp, #64]
	ldr	w3, [x8, :lo12:UCHAR_MAX]
	bl	setinstaux
	ldr	w2, [sp, #44]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-32]
	ldrsw	x9, [sp, #64]
	add	x0, x8, x9, lsl #2
	adrp	x8, IFailTwice
	ldr	w1, [x8, :lo12:IFailTwice]
	bl	setinst
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_replace
	b	.LBB0_24
.LBB0_17:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_toboolean
	cbz	w0, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldur	x0, [x29, #-8]
	mov	w1, wzr
	bl	newpatt
	stur	x0, [x29, #-32]
	b	.LBB0_20
.LBB0_19:
	ldur	x0, [x29, #-8]
	mov	w1, #1
	bl	newpatt
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	adrp	x8, IFail
	ldr	w1, [x8, :lo12:IFail]
	mov	w2, wzr
	bl	setinst
	b	.LBB0_20
.LBB0_20:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_replace
	b	.LBB0_24
.LBB0_21:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	fix_l
	stur	x0, [x29, #-32]
	b	.LBB0_24
.LBB0_22:
	ldur	x0, [x29, #-8]
	mov	w1, #2
	bl	newpatt
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	adrp	x8, IOpenCapture
	ldr	w8, [x8, :lo12:IOpenCapture]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	value2fenv
	ldr	w1, [sp, #12]                   // 4-byte Folded Reload
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x8, Cruntime
	ldr	w3, [x8, :lo12:Cruntime]
	mov	w4, wzr
	str	w4, [sp, #28]                   // 4-byte Folded Spill
	bl	setinstcap
	ldr	w4, [sp, #28]                   // 4-byte Folded Reload
	ldur	x8, [x29, #-32]
	add	x0, x8, #4
	adrp	x8, ICloseRunTime
	ldr	w1, [x8, :lo12:ICloseRunTime]
	adrp	x8, Cclose
	ldr	w3, [x8, :lo12:Cclose]
	mov	w2, w4
	bl	setinstcap
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	lua_replace
	b	.LBB0_24
.LBB0_23:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	checkpattern
	stur	x0, [x29, #-32]
	b	.LBB0_24
.LBB0_24:
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	pattsize
	ldur	x8, [x29, #-24]
	str	w0, [x8]
	b	.LBB0_26
.LBB0_26:
	ldur	x0, [x29, #-32]
	ldp	x29, x30, [sp, #128]            // 16-byte Folded Reload
	add	sp, sp, #144
	ret
.Lfunc_end0:
	.size	getpatt, .Lfunc_end0-getpatt
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_22-.Ltmp0
	.word	.LBB0_17-.Ltmp0
                                        // -- End function
	.type	IChar,@object                   // @IChar
	.bss
	.globl	IChar
	.p2align	2
IChar:
	.word	0                               // 0x0
	.size	IChar, 4
	.type	UCHAR_MAX,@object               // @UCHAR_MAX
	.globl	UCHAR_MAX
	.p2align	2
UCHAR_MAX:
	.word	0                               // 0x0
	.size	UCHAR_MAX, 4
	.type	ITestAny,@object                // @ITestAny
	.globl	ITestAny
	.p2align	2
ITestAny:
	.word	0                               // 0x0
	.size	ITestAny, 4
	.type	IFail,@object                   // @IFail
	.globl	IFail
	.p2align	2
IFail:
	.word	0                               // 0x0
	.size	IFail, 4
	.type	IChoice,@object                 // @IChoice
	.globl	IChoice
	.p2align	2
IChoice:
	.word	0                               // 0x0
	.size	IChoice, 4
	.type	IFailTwice,@object              // @IFailTwice
	.globl	IFailTwice
	.p2align	2
IFailTwice:
	.word	0                               // 0x0
	.size	IFailTwice, 4
	.type	IOpenCapture,@object            // @IOpenCapture
	.globl	IOpenCapture
	.p2align	2
IOpenCapture:
	.word	0                               // 0x0
	.size	IOpenCapture, 4
	.type	Cruntime,@object                // @Cruntime
	.globl	Cruntime
	.p2align	2
Cruntime:
	.word	0                               // 0x0
	.size	Cruntime, 4
	.type	ICloseRunTime,@object           // @ICloseRunTime
	.globl	ICloseRunTime
	.p2align	2
ICloseRunTime:
	.word	0                               // 0x0
	.size	ICloseRunTime, 4
	.type	Cclose,@object                  // @Cclose
	.globl	Cclose
	.p2align	2
Cclose:
	.word	0                               // 0x0
	.size	Cclose, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym getpatt
	.addrsig_sym lua_type
	.addrsig_sym lua_tolstring
	.addrsig_sym newpatt
	.addrsig_sym setinstaux
	.addrsig_sym lua_replace
	.addrsig_sym lua_tointeger
	.addrsig_sym any
	.addrsig_sym setinst
	.addrsig_sym lua_toboolean
	.addrsig_sym fix_l
	.addrsig_sym setinstcap
	.addrsig_sym value2fenv
	.addrsig_sym checkpattern
	.addrsig_sym pattsize
	.addrsig_sym IChar
	.addrsig_sym UCHAR_MAX
	.addrsig_sym ITestAny
	.addrsig_sym IFail
	.addrsig_sym IChoice
	.addrsig_sym IFailTwice
	.addrsig_sym IOpenCapture
	.addrsig_sym Cruntime
	.addrsig_sym ICloseRunTime
	.addrsig_sym Cclose