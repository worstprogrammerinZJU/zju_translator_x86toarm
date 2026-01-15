	.text
	.p2align	2                               // -- Begin function emit_logand
	.type	emit_logand,@function
emit_logand:                            // @emit_logand
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	bl	make_label
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8, #4]
	bl	emit_expr
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	bl	emit
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	bl	emit
	ldur	x1, [x29, #-16]
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	bl	emit
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	bl	emit_expr
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	bl	emit
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	bl	emit
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	bl	emit
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	bl	emit
	ldur	x0, [x29, #-16]
	bl	emit_label
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	emit_logand, .Lfunc_end0-emit_logand
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
	.asciz	"test #rax, #rax"
	.size	.L.str, 16
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mov $0, #rax"
	.size	.L.str.1, 13
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"je %s"
	.size	.L.str.2, 6
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"mov $1, #rax"
	.size	.L.str.3, 13
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_logand
	.addrsig_sym make_label
	.addrsig_sym emit_expr
	.addrsig_sym emit
	.addrsig_sym emit_label
	.addrsig_sym SAVE