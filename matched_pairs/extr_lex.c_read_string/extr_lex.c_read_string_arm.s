	.text
	.p2align	2                               // -- Begin function read_string
	.type	read_string,@function
read_string:                            // @read_string
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	bl	make_buffer
	str	x0, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	readc
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, pos
	ldr	w0, [x8, :lo12:pos]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errorp
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #34
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_12
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #92
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	buf_write
	b	.LBB0_1
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	and	w9, w0, #0xff
	mov	w8, #1
	subs	w9, w9, #117
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.eq	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	bl	peek
	and	w8, w0, #0xff
	subs	w8, w8, #85
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w8, w8, #0x1
	str	w8, [sp, #8]
	bl	read_escaped_char
	str	w0, [sp, #12]
	ldr	w8, [sp, #8]
	cbz	w8, .LBB0_11
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	write_utf8
	b	.LBB0_1
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	buf_write
	b	.LBB0_1
.LBB0_12:
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	buf_write
	ldr	x0, [sp, #16]
	bl	buf_body
	str	w0, [sp]                        // 4-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	buf_len
	mov	w1, w0
	ldr	w0, [sp]                        // 4-byte Folded Reload
	ldur	w2, [x29, #-4]
	bl	make_strtok
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_string, .Lfunc_end0-read_string
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.type	pos,@object                     // @pos
	.globl	pos
	.p2align	2
pos:
	.word	0                               // 0x0
	.size	pos, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"unterminated string"
	.size	.L.str, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_string
	.addrsig_sym make_buffer
	.addrsig_sym readc
	.addrsig_sym errorp
	.addrsig_sym buf_write
	.addrsig_sym peek
	.addrsig_sym read_escaped_char
	.addrsig_sym write_utf8
	.addrsig_sym make_strtok
	.addrsig_sym buf_body
	.addrsig_sym buf_len
	.addrsig_sym EOF
	.addrsig_sym pos