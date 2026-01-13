	.text
	.globl	emit_toplevel                   // -- Begin function emit_toplevel
	.p2align	2
	.type	emit_toplevel,@function
emit_toplevel:                          // @emit_toplevel
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x9, stackpos
	mov	w8, #8
	str	w8, [x9, :lo12:stackpos]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, AST_FUNC
	ldr	x9, [x9, :lo12:AST_FUNC]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp, #8]
	bl	emit_func_prologue
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	bl	emit_expr
	bl	emit_ret
	b	.LBB0_6
.LBB0_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	adrp	x9, AST_DECL
	ldr	x9, [x9, :lo12:AST_DECL]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp, #8]
	bl	emit_global_var
	b	.LBB0_5
.LBB0_4:
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_6
.LBB0_6:
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_toplevel, .Lfunc_end0-emit_toplevel
                                        // -- End function
	.type	stackpos,@object                // @stackpos
	.bss
	.globl	stackpos
	.p2align	2
stackpos:
	.word	0                               // 0x0
	.size	stackpos, 4
	.type	AST_FUNC,@object                // @AST_FUNC
	.globl	AST_FUNC
	.p2align	3
AST_FUNC:
	.xword	0                               // 0x0
	.size	AST_FUNC, 8
	.type	AST_DECL,@object                // @AST_DECL
	.globl	AST_DECL
	.p2align	3
AST_DECL:
	.xword	0                               // 0x0
	.size	AST_DECL, 8
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"internal error"
	.size	.L.str, 15
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_func_prologue
	.addrsig_sym emit_expr
	.addrsig_sym emit_ret
	.addrsig_sym emit_global_var
	.addrsig_sym error
	.addrsig_sym stackpos
	.addrsig_sym AST_FUNC
	.addrsig_sym AST_DECL