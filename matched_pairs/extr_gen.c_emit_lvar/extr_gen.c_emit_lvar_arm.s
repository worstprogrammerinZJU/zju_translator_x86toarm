	.text
	.p2align	2                               // -- Begin function emit_lvar
	.type	emit_lvar,@function
emit_lvar:                              // @emit_lvar
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	ensure_lvar_init
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	w2, [x8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	emit_lload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_lvar, .Lfunc_end0-emit_lvar
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
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_lvar
	.addrsig_sym ensure_lvar_init
	.addrsig_sym emit_lload
	.addrsig_sym SAVE