	.text
	.p2align	2                               // -- Begin function read_rune
	.type	read_rune,@function
read_rune:                              // @read_rune
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	ldr	x8, [sp, #24]
	ldrb	w0, [x8]
	bl	count_leading_ones
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	ldur	x9, [x29, #-16]
	strb	w8, [x9]
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_2:
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ls	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_4
.LBB0_4:
	mov	w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldrb	w8, [x8, x9]
	and	w8, w8, #0xc0
	subs	w8, w8, #128
	b.eq	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	error
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_10:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	subs	w8, w8, #2
	b.eq	.LBB0_13
	b	.LBB0_11
.LBB0_11:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #3
	b.eq	.LBB0_14
	b	.LBB0_12
.LBB0_12:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	subs	w8, w8, #4
	b.eq	.LBB0_15
	b	.LBB0_16
.LBB0_13:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	and	w9, w8, #0x1f
	ldr	x8, [sp, #24]
	ldrb	w8, [x8, #1]
	bfi	w8, w9, #6, #26
	ldur	x9, [x29, #-16]
	strb	w8, [x9]
	mov	w8, #2
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_14:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	and	w9, w8, #0xf
	ldr	x8, [sp, #24]
	ldrb	w8, [x8, #1]
	and	w8, w8, #0x3f
	lsl	w8, w8, #6
	orr	w8, w8, w9, lsl #12
	ldr	x9, [sp, #24]
	ldrb	w9, [x9, #2]
	and	w9, w9, #0x3f
	orr	w8, w8, w9
	ldur	x9, [x29, #-16]
	strb	w8, [x9]
	mov	w8, #3
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_15:
	ldr	x8, [sp, #24]
	ldrb	w8, [x8]
	and	w9, w8, #0x7
	ldr	x8, [sp, #24]
	ldrb	w8, [x8, #1]
	and	w8, w8, #0x3f
	lsl	w8, w8, #12
	orr	w8, w8, w9, lsl #18
	ldr	x9, [sp, #24]
	ldrb	w9, [x9, #2]
	and	w9, w9, #0x3f
	orr	w8, w8, w9, lsl #6
	ldr	x9, [sp, #24]
	ldrb	w9, [x9, #3]
	and	w9, w9, #0x3f
	orr	w8, w8, w9
	ldur	x9, [x29, #-16]
	strb	w8, [x9]
	mov	w8, #4
	stur	w8, [x29, #-4]
	b	.LBB0_17
.LBB0_16:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_17
.LBB0_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_rune, .Lfunc_end0-read_rune
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid UTF-8 sequence"
	.size	.L.str, 23
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"invalid UTF-8 continuation byte"
	.size	.L.str.1, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_rune
	.addrsig_sym count_leading_ones
	.addrsig_sym error