	.text
	.p2align	2                               // -- Begin function stbiw__jpg_processDU
	.type	stbiw__jpg_processDU,@function
stbiw__jpg_processDU:                   // @stbiw__jpg_processDU
// %bb.0:
	sub	sp, sp, #464
	stp	x29, x30, [sp, #432]            // 16-byte Folded Spill
	str	x28, [sp, #448]                 // 8-byte Folded Spill
	add	x29, sp, #432
	sub	x8, x29, #72
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	str	x0, [x8, #56]
	str	x1, [x8, #48]
	str	x2, [x8, #40]
	str	x3, [x8, #32]
	str	x4, [x8, #24]
	stur	w5, [x29, #-52]
	str	x6, [x8, #8]
	str	x7, [x8]
	ldr	x9, [x8]
	ldrh	w9, [x9]
	sturh	w9, [x29, #-76]
	ldr	x9, [x8]
	ldrh	w9, [x9, #2]
	sturh	w9, [x29, #-74]
	ldr	x9, [x8]
	ldrh	w9, [x9, #960]
	sturh	w9, [x29, #-80]
	ldr	x8, [x8]
	ldrh	w8, [x8, #962]
	sturh	w8, [x29, #-78]
	stur	wzr, [x29, #-84]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-84]
	subs	w8, w8, #64
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-84]
	add	x0, x9, x10, lsl #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #1
	add	x1, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #2
	add	x2, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #3
	add	x3, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #4
	add	x4, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #5
	add	x5, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #6
	add	x6, x9, w10, sxtw #2
	ldr	x8, [x8, #32]
	ldur	w9, [x29, #-84]
	add	w9, w9, #7
	add	x7, x8, w9, sxtw #2
	bl	stbiw__jpg_DCT
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-84]
	add	w8, w8, #8
	stur	w8, [x29, #-84]
	b	.LBB0_1
.LBB0_4:
	stur	wzr, [x29, #-84]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-84]
	subs	w8, w8, #8
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-84]
	add	x0, x9, x10, lsl #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #8
	add	x1, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #16
	add	x2, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #24
	add	x3, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #32
	add	x4, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #40
	add	x5, x9, w10, sxtw #2
	ldr	x9, [x8, #32]
	ldur	w10, [x29, #-84]
	add	w10, w10, #48
	add	x6, x9, w10, sxtw #2
	ldr	x8, [x8, #32]
	ldur	w9, [x29, #-84]
	add	w9, w9, #56
	add	x7, x8, w9, sxtw #2
	bl	stbiw__jpg_DCT
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-84]
	add	w8, w8, #1
	stur	w8, [x29, #-84]
	b	.LBB0_5
.LBB0_8:
	stur	wzr, [x29, #-88]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-88]
	subs	w8, w8, #64
	b.ge	.LBB0_15
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-88]
	ldr	s0, [x9, x10, lsl #2]
	ldr	x8, [x8, #24]
	ldursw	x9, [x29, #-88]
	ldr	s1, [x8, x9, lsl #2]
	fmul	s0, s0, s1
	str	s0, [sp, #76]
	ldr	s0, [sp, #76]
	fcmp	s0, #0.0
	b.pl	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	s0, [sp, #76]
	fmov	s1, #0.50000000
	fsub	s0, s0, s1
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	s0, [sp, #76]
	fmov	s1, #0.50000000
	fadd	s0, s0, s1
	str	s0, [sp, #36]                   // 4-byte Folded Spill
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	s0, [sp, #36]                   // 4-byte Folded Reload
	fcvtzs	w8, s0
	adrp	x9, stbiw__jpg_ZigZag
	ldr	x9, [x9, :lo12:stbiw__jpg_ZigZag]
	ldursw	x10, [x29, #-88]
	ldr	x10, [x9, x10, lsl #3]
	add	x9, sp, #80
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w8, [x29, #-88]
	add	w8, w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_9
.LBB0_15:
	ldr	w8, [sp, #80]
	ldur	w9, [x29, #-52]
	subs	w8, w8, w9
	stur	w8, [x29, #-92]
	ldur	w8, [x29, #-92]
	cbnz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	ldr	x3, [x8, #8]
	bl	stbiw__jpg_writeBits
	b	.LBB0_18
.LBB0_17:
	ldur	w0, [x29, #-92]
	add	x1, sp, #72
	str	x1, [sp, #24]                   // 8-byte Folded Spill
	bl	stbiw__jpg_calcBits
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	ldr	x8, [x8, #8]
	ldrh	w9, [sp, #74]
                                        // kill: def $x9 killed $w9
	add	x3, x8, x9, lsl #2
	bl	stbiw__jpg_writeBits
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	bl	stbiw__jpg_writeBits
	b	.LBB0_18
.LBB0_18:
	mov	w8, #63
	stur	w8, [x29, #-96]
	b	.LBB0_19
.LBB0_19:                               // =>This Inner Loop Header: Depth=1
	ldur	w9, [x29, #-96]
	mov	w8, #0
	subs	w9, w9, #0
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b.le	.LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_19 Depth=1
	ldursw	x9, [x29, #-96]
	add	x8, sp, #80
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	cset	w8, eq
	str	w8, [sp, #20]                   // 4-byte Folded Spill
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_19 Depth=1
	ldr	w8, [sp, #20]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_24
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_19 Depth=1
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_19 Depth=1
	ldur	w8, [x29, #-96]
	subs	w8, w8, #1
	stur	w8, [x29, #-96]
	b	.LBB0_19
.LBB0_24:
	ldur	w8, [x29, #-96]
	cbnz	w8, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	sub	x3, x29, #76
	bl	stbiw__jpg_writeBits
	ldr	w8, [sp, #80]
	stur	w8, [x29, #-4]
	b	.LBB0_45
.LBB0_26:
	mov	w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_27
.LBB0_27:                               // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_29 Depth 2
                                        //     Child Loop BB0_36 Depth 2
	ldur	w8, [x29, #-88]
	ldur	w9, [x29, #-96]
	subs	w8, w8, w9
	b.gt	.LBB0_42
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_27 Depth=1
	ldur	w8, [x29, #-88]
	str	w8, [sp, #68]
	b	.LBB0_29
.LBB0_29:                               //   Parent Loop BB0_27 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldursw	x9, [x29, #-88]
	add	x8, sp, #80
	ldr	w8, [x8, x9, lsl #2]
	mov	w9, #0
	str	w9, [sp, #16]                   // 4-byte Folded Spill
	cbnz	w8, .LBB0_31
	b	.LBB0_30
.LBB0_30:                               //   in Loop: Header=BB0_29 Depth=2
	ldur	w8, [x29, #-88]
	ldur	w9, [x29, #-96]
	subs	w8, w8, w9
	cset	w8, le
	str	w8, [sp, #16]                   // 4-byte Folded Spill
	b	.LBB0_31
.LBB0_31:                               //   in Loop: Header=BB0_29 Depth=2
	ldr	w8, [sp, #16]                   // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_34
	b	.LBB0_32
.LBB0_32:                               //   in Loop: Header=BB0_29 Depth=2
	b	.LBB0_33
.LBB0_33:                               //   in Loop: Header=BB0_29 Depth=2
	ldur	w8, [x29, #-88]
	add	w8, w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_29
.LBB0_34:                               //   in Loop: Header=BB0_27 Depth=1
	ldur	w8, [x29, #-88]
	ldr	w9, [sp, #68]
	subs	w8, w8, w9
	str	w8, [sp, #64]
	ldr	w8, [sp, #64]
	subs	w8, w8, #16
	b.lt	.LBB0_40
	b	.LBB0_35
.LBB0_35:                               //   in Loop: Header=BB0_27 Depth=1
	ldr	w8, [sp, #64]
	asr	w8, w8, #4
	str	w8, [sp, #56]
	mov	w8, #1
	str	w8, [sp, #52]
	b	.LBB0_36
.LBB0_36:                               //   Parent Loop BB0_27 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #52]
	ldr	w9, [sp, #56]
	subs	w8, w8, w9
	b.gt	.LBB0_39
	b	.LBB0_37
.LBB0_37:                               //   in Loop: Header=BB0_36 Depth=2
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	sub	x3, x29, #80
	bl	stbiw__jpg_writeBits
	b	.LBB0_38
.LBB0_38:                               //   in Loop: Header=BB0_36 Depth=2
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	.LBB0_36
.LBB0_39:                               //   in Loop: Header=BB0_27 Depth=1
	ldr	w8, [sp, #64]
	and	w8, w8, #0xf
	str	w8, [sp, #64]
	b	.LBB0_40
.LBB0_40:                               //   in Loop: Header=BB0_27 Depth=1
	ldursw	x9, [x29, #-88]
	add	x8, sp, #80
	ldr	w0, [x8, x9, lsl #2]
	add	x1, sp, #60
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	bl	stbiw__jpg_calcBits
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	ldr	x8, [x8]
	ldr	w10, [sp, #64]
	ldrh	w9, [sp, #62]
	add	w9, w9, w10, lsl #4
	add	x3, x8, w9, sxtw #2
	bl	stbiw__jpg_writeBits
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x3, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	bl	stbiw__jpg_writeBits
	b	.LBB0_41
.LBB0_41:                               //   in Loop: Header=BB0_27 Depth=1
	ldur	w8, [x29, #-88]
	add	w8, w8, #1
	stur	w8, [x29, #-88]
	b	.LBB0_27
.LBB0_42:
	ldur	w8, [x29, #-96]
	subs	w8, w8, #63
	b.eq	.LBB0_44
	b	.LBB0_43
.LBB0_43:
	ldr	x8, [sp, #40]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	x1, [x8, #48]
	ldr	x2, [x8, #40]
	sub	x3, x29, #76
	bl	stbiw__jpg_writeBits
	b	.LBB0_44
.LBB0_44:
	ldr	w8, [sp, #80]
	stur	w8, [x29, #-4]
	b	.LBB0_45
.LBB0_45:
	ldur	w0, [x29, #-4]
	ldr	x28, [sp, #448]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #432]            // 16-byte Folded Reload
	add	sp, sp, #464
	ret
.Lfunc_end0:
	.size	stbiw__jpg_processDU, .Lfunc_end0-stbiw__jpg_processDU
                                        // -- End function
	.type	stbiw__jpg_ZigZag,@object       // @stbiw__jpg_ZigZag
	.bss
	.globl	stbiw__jpg_ZigZag
	.p2align	3
stbiw__jpg_ZigZag:
	.xword	0
	.size	stbiw__jpg_ZigZag, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym stbiw__jpg_processDU
	.addrsig_sym stbiw__jpg_DCT
	.addrsig_sym stbiw__jpg_writeBits
	.addrsig_sym stbiw__jpg_calcBits
	.addrsig_sym stbiw__jpg_ZigZag