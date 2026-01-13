	.text
	.p2align	2                               // -- Begin function read_if_stmt
	.type	read_if_stmt,@function
read_if_stmt:                           // @read_if_stmt
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	w0, #40
	bl	expect
	bl	read_boolean_expr
	str	x0, [sp, #16]
	mov	w0, #41
	bl	expect
	bl	read_stmt
	str	x0, [sp, #8]
	adrp	x8, KELSE
	ldr	w0, [x8, :lo12:KELSE]
	bl	next_token
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	mov	x2, xzr
	bl	ast_if
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_2:
	bl	read_stmt
	str	x0, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	ast_if
	stur	x0, [x29, #-8]
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_if_stmt, .Lfunc_end0-read_if_stmt
                                        // -- End function
	.type	KELSE,@object                   // @KELSE
	.bss
	.globl	KELSE
	.p2align	2
KELSE:
	.word	0                               // 0x0
	.size	KELSE, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_if_stmt
	.addrsig_sym expect
	.addrsig_sym read_boolean_expr
	.addrsig_sym read_stmt
	.addrsig_sym next_token
	.addrsig_sym ast_if
	.addrsig_sym KELSE