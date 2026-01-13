	.text
	.globl	decNumberInvert                 // -- Begin function decNumberInvert
	.p2align	2
	.type	decNumberInvert,@function
decNumberInvert:                        // @decNumberInvert
// %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            // 16-byte Folded Spill
	add	x29, sp, #112
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_3
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-24]
	bl	decNumberIsSpecial
	cbnz	x0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-24]
	bl	decNumberIsNegative
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-16]
	adrp	x8, DEC_Invalid_operation
	ldr	w1, [x8, :lo12:DEC_Invalid_operation]
	ldur	x2, [x29, #-32]
	bl	decStatus
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_23
.LBB0_4:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #56]
	ldur	x8, [x29, #-40]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x8, [x29, #-24]
	ldr	w0, [x8, #24]
	bl	D2U
	ldr	x8, [sp]                        // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	subs	x8, x8, #4
	stur	x8, [x29, #-48]
	ldr	x8, [sp, #56]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x8, [x29, #-32]
	ldr	w0, [x8]
	bl	D2U
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	add	x8, x8, w0, sxtw #2
	subs	x8, x8, #4
	str	x8, [sp, #48]
	ldur	x8, [x29, #-32]
	ldr	w0, [x8]
	bl	MSUDIGITS
	str	x0, [sp, #40]
	b	.LBB0_5
.LBB0_5:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_10 Depth 2
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.hi	.LBB0_22
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-48]
	subs	x8, x8, x9
	b.ls	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	str	wzr, [sp, #36]
	b	.LBB0_9
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-40]
	ldr	w8, [x8]
	str	w8, [sp, #36]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #56]
	str	wzr, [x8]
	str	xzr, [sp, #24]
	b	.LBB0_10
.LBB0_10:                               //   Parent Loop BB0_5 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	adrp	x9, DECDPUN
	ldr	x9, [x9, :lo12:DECDPUN]
	subs	x8, x8, x9
	b.hs	.LBB0_20
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	w8, [sp, #36]
	tbnz	w8, #0, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x8, [sp, #56]
	ldr	w8, [x8]
	adrp	x9, powers
	ldr	x9, [x9, :lo12:powers]
	ldr	x10, [sp, #24]
	ldr	x9, [x9, x10, lsl #3]
                                        // kill: def $w9 killed $w9 killed $x9
	add	w8, w8, w9
	ldr	x9, [sp, #56]
	str	w8, [x9]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	w8, [sp, #36]
	mov	w9, #10
	sdiv	w10, w8, w9
	mul	w10, w10, w9
	subs	w10, w8, w10
                                        // implicit-def: $x8
	mov	w8, w10
	sxtw	x8, w8
	str	x8, [sp, #16]
	ldr	w8, [sp, #36]
	sdiv	w8, w8, w9
	str	w8, [sp, #36]
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	b.ls	.LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldur	x0, [x29, #-16]
	adrp	x8, DEC_Invalid_operation
	ldr	w1, [x8, :lo12:DEC_Invalid_operation]
	ldur	x2, [x29, #-32]
	bl	decStatus
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_23
.LBB0_15:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x8, [sp, #56]
	ldr	x9, [sp, #48]
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #40]
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.ne	.LBB0_18
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_20
.LBB0_18:                               //   in Loop: Header=BB0_10 Depth=2
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_10 Depth=2
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	.LBB0_10
.LBB0_20:                               //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-40]
	add	x8, x8, #4
	stur	x8, [x29, #-40]
	ldr	x8, [sp, #56]
	add	x8, x8, #4
	str	x8, [sp, #56]
	b	.LBB0_5
.LBB0_22:
	ldur	x8, [x29, #-16]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	mov	w1, w8
	bl	decGetDigits
	ldur	x8, [x29, #-16]
	str	w0, [x8, #24]
	ldur	x8, [x29, #-16]
	str	xzr, [x8]
	ldur	x8, [x29, #-16]
	str	xzr, [x8, #16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	.LBB0_23
.LBB0_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #112]            // 16-byte Folded Reload
	add	sp, sp, #128
	ret
.Lfunc_end0:
	.size	decNumberInvert, .Lfunc_end0-decNumberInvert
                                        // -- End function
	.type	DEC_Invalid_operation,@object   // @DEC_Invalid_operation
	.bss
	.globl	DEC_Invalid_operation
	.p2align	2
DEC_Invalid_operation:
	.word	0                               // 0x0
	.size	DEC_Invalid_operation, 4
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
	.type	DECUNUSED,@object               // @DECUNUSED
	.globl	DECUNUSED
	.p2align	2
DECUNUSED:
	.word	0                               // 0x0
	.size	DECUNUSED, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym decNumberIsSpecial
	.addrsig_sym decNumberIsNegative
	.addrsig_sym decStatus
	.addrsig_sym D2U
	.addrsig_sym MSUDIGITS
	.addrsig_sym decGetDigits
	.addrsig_sym DEC_Invalid_operation
	.addrsig_sym DECDPUN
	.addrsig_sym powers