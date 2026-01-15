	.text
	.globl	load_labels_paths               // -- Begin function load_labels_paths
	.p2align	2
	.type	load_labels_paths,@function
load_labels_paths:                      // @load_labels_paths
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	str	x2, [sp, #32]
	str	w3, [sp, #28]
	str	x4, [sp, #16]
	ldur	w0, [x29, #-20]
	ldr	w1, [sp, #28]
	bl	make_matrix
	stur	x0, [x29, #-8]
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #12]
	ldur	w10, [x29, #-20]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #32]
	subs	x8, x8, #0
	cset	w8, ne
	str	w8, [sp, #8]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_8
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #32]
	ldr	w2, [sp, #28]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	w3, [x8, x9, lsl #2]
	bl	fill_truth
	ldr	x8, [sp, #16]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	w0, [x8, x9, lsl #2]
	ldr	w1, [sp, #28]
	ldr	x2, [sp, #16]
	bl	fill_hierarchy
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_8:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	load_labels_paths, .Lfunc_end0-load_labels_paths
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym fill_truth
	.addrsig_sym fill_hierarchy