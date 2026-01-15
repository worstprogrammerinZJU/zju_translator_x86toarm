	.text
	.globl	matrix_add_matrix               // -- Begin function matrix_add_matrix
	.p2align	2
	.type	matrix_add_matrix,@function
matrix_add_matrix:                      // @matrix_add_matrix
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-8]
	str	x2, [sp, #16]
	str	x3, [sp, #24]
	ldur	w9, [x29, #-16]
	ldr	w10, [sp, #16]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, eq
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_2
.LBB0_2:
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	and	w0, w8, #0x1
	bl	assert
	str	wzr, [sp, #12]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_5 Depth 2
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-16]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	str	wzr, [sp, #8]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	ldr	x10, [x8, x9, lsl #3]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #8]
	add	x9, x8, x9, lsl #3
	ldr	x8, [x9]
	add	x8, x8, x10
	str	x8, [x9]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_5
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_3
.LBB0_10:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	matrix_add_matrix, .Lfunc_end0-matrix_add_matrix
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym assert