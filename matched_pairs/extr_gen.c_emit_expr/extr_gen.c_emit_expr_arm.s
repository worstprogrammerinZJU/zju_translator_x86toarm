	.text
	.p2align	2                               // -- Begin function emit_expr
	.type	emit_expr,@function
emit_expr:                              // @emit_expr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	maybe_print_source_loc
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #33
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #120
	b.hi	.LBB0_37
// %bb.1:
	ldr	x11, [sp]                       // 8-byte Folded Reload
	adrp	x10, .LJTI0_0
	add	x10, x10, :lo12:.LJTI0_0
.Ltmp0:
	adr	x8, .Ltmp0
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
.LBB0_2:
	ldr	x0, [sp, #8]
	bl	emit_literal
	b	.LBB0_38
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	emit_lvar
	b	.LBB0_38
.LBB0_4:
	ldr	x0, [sp, #8]
	bl	emit_gvar
	b	.LBB0_38
.LBB0_5:
	ldr	x0, [sp, #8]
	bl	emit_addr
	b	.LBB0_38
.LBB0_6:
	ldr	x0, [sp, #8]
	bl	maybe_emit_builtin
	cbz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	b	.LBB0_38
.LBB0_8:
	b	.LBB0_9
.LBB0_9:
	ldr	x0, [sp, #8]
	bl	emit_func_call
	b	.LBB0_38
.LBB0_10:
	ldr	x0, [sp, #8]
	bl	emit_decl
	b	.LBB0_38
.LBB0_11:
	ldr	x0, [sp, #8]
	bl	emit_conv
	b	.LBB0_38
.LBB0_12:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	emit_addr
	b	.LBB0_38
.LBB0_13:
	ldr	x0, [sp, #8]
	bl	emit_deref
	b	.LBB0_38
.LBB0_14:
	ldr	x0, [sp, #8]
	bl	emit_ternary
	b	.LBB0_38
.LBB0_15:
	ldr	x0, [sp, #8]
	bl	emit_goto
	b	.LBB0_38
.LBB0_16:
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #12]
	cbz	w8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #12]
	bl	emit_label
	b	.LBB0_18
.LBB0_18:
	b	.LBB0_38
.LBB0_19:
	ldr	x0, [sp, #8]
	bl	emit_return
	b	.LBB0_38
.LBB0_20:
	ldr	x0, [sp, #8]
	bl	emit_compound_stmt
	b	.LBB0_38
.LBB0_21:
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #4]
	mov	w2, wzr
	bl	emit_load_struct_ref
	b	.LBB0_38
.LBB0_22:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	emit_pre_inc_dec
	b	.LBB0_38
.LBB0_23:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	emit_pre_inc_dec
	b	.LBB0_38
.LBB0_24:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	emit_post_inc_dec
	b	.LBB0_38
.LBB0_25:
	ldr	x0, [sp, #8]
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	emit_post_inc_dec
	b	.LBB0_38
.LBB0_26:
	ldr	x0, [sp, #8]
	bl	emit_lognot
	b	.LBB0_38
.LBB0_27:
	ldr	x0, [sp, #8]
	bl	emit_bitand
	b	.LBB0_38
.LBB0_28:
	ldr	x0, [sp, #8]
	bl	emit_bitor
	b	.LBB0_38
.LBB0_29:
	ldr	x0, [sp, #8]
	bl	emit_bitnot
	b	.LBB0_38
.LBB0_30:
	ldr	x0, [sp, #8]
	bl	emit_logand
	b	.LBB0_38
.LBB0_31:
	ldr	x0, [sp, #8]
	bl	emit_logor
	b	.LBB0_38
.LBB0_32:
	ldr	x0, [sp, #8]
	bl	emit_cast
	b	.LBB0_38
.LBB0_33:
	ldr	x0, [sp, #8]
	bl	emit_comma
	b	.LBB0_38
.LBB0_34:
	ldr	x0, [sp, #8]
	bl	emit_assign
	b	.LBB0_38
.LBB0_35:
	ldr	x0, [sp, #8]
	bl	emit_label_addr
	b	.LBB0_38
.LBB0_36:
	ldr	x0, [sp, #8]
	bl	emit_computed_goto
	b	.LBB0_38
.LBB0_37:
	ldr	x0, [sp, #8]
	bl	emit_binop
	b	.LBB0_38
.LBB0_38:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_expr, .Lfunc_end0-emit_expr
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_26-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_27-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_33-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_34-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_28-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_29-.Ltmp0
	.word	.LBB0_37-.Ltmp0
	.word	.LBB0_22-.Ltmp0
	.word	.LBB0_23-.Ltmp0
	.word	.LBB0_24-.Ltmp0
	.word	.LBB0_25-.Ltmp0
	.word	.LBB0_31-.Ltmp0
	.word	.LBB0_30-.Ltmp0
	.word	.LBB0_35-.Ltmp0
	.word	.LBB0_32-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_21-.Ltmp0
	.word	.LBB0_19-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_16-.Ltmp0
	.word	.LBB0_14-.Ltmp0
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_15-.Ltmp0
	.word	.LBB0_9-.Ltmp0
	.word	.LBB0_5-.Ltmp0
	.word	.LBB0_6-.Ltmp0
	.word	.LBB0_13-.Ltmp0
	.word	.LBB0_10-.Ltmp0
	.word	.LBB0_11-.Ltmp0
	.word	.LBB0_36-.Ltmp0
	.word	.LBB0_20-.Ltmp0
	.word	.LBB0_12-.Ltmp0
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"add"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"sub"
	.size	.L.str.1, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_expr
	.addrsig_sym maybe_print_source_loc
	.addrsig_sym emit_literal
	.addrsig_sym emit_lvar
	.addrsig_sym emit_gvar
	.addrsig_sym emit_addr
	.addrsig_sym maybe_emit_builtin
	.addrsig_sym emit_func_call
	.addrsig_sym emit_decl
	.addrsig_sym emit_conv
	.addrsig_sym emit_deref
	.addrsig_sym emit_ternary
	.addrsig_sym emit_goto
	.addrsig_sym emit_label
	.addrsig_sym emit_return
	.addrsig_sym emit_compound_stmt
	.addrsig_sym emit_load_struct_ref
	.addrsig_sym emit_pre_inc_dec
	.addrsig_sym emit_post_inc_dec
	.addrsig_sym emit_lognot
	.addrsig_sym emit_bitand
	.addrsig_sym emit_bitor
	.addrsig_sym emit_bitnot
	.addrsig_sym emit_logand
	.addrsig_sym emit_logor
	.addrsig_sym emit_cast
	.addrsig_sym emit_comma
	.addrsig_sym emit_assign
	.addrsig_sym emit_label_addr
	.addrsig_sym emit_computed_goto
	.addrsig_sym emit_binop
	.addrsig_sym SAVE