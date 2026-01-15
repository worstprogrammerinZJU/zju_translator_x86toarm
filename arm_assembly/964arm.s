	.text
	.p2align	2                               // -- Begin function emit_assign_deref
	.type	emit_assign_deref,@function
emit_assign_deref:                      // @emit_assign_deref
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	push
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	bl	emit_expr
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x8, [x8]
	ldr	w0, [x8]
	mov	w1, wzr
	bl	do_emit_assign_deref
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_assign_deref, .Lfunc_end0-emit_assign_deref
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
	.addrsig_sym emit_assign_deref
	.addrsig_sym push
	.addrsig_sym emit_expr
	.addrsig_sym do_emit_assign_deref
	.addrsig_sym SAVE