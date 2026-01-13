	.text
	.globl	copy_matrix                     // -- Begin function copy_matrix
	.p2align	2
	.type	copy_matrix,@function
copy_matrix:                            // @copy_matrix
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
	ldr	w9, [x0]
	str	w9, [x8]
	ldr	w9, [x0, #4]
	str	w9, [x8, #4]
	ldr	w0, [x8]
	mov	w1, #8
	bl	calloc
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	x0, [x8, #8]
	stur	wzr, [x29, #-4]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #4]
	mov	w1, #4
	bl	calloc
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x10, [x8, #8]
	ldursw	x11, [x29, #-4]
	str	x0, [x10, x11, lsl #3]
	ldr	w0, [x8, #4]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-4]
	ldr	x1, [x9, x10, lsl #3]
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-4]
	ldr	x3, [x8, x9, lsl #3]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	copy_matrix, .Lfunc_end0-copy_matrix
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym copy_cpu