	.text
	.globl	read_header_file_name           // -- Begin function read_header_file_name
	.p2align	2
	.type	read_header_file_name,@function
read_header_file_name:                  // @read_header_file_name
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	bl	buffer_empty
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_17
.LBB0_2:
	bl	skip_space
	mov	w0, wzr
	bl	get_pos
	stur	w0, [x29, #-20]
	mov	w0, #34
	bl	next
	cbz	x0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	str	wzr, [x8]
	mov	w8, #34
	sturb	w8, [x29, #-21]
	b	.LBB0_8
.LBB0_4:
	mov	w0, #60
	bl	next
	cbz	x0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x9, [x29, #-16]
	mov	w8, #1
	str	w8, [x9]
	mov	w8, #62
	sturb	w8, [x29, #-21]
	b	.LBB0_7
.LBB0_6:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_17
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	bl	make_buffer
	str	x0, [sp, #16]
	b	.LBB0_9
.LBB0_9:                                // =>This Inner Loop Header: Depth=1
	ldurb	w0, [x29, #-21]
	bl	next
	cbnz	x0, .LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=1
	bl	readc
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #10
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=1
	ldur	w0, [x29, #-20]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errorp
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=1
	ldr	x0, [sp, #16]
	ldr	w1, [sp, #12]
	bl	buf_write
	b	.LBB0_9
.LBB0_14:
	ldr	x0, [sp, #16]
	bl	buf_len
	cbnz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	w0, [x29, #-20]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errorp
	b	.LBB0_16
.LBB0_16:
	ldr	x0, [sp, #16]
	mov	w1, wzr
	bl	buf_write
	ldr	x0, [sp, #16]
	bl	buf_body
	stur	x0, [x29, #-8]
	b	.LBB0_17
.LBB0_17:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_header_file_name, .Lfunc_end0-read_header_file_name
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"premature end of header name"
	.size	.L.str, 29
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"header name should not be empty"
	.size	.L.str.1, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym buffer_empty
	.addrsig_sym skip_space
	.addrsig_sym get_pos
	.addrsig_sym next
	.addrsig_sym make_buffer
	.addrsig_sym readc
	.addrsig_sym errorp
	.addrsig_sym buf_write
	.addrsig_sym buf_len
	.addrsig_sym buf_body
	.addrsig_sym EOF