	.text
	.p2align	2                               // -- Begin function read_primary_expr
	.type	read_primary_expr,@function
read_primary_expr:                      // @read_primary_expr
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_16
.LBB0_2:
	ldr	x0, [sp, #16]
	mov	w1, #40
	bl	is_keyword
	cbz	x0, .LBB0_6
	b	.LBB0_3
.LBB0_3:
	mov	w0, #123
	bl	next_token
	cbz	x0, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	bl	read_stmt_expr
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_5:
	bl	read_expr
	str	x0, [sp, #8]
	mov	w0, #41
	bl	expect
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_16
.LBB0_6:
	ldr	x0, [sp, #16]
	adrp	x8, KGENERIC
	ldrb	w1, [x8, :lo12:KGENERIC]
	bl	is_keyword
	cbz	x0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	bl	read_generic
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_8:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #4
	b.hi	.LBB0_15
// %bb.9:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_10:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #8]
	bl	read_var_or_func
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_11:
	ldr	x0, [sp, #16]
	bl	read_number
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_12:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	bl	char_type
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #16]
	bl	ast_inttype
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_13:
	ldr	x8, [sp, #16]
	ldr	w0, [x8, #12]
	ldr	x8, [sp, #16]
	ldr	w1, [x8, #8]
	ldr	x8, [sp, #16]
	ldr	w2, [x8, #4]
	bl	ast_string
	stur	x0, [x29, #-8]
	b	.LBB0_16
.LBB0_14:
	ldr	x0, [sp, #16]
	bl	unget_token
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_16
.LBB0_15:
	ldr	x8, [sp, #16]
	ldr	w1, [x8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_16
.LBB0_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_primary_expr, .Lfunc_end0-read_primary_expr
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_12-.Ltmp0
                                        // -- End function
	.type	KGENERIC,@object                // @KGENERIC
	.bss
	.globl	KGENERIC
KGENERIC:
	.byte	0                               // 0x0
	.size	KGENERIC, 1
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error: unknown token kind: %d"
	.size	.L.str, 39
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_primary_expr
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym next_token
	.addrsig_sym read_stmt_expr
	.addrsig_sym read_expr
	.addrsig_sym expect
	.addrsig_sym read_generic
	.addrsig_sym read_var_or_func
	.addrsig_sym read_number
	.addrsig_sym ast_inttype
	.addrsig_sym char_type
	.addrsig_sym ast_string
	.addrsig_sym unget_token
	.addrsig_sym error
	.addrsig_sym KGENERIC