	.text
	.p2align	2                               // -- Begin function read_do_stmt
	.type	read_do_stmt,@function
read_do_stmt:                           // @read_do_stmt
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	bl	make_label
	stur	x0, [x29, #-8]
	bl	make_label
	stur	x0, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	bl	SET_JUMP_LABELS
	bl	read_stmt
	stur	x0, [x29, #-24]
	bl	RESTORE_JUMP_LABELS
	bl	get
	stur	x0, [x29, #-32]
	ldur	x0, [x29, #-32]
	adrp	x8, KWHILE
	ldr	w1, [x8, :lo12:KWHILE]
	bl	is_keyword
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-32]
	str	x8, [sp, #40]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-32]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	mov	w0, #40
	bl	expect
	bl	read_boolean_expr
	stur	x0, [x29, #-40]
	mov	w0, #41
	bl	expect
	mov	w0, #59
	bl	expect
	bl	make_vector
	str	x0, [sp, #48]
	ldr	x8, [sp, #48]
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	ast_dest
	mov	x1, x0
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	bl	vec_push
	ldur	x8, [x29, #-24]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #48]
	ldur	x1, [x29, #-24]
	bl	vec_push
	b	.LBB0_4
.LBB0_4:
	ldr	x8, [sp, #48]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x8, [x29, #-40]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	ast_jump
	mov	w1, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	x2, xzr
	bl	ast_if
	mov	x1, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	vec_push
	ldr	x8, [sp, #48]
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-16]
	bl	ast_dest
	mov	x1, x0
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	bl	vec_push
	ldr	x0, [sp, #48]
	bl	ast_compound_stmt
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	read_do_stmt, .Lfunc_end0-read_do_stmt
                                        // -- End function
	.type	KWHILE,@object                  // @KWHILE
	.bss
	.globl	KWHILE
	.p2align	2
KWHILE:
	.word	0                               // 0x0
	.size	KWHILE, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"'while' is expected, but got %s"
	.size	.L.str, 32
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_do_stmt
	.addrsig_sym make_label
	.addrsig_sym SET_JUMP_LABELS
	.addrsig_sym read_stmt
	.addrsig_sym RESTORE_JUMP_LABELS
	.addrsig_sym get
	.addrsig_sym is_keyword
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym expect
	.addrsig_sym read_boolean_expr
	.addrsig_sym make_vector
	.addrsig_sym vec_push
	.addrsig_sym ast_dest
	.addrsig_sym ast_if
	.addrsig_sym ast_jump
	.addrsig_sym ast_compound_stmt
	.addrsig_sym KWHILE