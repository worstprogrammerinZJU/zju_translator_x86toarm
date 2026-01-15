	.text
	.p2align	2                               // -- Begin function block_mark_referenced
	.type	block_mark_referenced,@function
block_mark_referenced:                  // @block_mark_referenced
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-12]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_6
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_11
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #8]
	adrp	x9, TOP
	ldr	x9, [x9, :lo12:TOP]
	subs	x8, x8, x9
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #32]
	mov	w8, #1
	str	w8, [x9]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	bl	block_mark_referenced
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #16]
	bl	block_mark_referenced
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #40]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_12:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_mark_referenced, .Lfunc_end0-block_mark_referenced
                                        // -- End function
	.type	TOP,@object                     // @TOP
	.bss
	.globl	TOP
	.p2align	3
TOP:
	.xword	0                               // 0x0
	.size	TOP, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_mark_referenced
	.addrsig_sym TOP