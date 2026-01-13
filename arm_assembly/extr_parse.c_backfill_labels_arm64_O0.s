	.text
	.p2align	2                               // -- Begin function backfill_labels
	.type	backfill_labels,@function
backfill_labels:                        // @backfill_labels
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-4]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	adrp	x8, gotos
	ldr	w0, [x8, :lo12:gotos]
	bl	vec_len
	ldr	w8, [sp, #12]                   // 4-byte Folded Reload
	subs	w8, w8, w0
	b.ge	.LBB0_9
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	adrp	x8, gotos
	ldr	w0, [x8, :lo12:gotos]
	ldur	w1, [x29, #-4]
	bl	vec_get
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	str	x8, [sp, #24]
	adrp	x8, labels
	ldr	w0, [x8, :lo12:labels]
	ldr	x1, [sp, #24]
	bl	map_get
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x10, [x8, #8]
	adrp	x8, AST_GOTO
	ldr	x11, [x8, :lo12:AST_GOTO]
	adrp	x9, .L.str.2
	add	x9, x9, :lo12:.L.str.2
	adrp	x8, .L.str.1
	add	x8, x8, :lo12:.L.str.1
	subs	x10, x10, x11
	csel	x1, x8, x9, eq
	ldr	x2, [sp, #24]
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	error
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldur	x9, [x29, #-16]
	str	x8, [x9, #16]
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	bl	make_label
	ldr	x8, [sp, #16]
	str	x0, [x8, #16]
	ldur	x8, [x29, #-16]
	str	x0, [x8, #16]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_9:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	backfill_labels, .Lfunc_end0-backfill_labels
                                        // -- End function
	.type	gotos,@object                   // @gotos
	.bss
	.globl	gotos
	.p2align	2
gotos:
	.word	0                               // 0x0
	.size	gotos, 4
	.type	labels,@object                  // @labels
	.globl	labels
	.p2align	2
labels:
	.word	0                               // 0x0
	.size	labels, 4
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"stray %s: %s"
	.size	.L.str, 13
	.type	AST_GOTO,@object                // @AST_GOTO
	.bss
	.globl	AST_GOTO
	.p2align	3
AST_GOTO:
	.xword	0                               // 0x0
	.size	AST_GOTO, 8
	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"goto"
	.size	.L.str.1, 5
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"unary &&"
	.size	.L.str.2, 9
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym backfill_labels
	.addrsig_sym vec_len
	.addrsig_sym vec_get
	.addrsig_sym map_get
	.addrsig_sym error
	.addrsig_sym make_label
	.addrsig_sym gotos
	.addrsig_sym labels
	.addrsig_sym AST_GOTO