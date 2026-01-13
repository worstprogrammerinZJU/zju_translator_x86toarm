	.text
	.p2align	2                               // -- Begin function read_line
	.type	read_line,@function
read_line:                              // @read_line
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	bl	read_expand_newline
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, TNUMBER
	ldr	x9, [x9, :lo12:TNUMBER]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	is_digit_sequence
	cbnz	w0, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #8]
	bl	atoi
	stur	w0, [x29, #-12]
	bl	read_expand_newline
	stur	x0, [x29, #-8]
                                        // kill: def $x8 killed $xzr
	str	xzr, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	str	x8, [sp, #24]
	bl	expect_newline
	b	.LBB0_8
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_8
.LBB0_8:
	bl	current_file
	str	x0, [sp, #16]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_line, .Lfunc_end0-read_line
                                        // -- End function
	.type	TNUMBER,@object                 // @TNUMBER
	.bss
	.globl	TNUMBER
	.p2align	3
TNUMBER:
	.xword	0                               // 0x0
	.size	TNUMBER, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"number expected after #line, but got %s"
	.size	.L.str, 40
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.type	TNEWLINE,@object                // @TNEWLINE
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"newline or a source name are expected, but got %s"
	.size	.L.str.1, 50
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_line
	.addrsig_sym read_expand_newline
	.addrsig_sym is_digit_sequence
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym atoi
	.addrsig_sym expect_newline
	.addrsig_sym current_file
	.addrsig_sym TNUMBER
	.addrsig_sym TSTRING
	.addrsig_sym TNEWLINE