	.text
	.p2align	2                               // -- Begin function map_get_nostack
	.type	map_get_nostack,@function
map_get_nostack:                        // @map_get_nostack
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	cbnz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_10
.LBB0_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #4]
	ldr	x0, [sp, #8]
	bl	hash
	ldr	w8, [sp, #4]
	and	w8, w0, w8
	str	w8, [sp]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	cbz	x8, .LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	adrp	x9, TOMBSTONE
	ldr	x9, [x9, :lo12:TOMBSTONE]
	subs	x8, x8, x9
	b.eq	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #8]
	bl	strcmp
	cbnz	w0, .LBB0_7
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp]
	ldr	x8, [x8, x9, lsl #3]
	stur	x8, [x29, #-8]
	b	.LBB0_10
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp]
	add	w8, w8, #1
	ldr	w9, [sp, #4]
	and	w8, w8, w9
	str	w8, [sp]
	b	.LBB0_3
.LBB0_9:
                                        // kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	.LBB0_10
.LBB0_10:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	map_get_nostack, .Lfunc_end0-map_get_nostack
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
	.addrsig_sym map_get_nostack
	.addrsig_sym hash
	.addrsig_sym strcmp
	.addrsig_sym TOMBSTONE