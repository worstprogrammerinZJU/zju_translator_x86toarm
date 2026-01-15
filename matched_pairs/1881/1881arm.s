	.text
	.p2align	2                               // -- Begin function read_enum_def
	.type	read_enum_def,@function
read_enum_def:                          // @read_enum_def
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-16]
	bl	get
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-16]
	bl	get
	stur	x0, [x29, #-24]
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_7
	b	.LBB0_3
.LBB0_3:
	adrp	x8, tags
	ldr	w0, [x8, :lo12:tags]
	ldur	x1, [x29, #-16]
	bl	map_get
	stur	x0, [x29, #-32]
	ldur	x8, [x29, #-32]
	cbz	x8, .LBB0_6
	b	.LBB0_4
.LBB0_4:
	ldur	x8, [x29, #-32]
	ldr	x8, [x8]
	adrp	x9, KIND_ENUM
	ldr	x9, [x9, :lo12:KIND_ENUM]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldur	x0, [x29, #-24]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_6
.LBB0_6:
	b	.LBB0_7
.LBB0_7:
	ldur	x0, [x29, #-24]
	mov	w1, #123
	bl	is_keyword
	cbnz	x0, .LBB0_12
	b	.LBB0_8
.LBB0_8:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	adrp	x8, tags
	ldr	w0, [x8, :lo12:tags]
	ldur	x1, [x29, #-16]
	bl	map_get
	cbnz	x0, .LBB0_11
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-24]
	ldur	x2, [x29, #-16]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_11
.LBB0_11:
	ldur	x0, [x29, #-24]
	bl	unget_token
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	stur	x8, [x29, #-8]
	b	.LBB0_27
.LBB0_12:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_14
	b	.LBB0_13
.LBB0_13:
	adrp	x8, tags
	ldr	w0, [x8, :lo12:tags]
	ldur	x1, [x29, #-16]
	adrp	x8, type_enum
	ldr	x2, [x8, :lo12:type_enum]
	bl	map_put
	b	.LBB0_14
.LBB0_14:
	stur	wzr, [x29, #-36]
	b	.LBB0_15
.LBB0_15:                               // =>This Inner Loop Header: Depth=1
	bl	get
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	mov	w1, #125
	bl	is_keyword
	cbz	x0, .LBB0_17
	b	.LBB0_16
.LBB0_16:
	b	.LBB0_26
.LBB0_17:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_19
	b	.LBB0_18
.LBB0_18:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x8, [x29, #-24]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	tok2s
	mov	x2, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	errort
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_15 Depth=1
	ldur	x8, [x29, #-24]
	ldr	x8, [x8, #8]
	str	x8, [sp, #32]
	mov	w0, #61
	bl	next_token
	cbz	x0, .LBB0_21
	b	.LBB0_20
.LBB0_20:                               //   in Loop: Header=BB0_15 Depth=1
	bl	read_intexpr
	stur	w0, [x29, #-36]
	b	.LBB0_21
.LBB0_21:                               //   in Loop: Header=BB0_15 Depth=1
	adrp	x8, type_int
	ldr	x0, [x8, :lo12:type_int]
	ldur	w1, [x29, #-36]
	add	w8, w1, #1
	stur	w8, [x29, #-36]
	bl	ast_inttype
	str	x0, [sp, #24]
	bl	env
	ldr	x1, [sp, #32]
	ldr	x2, [sp, #24]
	bl	map_put
	mov	w0, #44
	bl	next_token
	cbz	x0, .LBB0_23
	b	.LBB0_22
.LBB0_22:                               //   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_15
.LBB0_23:                               //   in Loop: Header=BB0_15 Depth=1
	mov	w0, #125
	bl	next_token
	cbz	x0, .LBB0_25
	b	.LBB0_24
.LBB0_24:
	b	.LBB0_26
.LBB0_25:                               //   in Loop: Header=BB0_15 Depth=1
	bl	peek
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	peek
	bl	tok2s
	mov	x2, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	errort
	b	.LBB0_15
.LBB0_26:
	adrp	x8, type_int
	ldr	x8, [x8, :lo12:type_int]
	stur	x8, [x29, #-8]
	b	.LBB0_27
.LBB0_27:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	read_enum_def, .Lfunc_end0-read_enum_def
                                        // -- End function
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	tags,@object                    // @tags
	.globl	tags
	.p2align	2
tags:
	.word	0                               // 0x0
	.size	tags, 4
	.type	KIND_ENUM,@object               // @KIND_ENUM
	.globl	KIND_ENUM
	.p2align	3
KIND_ENUM:
	.xword	0                               // 0x0
	.size	KIND_ENUM, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"declarations of %s does not match"
	.size	.L.str, 34
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"enum tag %s is not defined"
	.size	.L.str.1, 27
	.type	type_int,@object                // @type_int
	.bss
	.globl	type_int
	.p2align	3
type_int:
	.xword	0
	.size	type_int, 8
	.type	type_enum,@object               // @type_enum
	.globl	type_enum
	.p2align	3
type_enum:
	.xword	0
	.size	type_enum, 8
	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"identifier expected, but got %s"
	.size	.L.str.2, 32
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"',' or '}' expected, but got %s"
	.size	.L.str.3, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_enum_def
	.addrsig_sym get
	.addrsig_sym map_get
	.addrsig_sym errort
	.addrsig_sym is_keyword
	.addrsig_sym unget_token
	.addrsig_sym map_put
	.addrsig_sym tok2s
	.addrsig_sym next_token
	.addrsig_sym read_intexpr
	.addrsig_sym ast_inttype
	.addrsig_sym env
	.addrsig_sym peek
	.addrsig_sym TIDENT
	.addrsig_sym tags
	.addrsig_sym KIND_ENUM
	.addrsig_sym type_int
	.addrsig_sym type_enum