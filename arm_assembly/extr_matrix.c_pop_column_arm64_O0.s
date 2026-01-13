	.text
	.globl	pop_column                      // -- Begin function pop_column
	.p2align	2
	.type	pop_column,@function
pop_column:                             // @pop_column
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	w0, [x8]
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #8]
	str	wzr, [sp, #4]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #4]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-12]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #8]
	ldrsw	x10, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	ldur	w8, [x29, #-12]
	str	w8, [sp]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #8]
	ldrsw	x9, [sp, #4]
	ldr	x8, [x8, x9, lsl #3]
	ldr	w9, [sp]
	add	w9, w9, #1
	ldr	w8, [x8, w9, sxtw #2]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	ldrsw	x10, [sp, #4]
	ldr	x9, [x9, x10, lsl #3]
	ldrsw	x10, [sp]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp]
	add	w8, w8, #1
	str	w8, [sp]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	.LBB0_1
.LBB0_8:
	ldur	x9, [x29, #-8]
	ldr	w8, [x9, #16]
	subs	w8, w8, #1
	str	w8, [x9, #16]
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	pop_column, .Lfunc_end0-pop_column
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc