	.text
	.p2align	2                               // -- Begin function read_directive
	.type	read_directive,@function
read_directive:                         // @read_directive
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	bl	lex
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TNEWLINE
	ldr	x9, [x9, :lo12:TNEWLINE]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_53
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TNUMBER
	ldr	x9, [x9, :lo12:TNUMBER]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #16]
	bl	read_linemarker
	b	.LBB0_53
.LBB0_4:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_52
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	str	x8, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	strcmp
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	bl	read_define
	b	.LBB0_51
.LBB0_8:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	strcmp
	cbnz	w0, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldur	x0, [x29, #-8]
	bl	read_elif
	b	.LBB0_50
.LBB0_10:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	strcmp
	cbnz	w0, .LBB0_12
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-8]
	bl	read_else
	b	.LBB0_49
.LBB0_12:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	strcmp
	cbnz	w0, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	ldur	x0, [x29, #-8]
	bl	read_endif
	b	.LBB0_48
.LBB0_14:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	strcmp
	cbnz	w0, .LBB0_16
	b	.LBB0_15
.LBB0_15:
	ldur	x0, [x29, #-8]
	bl	read_error
	b	.LBB0_47
.LBB0_16:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	strcmp
	cbnz	w0, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	bl	read_if
	b	.LBB0_46
.LBB0_18:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	strcmp
	cbnz	w0, .LBB0_20
	b	.LBB0_19
.LBB0_19:
	bl	read_ifdef
	b	.LBB0_45
.LBB0_20:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	strcmp
	cbnz	w0, .LBB0_22
	b	.LBB0_21
.LBB0_21:
	bl	read_ifndef
	b	.LBB0_44
.LBB0_22:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	strcmp
	cbnz	w0, .LBB0_24
	b	.LBB0_23
.LBB0_23:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	mov	w2, #1
	bl	read_include
	b	.LBB0_43
.LBB0_24:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	strcmp
	cbnz	w0, .LBB0_26
	b	.LBB0_25
.LBB0_25:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	mov	w2, wzr
	bl	read_include
	b	.LBB0_42
.LBB0_26:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	strcmp
	cbnz	w0, .LBB0_28
	b	.LBB0_27
.LBB0_27:
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	bl	read_include_next
	b	.LBB0_41
.LBB0_28:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	strcmp
	cbnz	w0, .LBB0_30
	b	.LBB0_29
.LBB0_29:
	bl	read_line
	b	.LBB0_40
.LBB0_30:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	strcmp
	cbnz	w0, .LBB0_32
	b	.LBB0_31
.LBB0_31:
	bl	read_pragma
	b	.LBB0_39
.LBB0_32:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	strcmp
	cbnz	w0, .LBB0_34
	b	.LBB0_33
.LBB0_33:
	bl	read_undef
	b	.LBB0_38
.LBB0_34:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	strcmp
	cbnz	w0, .LBB0_36
	b	.LBB0_35
.LBB0_35:
	ldur	x0, [x29, #-8]
	bl	read_warning
	b	.LBB0_37
.LBB0_36:
	b	.LBB0_52
.LBB0_37:
	b	.LBB0_38
.LBB0_38:
	b	.LBB0_39
.LBB0_39:
	b	.LBB0_40
.LBB0_40:
	b	.LBB0_41
.LBB0_41:
	b	.LBB0_42
.LBB0_42:
	b	.LBB0_43
.LBB0_43:
	b	.LBB0_44
.LBB0_44:
	b	.LBB0_45
.LBB0_45:
	b	.LBB0_46
.LBB0_46:
	b	.LBB0_47
.LBB0_47:
	b	.LBB0_48
.LBB0_48:
	b	.LBB0_49
.LBB0_49:
	b	.LBB0_50
.LBB0_50:
	b	.LBB0_51
.LBB0_51:
	b	.LBB0_53
.LBB0_52:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	errort
	b	.LBB0_53
.LBB0_53:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_directive, .Lfunc_end0-read_directive
                                        // -- End function
	.type	TNEWLINE,@object                // @TNEWLINE
	.bss
	.globl	TNEWLINE
	.p2align	3
TNEWLINE:
	.xword	0                               // 0x0
	.size	TNEWLINE, 8
	.type	TNUMBER,@object                 // @TNUMBER
	.globl	TNUMBER
	.p2align	3
TNUMBER:
	.xword	0                               // 0x0
	.size	TNUMBER, 8
	.type	TIDENT,@object                  // @TIDENT
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"define"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"elif"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"else"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"endif"
	.size	.L.str.3, 6
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"error"
	.size	.L.str.4, 6
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"if"
	.size	.L.str.5, 3
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"ifdef"
	.size	.L.str.6, 6
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"ifndef"
	.size	.L.str.7, 7
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"import"
	.size	.L.str.8, 7
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"include"
	.size	.L.str.9, 8
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"include_next"
	.size	.L.str.10, 13
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"line"
	.size	.L.str.11, 5
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"pragma"
	.size	.L.str.12, 7
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	"undef"
	.size	.L.str.13, 6
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	"warning"
	.size	.L.str.14, 8
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	"unsupported preprocessor directive: %s"
	.size	.L.str.15, 39
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_directive
	.addrsig_sym lex
	.addrsig_sym read_linemarker
	.addrsig_sym strcmp
	.addrsig_sym read_define
	.addrsig_sym read_elif
	.addrsig_sym read_else
	.addrsig_sym read_endif
	.addrsig_sym read_error
	.addrsig_sym read_if
	.addrsig_sym read_ifdef
	.addrsig_sym read_ifndef
	.addrsig_sym read_include
	.addrsig_sym read_include_next
	.addrsig_sym read_line
	.addrsig_sym read_pragma
	.addrsig_sym read_undef
	.addrsig_sym read_warning
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym TNEWLINE
	.addrsig_sym TNUMBER
	.addrsig_sym TIDENT