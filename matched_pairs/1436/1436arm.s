	.text
	.globl	skip_cond_incl                  // -- Begin function skip_cond_incl
	.p2align	2
	.type	skip_cond_incl,@function
skip_cond_incl:                         // @skip_cond_incl
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	bl	current_file
	ldr	w8, [x0]
	subs	w8, w8, #1
	cset	w8, eq
	and	w8, w8, #0x1
	stur	w8, [x29, #-8]
	bl	skip_space
	bl	readc
	stur	w0, [x29, #-12]
	ldur	w8, [x29, #-12]
	adrp	x9, EOF
	ldr	w9, [x9, :lo12:EOF]
	subs	w8, w8, w9
	b.ne	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	b	.LBB0_26
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #39
	b.ne	.LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	bl	skip_char
	b	.LBB0_1
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #34
	b.ne	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	bl	skip_string
	b	.LBB0_1
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #35
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	bl	current_file
	ldr	w8, [x0]
	subs	w8, w8, #1
	str	w8, [sp, #16]
	bl	lex
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_12:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_17
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	is_ident
	cbnz	x0, .LBB0_16
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	is_ident
	cbnz	x0, .LBB0_16
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	is_ident
	cbz	x0, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	ldr	x0, [sp, #8]
	bl	unget_token
	mov	w0, #35
	bl	make_keyword
	str	x0, [sp]
	ldr	x9, [sp]
	mov	w8, #1
	str	w8, [x9, #8]
	ldr	w8, [sp, #16]
	ldr	x9, [sp]
	str	w8, [x9, #12]
	ldr	x0, [sp]
	bl	unget_token
	b	.LBB0_26
.LBB0_17:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	is_ident
	cbnz	x0, .LBB0_20
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	is_ident
	cbnz	x0, .LBB0_20
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	is_ident
	cbz	x0, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_25
.LBB0_21:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	cbz	w8, .LBB0_24
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	is_ident
	cbz	x0, .LBB0_24
	b	.LBB0_23
.LBB0_23:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	subs	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_24
.LBB0_24:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_25
.LBB0_25:                               //   in Loop: Header=BB0_1 Depth=1
	bl	skip_line
	b	.LBB0_1
.LBB0_26:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	skip_cond_incl, .Lfunc_end0-skip_cond_incl
                                        // -- End function
	.type	EOF,@object                     // @EOF
	.bss
	.globl	EOF
	.p2align	2
EOF:
	.word	0                               // 0x0
	.size	EOF, 4
	.type	TIDENT,@object                  // @TIDENT
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"else"
	.size	.L.str, 5
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"elif"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"endif"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"if"
	.size	.L.str.3, 3
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"ifdef"
	.size	.L.str.4, 6
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"ifndef"
	.size	.L.str.5, 7
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym current_file
	.addrsig_sym skip_space
	.addrsig_sym readc
	.addrsig_sym skip_char
	.addrsig_sym skip_string
	.addrsig_sym lex
	.addrsig_sym is_ident
	.addrsig_sym unget_token
	.addrsig_sym make_keyword
	.addrsig_sym skip_line
	.addrsig_sym EOF
	.addrsig_sym TIDENT