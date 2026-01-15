	.text
	.globl	decPackedToNumber               // -- Begin function decPackedToNumber
	.p2align	2
	.type	decPackedToNumber,@function
decPackedToNumber:                      // @decPackedToNumber
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	x2, [x29, #-32]
	str	x3, [sp, #40]
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-20]
	add	x8, x8, x9, lsl #2
	subs	x8, x8, #4
	str	x8, [sp, #32]
	ldr	x8, [sp, #40]
	ldr	x8, [x8, #16]
	str	x8, [sp, #8]
	str	wzr, [sp]
	ldr	x0, [sp, #40]
	bl	decNumberZero
	ldur	x8, [x29, #-16]
	ldur	w9, [x29, #-20]
	subs	w9, w9, #1
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	and	w8, w8, #0xf
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	adrp	x9, DECPMINUS
	ldr	w9, [x9, :lo12:DECPMINUS]
	subs	w8, w8, w9
	b.eq	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #20]
	adrp	x9, DECPMINUSALT
	ldr	w9, [x9, :lo12:DECPMINUSALT]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	adrp	x8, DECNEG
	ldr	w8, [x8, :lo12:DECNEG]
	ldr	x9, [sp, #40]
	str	w8, [x9, #8]
	b	.LBB0_6
.LBB0_3:
	ldr	w8, [sp, #20]
	subs	w8, w8, #9
	b.gt	.LBB0_5
	b	.LBB0_4
.LBB0_4:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_44
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #4
	str	x8, [sp, #24]
	b	.LBB0_7
.LBB0_9:
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	lsl	x8, x8, #1
	add	x8, x8, #1
                                        // kill: def $w8 killed $w8 killed $x8
	str	w8, [sp, #4]
	ldr	x8, [sp, #24]
	ldr	w8, [x8]
	and	w8, w8, #0xf0
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #4]
	cbz	w8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	.LBB0_13
.LBB0_13:
	ldur	x8, [x29, #-32]
	ldr	w9, [x8]
	mov	w8, wzr
	subs	w8, w8, w9
	ldr	x9, [sp, #40]
	str	w8, [x9, #4]
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	tbnz	w8, #31, .LBB0_17
	b	.LBB0_14
.LBB0_14:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	subs	w8, w8, #1
	adrp	x9, DECNUMMAXE
	ldr	w10, [x9, :lo12:DECNUMMAXE]
	mov	w9, wzr
	subs	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldr	x0, [sp, #40]
	bl	decNumberZero
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_44
.LBB0_16:
	b	.LBB0_21
.LBB0_17:
	ldur	x8, [x29, #-32]
	ldr	w8, [x8]
	adrp	x9, DECNUMMAXE
	ldr	w10, [x9, :lo12:DECNUMMAXE]
	mov	w9, wzr
	subs	w9, w9, w10
	subs	w8, w8, w9
	b.lt	.LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldr	x8, [sp, #40]
	ldr	w8, [x8]
	ldur	x9, [x29, #-32]
	ldr	w9, [x9]
	subs	w8, w8, w9
	subs	w8, w8, #1
	adrp	x9, DECNUMMAXE
	ldr	w9, [x9, :lo12:DECNUMMAXE]
	subs	w8, w8, w9
	b.le	.LBB0_20
	b	.LBB0_19
.LBB0_19:
	ldr	x0, [sp, #40]
	bl	decNumberZero
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_44
.LBB0_20:
	b	.LBB0_21
.LBB0_21:
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_23
	b	.LBB0_22
.LBB0_22:
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	.LBB0_44
.LBB0_23:
	b	.LBB0_24
.LBB0_24:                               // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	and	w8, w8, #0xf0
	lsr	w8, w8, #4
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #9
	b.le	.LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	x0, [sp, #40]
	bl	decNumberZero
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_44
.LBB0_26:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp]
	cbnz	w8, .LBB0_28
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_24 Depth=1
	ldrsw	x8, [sp, #20]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_29
.LBB0_28:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w9, [sp, #20]
	adrp	x10, DECPOWERS
	ldr	x10, [x10, :lo12:DECPOWERS]
	ldrsw	x11, [sp]
	ldr	w10, [x10, x11, lsl #2]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_31
	b	.LBB0_30
.LBB0_30:
	b	.LBB0_43
.LBB0_31:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	ldr	w8, [sp]
	adrp	x9, DECDPUN
	ldr	w9, [x9, :lo12:DECDPUN]
	subs	w8, w8, w9
	b.ne	.LBB0_33
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	str	wzr, [sp]
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	x8, [sp, #32]
	subs	x8, x8, #4
	str	x8, [sp, #32]
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	and	w8, w8, #0xf
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	subs	w8, w8, #9
	b.le	.LBB0_35
	b	.LBB0_34
.LBB0_34:
	ldr	x0, [sp, #40]
	bl	decNumberZero
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_44
.LBB0_35:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp]
	cbnz	w8, .LBB0_37
	b	.LBB0_36
.LBB0_36:                               //   in Loop: Header=BB0_24 Depth=1
	ldrsw	x8, [sp, #20]
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_38
.LBB0_37:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	w9, [sp, #20]
	adrp	x10, DECPOWERS
	ldr	x10, [x10, :lo12:DECPOWERS]
	ldrsw	x11, [sp]
	ldr	w10, [x10, x11, lsl #2]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw
	ldr	x9, [sp, #8]
	str	x8, [x9]
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	ldr	w8, [sp, #4]
	cbnz	w8, .LBB0_40
	b	.LBB0_39
.LBB0_39:
	b	.LBB0_43
.LBB0_40:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	ldr	w8, [sp]
	adrp	x9, DECDPUN
	ldr	w9, [x9, :lo12:DECDPUN]
	subs	w8, w8, w9
	b.ne	.LBB0_42
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_24 Depth=1
	ldr	x8, [sp, #8]
	add	x8, x8, #8
	str	x8, [sp, #8]
	str	wzr, [sp]
	b	.LBB0_42
.LBB0_42:                               //   in Loop: Header=BB0_24 Depth=1
	b	.LBB0_24
.LBB0_43:
	ldr	x8, [sp, #40]
	stur	x8, [x29, #-8]
	b	.LBB0_44
.LBB0_44:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	decPackedToNumber, .Lfunc_end0-decPackedToNumber
                                        // -- End function
	.type	DECPMINUS,@object               // @DECPMINUS
	.bss
	.globl	DECPMINUS
	.p2align	2
DECPMINUS:
	.word	0                               // 0x0
	.size	DECPMINUS, 4
	.type	DECPMINUSALT,@object            // @DECPMINUSALT
	.globl	DECPMINUSALT
	.p2align	2
DECPMINUSALT:
	.word	0                               // 0x0
	.size	DECPMINUSALT, 4
	.type	DECNEG,@object                  // @DECNEG
	.globl	DECNEG
	.p2align	2
DECNEG:
	.word	0                               // 0x0
	.size	DECNEG, 4
	.type	DECNUMMAXE,@object              // @DECNUMMAXE
	.section	.rodata,"a",@progbits
	.globl	DECNUMMAXE
	.p2align	2
DECNUMMAXE:
	.word	0                               // 0x0
	.size	DECNUMMAXE, 4
	.type	DECPOWERS,@object               // @DECPOWERS
	.bss
	.globl	DECPOWERS
	.p2align	3
DECPOWERS:
	.xword	0
	.size	DECPOWERS, 8
	.type	DECDPUN,@object                 // @DECDPUN
	.globl	DECDPUN
	.p2align	2
DECDPUN:
	.word	0                               // 0x0
	.size	DECDPUN, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberZero
	.addrsig_sym DECPMINUS
	.addrsig_sym DECPMINUSALT
	.addrsig_sym DECNEG
	.addrsig_sym DECNUMMAXE
	.addrsig_sym DECPOWERS
	.addrsig_sym DECDPUN