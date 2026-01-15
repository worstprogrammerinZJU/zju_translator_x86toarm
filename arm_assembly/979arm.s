	.text
	.p2align	2                               // -- Begin function emit_computed_goto
	.type	emit_computed_goto,@function
emit_computed_goto:                     // @emit_computed_goto
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8]
	bl	emit_expr
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_computed_goto, .Lfunc_end0-emit_computed_goto
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
	.asciz	"jmp *#rax"
	.size	.L.str, 10
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_computed_goto
	.addrsig_sym emit_expr
	.addrsig_sym emit
	.addrsig_sym SAVE