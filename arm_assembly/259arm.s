	.text
	.globl	block_drop_unreferenced         // -- Begin function block_drop_unreferenced
	.p2align	2
	.type	block_drop_unreferenced,@function
block_drop_unreferenced:                // @block_drop_unreferenced
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	ldur	w0, [x29, #-4]
	bl	block_mark_referenced
	bl	gen_noop
	stur	w0, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	sub	x0, x29, #4
	bl	block_take
	str	x0, [sp, #16]
	cbz	x0, .LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.ne	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	cbnz	w8, .LBB0_5
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	bl	inst_free
	b	.LBB0_6
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	str	w8, [sp, #12]                   // 4-byte Folded Spill
	ldr	x0, [sp, #16]
	bl	inst_block
	mov	w1, w0
	ldr	w0, [sp, #12]                   // 4-byte Folded Reload
	bl	BLOCK
	stur	w0, [x29, #-8]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_1
.LBB0_7:
	ldur	w0, [x29, #-8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	block_drop_unreferenced, .Lfunc_end0-block_drop_unreferenced
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym block_mark_referenced
	.addrsig_sym gen_noop
	.addrsig_sym block_take
	.addrsig_sym inst_free
	.addrsig_sym BLOCK
	.addrsig_sym inst_block