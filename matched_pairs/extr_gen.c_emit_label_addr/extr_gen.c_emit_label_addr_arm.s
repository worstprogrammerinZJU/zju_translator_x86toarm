	.text
	.p2align	2                               // -- Begin function emit_label_addr
	.type	emit_label_addr,@function
emit_label_addr:                        // @emit_label_addr
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w1, [x8]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	emit
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	emit_label_addr, .Lfunc_end0-emit_label_addr
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
	.asciz	"mov $%s, #rax"
	.size	.L.str, 14
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym emit_label_addr
	.addrsig_sym emit
	.addrsig_sym SAVE