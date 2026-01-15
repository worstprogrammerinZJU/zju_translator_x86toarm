	.text
	.p2align	2                               // -- Begin function emit_load_struct_ref
	.type	emit_load_struct_ref,@function
emit_load_struct_ref:                   // @emit_load_struct_ref
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	w2, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #128
                                        // kill: def $x8 killed $w8
	str	x8, [sp]                        // 8-byte Folded Spill
	subs	x8, x8, #3
	b.hi	.LBB0_6
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
	ldur	x0, [x29, #-8]
	bl	ensure_lvar_init
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #16]
	ldr	x9, [x9]
	add	x8, x8, x9
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	mov	w2, w8
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	emit_lload
	b	.LBB0_7
.LBB0_3:
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8, #24]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	mov	w2, w8
	bl	emit_gload
	b	.LBB0_7
.LBB0_4:
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #16]
	ldr	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldr	w8, [x8]
	ldr	w9, [sp, #12]
	add	w2, w8, w9
	bl	emit_load_struct_ref
	b	.LBB0_7
.LBB0_5:
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	bl	emit_expr
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	mov	w2, w8
	adrp	x1, .L.str.1
	add	x1, x1, :lo12:.L.str.1
	bl	emit_lload
	b	.LBB0_7
.LBB0_6:
	ldur	x0, [x29, #-8]
	bl	node2s
	mov	w1, w0
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	error
	b	.LBB0_7
.LBB0_7:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	emit_load_struct_ref, .Lfunc_end0-emit_load_struct_ref
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI0_0:
	.word	.LBB0_4-.Ltmp0
	.word	.LBB0_2-.Ltmp0
	.word	.LBB0_3-.Ltmp0
	.word	.LBB0_5-.Ltmp0
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
	.asciz	"rbp"
	.size	.L.str, 4
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"rax"
	.size	.L.str.1, 4
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"internal error: %s"
	.size	.L.str.2, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_load_struct_ref
	.addrsig_sym ensure_lvar_init
	.addrsig_sym emit_lload
	.addrsig_sym emit_gload
	.addrsig_sym emit_expr
	.addrsig_sym error
	.addrsig_sym node2s
	.addrsig_sym SAVE