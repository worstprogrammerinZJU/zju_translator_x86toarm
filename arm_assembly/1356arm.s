	.text
	.p2align	2                               // -- Begin function pow5mult
	.type	pow5mult,@function
pow5mult:                               // @pow5mult
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	w2, [x29, #-28]
	ldur	w8, [x29, #-28]
	and	w8, w8, #0x3
	str	w8, [sp, #4]
	cbz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	w8, [sp, #4]
	subs	w9, w8, #1
	adrp	x8, pow5mult.p05
	add	x8, x8, :lo12:pow5mult.p05
	ldr	w2, [x8, w9, sxtw #2]
	mov	w3, wzr
	bl	multadd
	stur	x0, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldur	w8, [x29, #-28]
	asr	w8, w8, #2
	stur	w8, [x29, #-28]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_4:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-16]
	mov	w1, #625
	bl	i2b
	ldur	x9, [x29, #-16]
	mov	x8, x0
	str	x8, [x9]
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-28]
	tbz	w8, #0, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #16]
	bl	mult
	str	x0, [sp, #24]
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	bl	Bfree
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-24]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-28]
	asr	w8, w8, #1
	stur	w8, [x29, #-28]
	cbnz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	b	.LBB0_14
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	x8, [sp, #8]
	cbnz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=1
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #16]
	bl	mult
	ldr	x9, [sp, #16]
	mov	x8, x0
	str	x8, [x9]
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x8, [sp, #8]
	str	x8, [sp, #16]
	b	.LBB0_7
.LBB0_14:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-8]
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	pow5mult, .Lfunc_end0-pow5mult
                                        // -- End function
	.type	pow5mult.p05,@object            // @pow5mult.p05
	.section	.rodata,"a",@progbits
	.p2align	2
pow5mult.p05:
	.word	5                               // 0x5
	.word	25                              // 0x19
	.word	125                             // 0x7d
	.size	pow5mult.p05, 12
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow5mult
	.addrsig_sym multadd
	.addrsig_sym i2b
	.addrsig_sym mult
	.addrsig_sym Bfree
	.addrsig_sym pow5mult.p05