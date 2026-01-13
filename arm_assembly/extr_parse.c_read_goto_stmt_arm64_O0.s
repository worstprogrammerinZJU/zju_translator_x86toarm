	.text
	.p2align	2                               // -- Begin function read_goto_stmt
	.type	read_goto_stmt,@function
read_goto_stmt:                         // @read_goto_stmt
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	mov	w0, #42
	bl	next_token
	cbz	x0, .LBB0_4
	b	.LBB0_1
.LBB0_1:
	bl	peek
	stur	x0, [x29, #-16]
	bl	read_cast_expr
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x8, [x8]
	ldr	x8, [x8]
	adrp	x9, KIND_PTR
	ldr	x9, [x9, :lo12:KIND_PTR]
	subs	x8, x8, x9
	b.eq	.LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	ldur	x0, [x29, #-24]
	bl	node2s
	mov	w2, w0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_3
.LBB0_3:
	ldur	x0, [x29, #-24]
	bl	ast_computed_goto
	stur	x0, [x29, #-8]
	b	.LBB0_8
.LBB0_4:
	bl	get
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x8, [sp, #32]
	ldr	x8, [x8]
	adrp	x9, TIDENT
	ldr	x9, [x9, :lo12:TIDENT]
	subs	x8, x8, x9
	b.eq	.LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	ldr	x0, [sp, #32]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	errort
	b	.LBB0_7
.LBB0_7:
	mov	w0, #59
	bl	expect
	ldr	x8, [sp, #32]
	ldr	w0, [x8, #8]
	bl	ast_goto
	str	x0, [sp, #24]
	adrp	x8, gotos
	ldr	w0, [x8, :lo12:gotos]
	ldr	x1, [sp, #24]
	bl	vec_push
	ldr	x8, [sp, #24]
	stur	x8, [x29, #-8]
	b	.LBB0_8
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	read_goto_stmt, .Lfunc_end0-read_goto_stmt
                                        // -- End function
	.type	KIND_PTR,@object                // @KIND_PTR
	.bss
	.globl	KIND_PTR
	.p2align	3
KIND_PTR:
	.xword	0                               // 0x0
	.size	KIND_PTR, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pointer expected for computed goto, but got %s"
	.size	.L.str, 47
	.type	TIDENT,@object                  // @TIDENT
	.bss
	.globl	TIDENT
	.p2align	3
TIDENT:
	.xword	0                               // 0x0
	.size	TIDENT, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"identifier expected, but got %s"
	.size	.L.str.1, 32
	.type	gotos,@object                   // @gotos
	.bss
	.globl	gotos
	.p2align	2
gotos:
	.word	0                               // 0x0
	.size	gotos, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_goto_stmt
	.addrsig_sym next_token
	.addrsig_sym peek
	.addrsig_sym read_cast_expr
	.addrsig_sym errort
	.addrsig_sym node2s
	.addrsig_sym ast_computed_goto
	.addrsig_sym get
	.addrsig_sym tok2s
	.addrsig_sym expect
	.addrsig_sym ast_goto
	.addrsig_sym vec_push
	.addrsig_sym KIND_PTR
	.addrsig_sym TIDENT
	.addrsig_sym gotos