	.text
	.p2align	2                               // -- Begin function read_error_message
	.type	read_error_message,@function
read_error_message:                     // @read_error_message
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	make_buffer
	stur	x0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	lex
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x0, [x29, #-8]
	bl	buf_body
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	buf_len
	cbz	x0, .LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x0, [x29, #-8]
	mov	w1, #32
	bl	buf_write
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	buf_printf
	b	.LBB0_1
.Lfunc_end0:
	.size	read_error_message, .Lfunc_end0-read_error_message
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_error_message
	.addrsig_sym make_buffer
	.addrsig_sym lex
	.addrsig_sym buf_body
	.addrsig_sym buf_len
	.addrsig_sym buf_write
	.addrsig_sym buf_printf
	.addrsig_sym tok2s
	.addrsig_sym TNEWLINE