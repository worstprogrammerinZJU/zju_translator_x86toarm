	.text
	.globl	set_union                       // -- Begin function set_union
	.p2align	2
	.type	set_union,@function
set_union:                              // @set_union
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	cbz	x8, .LBB0_6
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	set_has
	cbnz	w0, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	w1, [x8]
	bl	set_add
	str	x0, [sp, #8]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-8]
	b	.LBB0_1
.LBB0_6:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	set_union, .Lfunc_end0-set_union
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym set_has
	.addrsig_sym set_add