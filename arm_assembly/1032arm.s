	.text
	.p2align	2                               // -- Begin function maybe_emit_builtin
	.type	maybe_emit_builtin,@function
maybe_emit_builtin:                     // @maybe_emit_builtin
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp]
	ldr	x8, [sp]
	ldr	w1, [x8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	strcmp
	cbnz	w0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x0, [sp]
	bl	emit_builtin_return_address
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_2:
	ldr	x8, [sp]
	ldr	w1, [x8]
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	strcmp
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x0, [sp]
	bl	emit_builtin_reg_class
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_4:
	ldr	x8, [sp]
	ldr	w1, [x8]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	strcmp
	cbnz	w0, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x0, [sp]
	bl	emit_builtin_va_start
	mov	w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_7
.LBB0_6:
	stur	wzr, [x29, #-4]
	b	.LBB0_7
.LBB0_7:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	maybe_emit_builtin, .Lfunc_end0-maybe_emit_builtin
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
	.asciz	"__builtin_return_address"
	.size	.L.str, 25
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"__builtin_reg_class"
	.size	.L.str.1, 20
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"__builtin_va_start"
	.size	.L.str.2, 19
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym maybe_emit_builtin
	.addrsig_sym strcmp
	.addrsig_sym emit_builtin_return_address
	.addrsig_sym emit_builtin_reg_class
	.addrsig_sym emit_builtin_va_start
	.addrsig_sym SAVE