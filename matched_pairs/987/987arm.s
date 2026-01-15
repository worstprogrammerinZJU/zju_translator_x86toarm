	.text
	.p2align	2                               // -- Begin function emit_deref
	.type	emit_deref,@function
emit_deref:                             // @emit_deref
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	emit_expr
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w0, [x8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	mov	w2, wzr
	bl	emit_lload
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w1, [x8]
	bl	emit_load_convert
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_deref, .Lfunc_end0-emit_deref
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
	.asciz	"rax"
	.size	.L.str, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_deref
	.addrsig_sym emit_expr
	.addrsig_sym emit_lload
	.addrsig_sym emit_load_convert
	.addrsig_sym SAVE