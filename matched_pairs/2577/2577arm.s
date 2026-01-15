	.text
	.globl	parse_fields                    // -- Begin function parse_fields
	.p2align	2
	.type	parse_fields,@function
parse_fields:                           // @parse_fields
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	w0, [x29, #-12]
	mov	w1, #4
	bl	calloc
	stur	x0, [x29, #-24]
	str	wzr, [sp, #12]
	str	wzr, [sp, #8]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #24]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	cbnz	w8, .LBB0_13
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #8]
	ldr	x8, [sp, #32]
	ldrb	w8, [x8]
	subs	w8, w8, #44
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_11
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	strb	wzr, [x8]
	ldr	x0, [sp, #24]
	add	x1, sp, #16
	bl	strtod
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #12]
	str	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	nan
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #12]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	b.eq	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #32]
	subs	x9, x9, #1
	subs	x8, x8, x9
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrb	w8, [x8]
	subs	w8, w8, #13
	b.eq	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	nan
	ldur	x8, [x29, #-24]
	ldrsw	x9, [sp, #12]
	str	s0, [x8, x9, lsl #2]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #24]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_13:
	ldur	x0, [x29, #-24]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_fields, .Lfunc_end0-parse_fields
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym strtod
	.addrsig_sym nan