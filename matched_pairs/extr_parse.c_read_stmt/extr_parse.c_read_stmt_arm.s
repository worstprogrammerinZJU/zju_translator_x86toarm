	.text
	.p2align	2                               // -- Begin function read_stmt
	.type	read_stmt,@function
read_stmt:                              // @read_stmt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	bl	get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TKEYWORD
	ldr	x9, [x9, :lo12:TKEYWORD]
	subs	x8, x8, x9
	b.ne	.LBB0_16
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #8]
	subs	w8, w8, #123
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #15
	b.hi	.LBB0_15
// %bb.2:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_3:
	bl	read_compound_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_4:
	bl	read_if_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_5:
	bl	read_for_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_6:
	bl	read_while_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_7:
	bl	read_do_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_8:
	bl	read_return_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_9:
	bl	read_switch_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_10:
	ldr	x0, [sp, #16]
	bl	read_case_label
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_11:
	ldr	x0, [sp, #16]
	bl	read_default_label
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_12:
	ldr	x0, [sp, #16]
	bl	read_break_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_13:
	ldr	x0, [sp, #16]
	bl	read_continue_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_14:
	bl	read_goto_stmt
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.ne	.LBB0_19
	b	.LBB0_17
.LBB0_17:
	mov	w0, #58
	bl	next_token
	cbz	x0, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldr	x0, [sp, #16]
	bl	read_label
	stur	x0, [x29, #-8]
	b	.LBB0_20
.LBB0_19:
	ldr	x0, [sp, #16]
	bl	unget_token
	bl	read_expr_opt
	str	x0, [sp, #8]
	mov	w0, #59
	bl	expect
	ldr	x8, [sp, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_20
.LBB0_20:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_stmt, .Lfunc_end0-read_stmt
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_8-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_7-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_12-.Ltmp0
                                        // -- End function
	.type	TKEYWORD,@object                // @TKEYWORD
	.bss
	.globl	TKEYWORD
	.p2align	3
TKEYWORD:
	.xword	0                               // 0x0
	.size	TKEYWORD, 8
	.type	TIDENT,@object                  // @TIDENT
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_stmt
	.addrsig_sym get
	.addrsig_sym read_compound_stmt
	.addrsig_sym read_if_stmt
	.addrsig_sym read_for_stmt
	.addrsig_sym read_while_stmt
	.addrsig_sym read_do_stmt
	.addrsig_sym read_return_stmt
	.addrsig_sym read_switch_stmt
	.addrsig_sym read_case_label
	.addrsig_sym read_default_label
	.addrsig_sym read_break_stmt
	.addrsig_sym read_continue_stmt
	.addrsig_sym read_goto_stmt
	.addrsig_sym next_token
	.addrsig_sym read_label
	.addrsig_sym unget_token
	.addrsig_sym read_expr_opt
	.addrsig_sym expect
	.addrsig_sym TKEYWORD
	.addrsig_sym TIDENT