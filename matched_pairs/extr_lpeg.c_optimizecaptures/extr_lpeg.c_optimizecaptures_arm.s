	.text
	.p2align	2                               // -- Begin function optimizecaptures
	.type	optimizecaptures,@function
optimizecaptures:                       // @optimizecaptures
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-16]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
                                        //     Child Loop BB0_21 Depth 2
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	lsl	x9, x9, #4
	ldr	x8, [x8, x9]
	adrp	x9, IEnd
	ldr	x9, [x9, :lo12:IEnd]
	subs	x8, x8, x9
	b.eq	.LBB0_30
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x0, x8, x9, lsl #4
	bl	isjmp
	cbz	x0, .LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	dest
	ldur	w8, [x29, #-16]
	subs	w8, w0, w8
	b.lt	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	ldur	w1, [x29, #-12]
	bl	dest
	add	w8, w0, #1
	stur	w8, [x29, #-16]
	b	.LBB0_28
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.lt	.LBB0_27
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x0, x8, x9, lsl #4
	bl	ismovablecap
	cbz	x0, .LBB0_27
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x8, x8, x9, lsl #4
	add	x0, x8, #16
	bl	ischeck
	cbz	x0, .LBB0_27
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x0, x8, x9, lsl #4
	bl	getoff
	str	w0, [sp, #16]
	ldur	w8, [x29, #-12]
	str	w8, [sp, #12]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-16]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.le	.LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9, lsl #4
	subs	x0, x8, #16
	bl	ismovablecap
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_15
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	w8, [sp, #12]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	bl	getoff
	ldr	w8, [sp, #16]
	subs	w8, w0, w8
	b.le	.LBB0_14
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	bl	getoff
	str	w0, [sp, #16]
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_9
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x8, x8, x9, lsl #4
	add	x0, x8, #16
	ldr	w1, [sp, #16]
	add	x2, sp, #24
	bl	skipchecks
	ldur	w8, [x29, #-12]
	add	w8, w0, w8
	stur	w8, [x29, #-20]
	ldr	w8, [sp, #24]
	cbnz	w8, .LBB0_17
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_29
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #24]
	adrp	x8, MAXOFF
	ldr	w10, [x8, :lo12:MAXOFF]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.gt	.LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-12]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.gt	.LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #12]
	str	w8, [sp, #20]
	b	.LBB0_21
.LBB0_21:                               //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.gt	.LBB0_24
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_21 Depth=2
	ldr	w10, [sp, #24]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	add	x9, x8, x9, lsl #4
	ldr	w8, [x9, #8]
	add	w8, w8, w10, lsl #4
	str	w8, [x9, #8]
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_21 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	.LBB0_21
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	ldur	w8, [x29, #-20]
	ldr	w9, [sp, #12]
	subs	w1, w8, w9
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	add	w2, w8, #1
	bl	rotate
	ldur	w8, [x29, #-20]
	stur	w8, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	add	x0, x8, x9, lsl #4
	bl	ischeck
	mov	w8, #0
	str	w8, [sp]                        // 4-byte Folded Spill
	cbz	x0, .LBB0_26
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x0, x8, x9, lsl #4
	bl	iscapture
	subs	x8, x0, #0
	cset	w8, ne
	str	w8, [sp]                        // 4-byte Folded Spill
	b	.LBB0_26
.LBB0_26:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp]                        // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	b	.LBB0_27
.LBB0_27:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_28
.LBB0_28:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_29
.LBB0_29:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-12]
	add	x0, x8, x9, lsl #4
	bl	sizei
	ldursw	x8, [x29, #-12]
	add	x8, x8, x0
                                        // kill: def $w8 killed $w8 killed $x8
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_30:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	optimizecaptures, .Lfunc_end0-optimizecaptures
                                        // -- End function
	.type	IEnd,@object                    // @IEnd
	.bss
	.globl	IEnd
	.p2align	3
IEnd:
	.xword	0                               // 0x0
	.size	IEnd, 8
	.type	MAXOFF,@object                  // @MAXOFF
	.globl	MAXOFF
	.p2align	2
MAXOFF:
	.word	0                               // 0x0
	.size	MAXOFF, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym optimizecaptures
	.addrsig_sym isjmp
	.addrsig_sym dest
	.addrsig_sym ismovablecap
	.addrsig_sym ischeck
	.addrsig_sym getoff
	.addrsig_sym skipchecks
	.addrsig_sym assert
	.addrsig_sym rotate
	.addrsig_sym iscapture
	.addrsig_sym sizei
	.addrsig_sym IEnd
	.addrsig_sym MAXOFF