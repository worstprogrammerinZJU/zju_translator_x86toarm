	.text
	.p2align	2                               // -- Begin function set_tm_yday
	.type	set_tm_yday,@function
set_tm_yday:                            // @set_tm_yday
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	stur	w8, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	add	w8, w8, #1900
	str	w8, [sp, #16]
	str	wzr, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	b.le	.LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	w8, [sp, #16]
	mov	w10, #4
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #16]
	mov	w10, #100
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	w8, [sp, #16]
	mov	w10, #400
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_5:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	b.ge	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	w9, [x29, #-12]
	mov	w8, wzr
	subs	w8, w8, w9
	stur	w8, [x29, #-12]
	b	.LBB0_7
.LBB0_7:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #11
	b.le	.LBB0_9
	b	.LBB0_8
.LBB0_8:
	ldur	w8, [x29, #-12]
	mov	w10, #12
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-12]
	b	.LBB0_9
.LBB0_9:
	ldursw	x9, [x29, #-12]
	adrp	x8, set_tm_yday.d
	add	x8, x8, :lo12:set_tm_yday.d
	ldr	w8, [x8, x9, lsl #2]
	ldr	w9, [sp, #12]
	add	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #8]
	add	w8, w8, w9
	subs	w8, w8, #1
	str	w8, [sp, #8]
	ldr	w9, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w10, [x8, #12]
	mov	w8, #1
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #12]
	subs	w8, w8, #367
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	ldr	w8, [sp, #8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #12]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_tm_yday, .Lfunc_end0-set_tm_yday
                                        // -- End function
	.type	set_tm_yday.d,@object           // @set_tm_yday.d
	.section	.rodata,"a",@progbits
	.p2align	2
set_tm_yday.d:
	.word	0                               // 0x0
	.word	31                              // 0x1f
	.word	59                              // 0x3b
	.word	90                              // 0x5a
	.word	120                             // 0x78
	.word	151                             // 0x97
	.word	181                             // 0xb5
	.word	212                             // 0xd4
	.word	243                             // 0xf3
	.word	273                             // 0x111
	.word	304                             // 0x130
	.word	334                             // 0x14e
	.size	set_tm_yday.d, 48
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_tm_yday
	.addrsig_sym assert
	.addrsig_sym set_tm_yday.d