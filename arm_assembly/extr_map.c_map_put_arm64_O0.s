	.text
	.globl	map_put                         // -- Begin function map_put
	.p2align	2
	.type	map_put,@function
map_put:                                // @map_put
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x0, [x29, #-8]
	bl	maybe_rehash
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	ldur	x0, [x29, #-16]
	bl	hash
	ldr	w8, [sp, #20]
	and	w8, w0, w8
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #16]
	ldr	x8, [x8, x9, lsl #3]
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]
	adrp	x9, TOMBSTONE
	ldr	x9, [x9, :lo12:TOMBSTONE]
	subs	x8, x8, x9
	b.ne	.LBB0_6
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #16]
	str	x8, [x9, x10, lsl #3]
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #16]
	str	x8, [x9, x10, lsl #3]
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #28]
	add	w8, w8, #1
	str	w8, [x9, #28]
	ldr	x8, [sp, #8]
	cbnz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #24]
	add	w8, w8, #1
	str	w8, [x9, #24]
	b	.LBB0_5
.LBB0_5:
	b	.LBB0_10
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-16]
	bl	strcmp
	cbnz	w0, .LBB0_8
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #16]
	str	x8, [x9, x10, lsl #3]
	b	.LBB0_10
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	ldr	w9, [sp, #20]
	and	w8, w8, w9
	str	w8, [sp, #16]
	b	.LBB0_1
.LBB0_10:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	map_put, .Lfunc_end0-map_put
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
	.addrsig_sym maybe_rehash
	.addrsig_sym hash
	.addrsig_sym strcmp
	.addrsig_sym TOMBSTONE