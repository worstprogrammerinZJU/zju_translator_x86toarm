	.text
	.globl	map_remove                      // -- Begin function map_remove
	.p2align	2
	.type	map_remove,@function
map_remove:                             // @map_remove
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	b	.LBB0_9
.LBB0_2:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #12]
	ldr	x0, [sp, #16]
	bl	hash
	ldr	w8, [sp, #12]
	and	w8, w0, w8
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #8]
	ldr	x8, [x8, x9, lsl #3]
	adrp	x9, TOMBSTONE
	ldr	x9, [x9, :lo12:TOMBSTONE]
	subs	x8, x8, x9
	b.eq	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #16]
	bl	strcmp
	cbz	x0, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_8
.LBB0_7:
	adrp	x8, TOMBSTONE
	ldr	x8, [x8, :lo12:TOMBSTONE]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #8]
	str	x8, [x9, x10, lsl #3]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #8]
	ldrsw	x10, [sp, #8]
	mov	x8, xzr
	str	x8, [x9, x10, lsl #3]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #4]
	subs	w8, w8, #1
	str	w8, [x9, #4]
	b	.LBB0_9
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	ldr	w9, [sp, #12]
	and	w8, w8, w9
	str	w8, [sp, #8]
	b	.LBB0_3
.LBB0_9:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	map_remove, .Lfunc_end0-map_remove
                                        // -- End function
	.type	TOMBSTONE,@object               // @TOMBSTONE
	.bss
	.globl	TOMBSTONE
	.p2align	3
TOMBSTONE:
	.xword	0
	.size	TOMBSTONE, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hash
	.addrsig_sym strcmp
	.addrsig_sym TOMBSTONE