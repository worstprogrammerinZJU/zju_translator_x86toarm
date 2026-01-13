	.text
	.p2align	2                               // -- Begin function ensure_lvar_init
	.type	ensure_lvar_init,@function
ensure_lvar_init:                       // @ensure_lvar_init
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, AST_LVAR
	ldr	x9, [x9, :lo12:AST_LVAR]
	subs	x8, x8, x9
	cset	w8, eq
	and	w0, w8, #0x1
	bl	assert
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #16]
	ldr	w2, [x8]
	bl	emit_decl_init
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]
                                        // kill: def $x9 killed $xzr
	str	xzr, [x8, #8]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	ensure_lvar_init, .Lfunc_end0-ensure_lvar_init
                                        // -- End function
	.type	SAVE,@object                    // @SAVE
	.bss
	.globl	SAVE
	.p2align	2
SAVE:
	.word	0                               // 0x0
	.size	SAVE, 4
	.type	AST_LVAR,@object                // @AST_LVAR
	.globl	AST_LVAR
	.p2align	3
AST_LVAR:
	.xword	0                               // 0x0
	.size	AST_LVAR, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ensure_lvar_init
	.addrsig_sym assert
	.addrsig_sym emit_decl_init
	.addrsig_sym SAVE
	.addrsig_sym AST_LVAR