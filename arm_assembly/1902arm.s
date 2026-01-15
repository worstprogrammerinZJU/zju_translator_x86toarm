	.text
	.p2align	2                               // -- Begin function read_label
	.type	read_label,@function
read_label:                             // @read_label
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	str	x8, [sp, #16]
	adrp	x8, labels
	ldr	w0, [x8, :lo12:labels]
	ldr	x1, [sp, #16]
	bl	map_get
	cbz	x0, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	x8, [x29, #-8]
	str	x8, [sp]                        // 8-byte Folded Spill
	ldur	x0, [x29, #-8]
	bl	tok2s
	mov	w2, w0
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	bl	errort
	b	.LBB0_2
.LBB0_2:
	ldr	x0, [sp, #16]
	bl	ast_label
	str	x0, [sp, #8]
	adrp	x8, labels
	ldr	w0, [x8, :lo12:labels]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	map_put
	ldr	x0, [sp, #8]
	bl	read_label_tail
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	read_label, .Lfunc_end0-read_label
                                        // -- End function
	.type	labels,@object                  // @labels
	.bss
	.globl	labels
	.p2align	2
labels:
	.word	0                               // 0x0
	.size	labels, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"duplicate label: %s"
	.size	.L.str, 20
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym read_label
	.addrsig_sym map_get
	.addrsig_sym errort
	.addrsig_sym tok2s
	.addrsig_sym ast_label
	.addrsig_sym map_put
	.addrsig_sym read_label_tail
	.addrsig_sym labels