	.text
	.globl	random_index_order              // -- Begin function random_index_order
	.p2align	2
	.type	random_index_order,@function
random_index_order:                     // @random_index_order
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	w0, [x29, #-4]
	stur	w1, [x29, #-8]
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w0, w8, w9
	mov	w1, #4
	bl	calloc
	str	x0, [sp, #16]
	ldur	w8, [x29, #-4]
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-8]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_4:
	ldur	w8, [x29, #-4]
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-8]
	subs	w9, w9, #1
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	str	w8, [sp, #8]
	ldr	w8, [sp, #12]
	str	w8, [sp]                        // 4-byte Folded Spill
	bl	rand
	ldr	w8, [sp]                        // 4-byte Folded Reload
	ldur	w9, [x29, #-8]
	ldr	w10, [sp, #12]
	subs	w10, w9, w10
	sdiv	w9, w0, w10
	mul	w9, w9, w10
	subs	w9, w0, w9
	add	w8, w8, w9
	str	w8, [sp, #4]
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #4]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #8]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #4]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_5
.LBB0_8:
	ldr	x0, [sp, #16]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	random_index_order, .Lfunc_end0-random_index_order
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym rand