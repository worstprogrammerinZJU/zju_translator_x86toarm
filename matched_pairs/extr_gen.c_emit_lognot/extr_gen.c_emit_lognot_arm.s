	.text
	.p2align	2                               // -- Begin function emit_lognot
	.type	emit_lognot,@function
emit_lognot:                            // @emit_lognot
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
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	emit
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	bl	emit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_lognot, .Lfunc_end0-emit_lognot
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
	.asciz	"cmp $0, #rax"
	.size	.L.str, 13
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"sete #al"
	.size	.L.str.1, 9
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"movzb #al, #eax"
	.size	.L.str.2, 16
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_lognot
	.addrsig_sym emit_expr
	.addrsig_sym emit
	.addrsig_sym SAVE