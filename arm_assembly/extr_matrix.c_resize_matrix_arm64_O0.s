	.text
	.globl	resize_matrix                   // -- Begin function resize_matrix
	.p2align	2
	.type	resize_matrix,@function
resize_matrix:                          // @resize_matrix
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	ldr	w8, [x0]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	q0, [x8]
	str	q0, [x9]
	ldr	x8, [x8, #16]
	str	x8, [x9, #16]
	b	.LBB0_16
.LBB0_2:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldursw	x8, [x29, #-4]
	lsl	x8, x8, #3
	mov	w1, w8
	bl	realloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	ldr	w8, [x8]
	stur	w8, [x29, #-8]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #16]
	mov	w1, #4
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-8]
	str	w0, [x8, x9, lsl #2]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_4
.LBB0_7:
	b	.LBB0_15
.LBB0_8:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x8]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	b.le	.LBB0_14
	b	.LBB0_9
.LBB0_9:
	ldur	w8, [x29, #-4]
	stur	w8, [x29, #-8]
	b	.LBB0_10
.LBB0_10:                               // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_10 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-8]
	ldr	w0, [x8, x9, lsl #2]
	bl	free
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_10 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_10
.LBB0_13:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldursw	x8, [x29, #-4]
	lsl	x8, x8, #3
	mov	w1, w8
	bl	realloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w10, [x29, #-4]
	str	w10, [x8]
	ldr	q0, [x8]
	str	q0, [x9]
	ldr	x8, [x8, #16]
	str	x8, [x9, #16]
	b	.LBB0_16
.LBB0_16:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	resize_matrix, .Lfunc_end0-resize_matrix
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc
	.addrsig_sym calloc
	.addrsig_sym free