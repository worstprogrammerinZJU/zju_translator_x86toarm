	.text
	.p2align	2                               // -- Begin function read_linemarker
	.type	read_linemarker,@function
read_linemarker:                        // @read_linemarker
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	is_digit_sequence
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8]
	bl	atoi
	stur	w0, [x29, #-12]
	bl	lex
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	adrp	x9, TSTRING
	ldr	x9, [x9, :lo12:TSTRING]
	subs	x8, x8, x9
	b.eq	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	bl	lex
	stur	x0, [x29, #-8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_7
.LBB0_7:
	bl	current_file
	str	x0, [sp, #16]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9, #8]
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	read_linemarker, .Lfunc_end0-read_linemarker
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"line number expected, but got %s"
	.size	.L.str, 33
	.type	TSTRING,@object                 // @TSTRING
	.bss
	.globl	TSTRING
	.p2align	3
TSTRING:
	.xword	0                               // 0x0
	.size	TSTRING, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"filename expected, but got %s"
	.size	.L.str.1, 30
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_linemarker
	.addrsig_sym is_digit_sequence
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym atoi
	.addrsig_sym lex
	.addrsig_sym current_file
	.addrsig_sym TSTRING
	.addrsig_sym TNEWLINE