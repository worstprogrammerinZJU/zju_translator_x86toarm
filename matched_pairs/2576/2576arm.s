	.text
	.globl	parse_csv_line                  // -- Begin function parse_csv_line
	.p2align	2
	.type	parse_csv_line,@function
parse_csv_line:                         // @parse_csv_line
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-8]
	bl	make_list
	stur	x0, [x29, #-16]
	str	wzr, [sp, #28]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-24]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #32]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	cbz	w8, .LBB0_10
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	subs	w8, w8, #34
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	subs	w8, w8, #0
	cset	w8, eq
	and	w8, w8, #0x1
	str	w8, [sp, #28]
	b	.LBB0_8
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	ldrb	w8, [x8]
	subs	w8, w8, #44
	b.ne	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	cbnz	w8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	strb	wzr, [x8]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	copy_string
	mov	w1, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	list_insert
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	str	x8, [sp, #32]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-24]
	add	x8, x8, #1
	stur	x8, [x29, #-24]
	b	.LBB0_1
.LBB0_10:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	copy_string
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	list_insert
	ldur	x0, [x29, #-16]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	parse_csv_line, .Lfunc_end0-parse_csv_line
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_list
	.addrsig_sym list_insert
	.addrsig_sym copy_string