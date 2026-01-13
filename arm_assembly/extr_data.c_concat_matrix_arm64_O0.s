	.text
	.globl	concat_matrix                   // -- Begin function concat_matrix
	.p2align	2
	.type	concat_matrix,@function
concat_matrix:                          // @concat_matrix
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	x9, x8
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [sp]                        // 8-byte Folded Spill
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	stur	wzr, [x29, #-8]
	ldr	w8, [x0, #16]
	str	w8, [x9, #16]
	ldr	w8, [x0]
	ldr	w10, [x1]
	add	w8, w8, w10
	str	w8, [x9]
	ldr	w8, [x0]
	ldr	w9, [x1]
	add	w0, w8, w9
	mov	w1, #8
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldursw	x10, [x29, #-4]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-8]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	stur	wzr, [x29, #-4]
	b	.LBB0_5
.LBB0_5:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldursw	x10, [x29, #-4]
	ldr	w8, [x8, x10, lsl #2]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-8]
	mov	w11, w10
	add	w11, w11, #1
	stur	w11, [x29, #-8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_8:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	concat_matrix, .Lfunc_end0-concat_matrix
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc