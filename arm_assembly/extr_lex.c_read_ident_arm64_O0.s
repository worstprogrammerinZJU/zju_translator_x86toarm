	.text
	.p2align	2                               // -- Begin function read_ident
	.type	read_ident,@function
read_ident:                             // @read_ident
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	sturb	w0, [x29, #-1]
	bl	make_buffer
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldurb	w1, [x29, #-1]
	bl	buf_write
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	readc
	sturb	w0, [x29, #-1]
	ldurb	w0, [x29, #-1]
	bl	isalnum
	cbnz	x0, .LBB0_5
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldurb	w8, [x29, #-1]
	tbnz	w8, #7, .LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldurb	w8, [x29, #-1]
	subs	w8, w8, #95
	b.eq	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldurb	w8, [x29, #-1]
	subs	w8, w8, #36
	b.ne	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldurb	w1, [x29, #-1]
	bl	buf_write
	b	.LBB0_1
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldurb	w8, [x29, #-1]
	subs	w8, w8, #92
	b.ne	.LBB0_10
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	and	w8, w0, #0xff
	subs	w8, w8, #117
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	and	w8, w0, #0xff
	subs	w8, w8, #85
	b.ne	.LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	bl	read_escaped_char
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	write_utf8
	b	.LBB0_1
.LBB0_10:
	ldurb	w0, [x29, #-1]
	bl	unreadc
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	buf_write
	ldr	x0, [sp, #16]
	bl	buf_body
	bl	make_ident
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_ident, .Lfunc_end0-read_ident
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_ident
	.addrsig_sym make_buffer
	.addrsig_sym buf_write
	.addrsig_sym readc
	.addrsig_sym isalnum
	.addrsig_sym peek
	.addrsig_sym write_utf8
	.addrsig_sym read_escaped_char
	.addrsig_sym unreadc
	.addrsig_sym make_ident
	.addrsig_sym buf_body