	.text
	.globl	find_replace_paths              // -- Begin function find_replace_paths
	.p2align	2
	.type	find_replace_paths,@function
find_replace_paths:                     // @find_replace_paths
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #64
	sub	x8, x29, #40
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8, #32]
	stur	w1, [x29, #-12]
	str	x2, [x8, #16]
	str	x3, [x8, #8]
	ldur	w0, [x29, #-12]
	mov	w1, #8
	bl	calloc
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8]
	stur	wzr, [x29, #-44]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-44]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #32]
	ldursw	x10, [x29, #-44]
	ldr	x0, [x9, x10, lsl #3]
	ldr	x1, [x8, #16]
	ldr	x2, [x8, #8]
	add	x3, sp, #20
	str	x3, [sp]                        // 8-byte Folded Spill
	bl	find_replace
	ldr	x0, [sp]                        // 8-byte Folded Reload
	bl	copy_string
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldursw	x9, [x29, #-44]
	str	x0, [x8, x9, lsl #3]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-44]
	add	w8, w8, #1
	stur	w8, [x29, #-44]
	b	.LBB0_1
.LBB0_4:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8]
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #64
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	find_replace_paths, .Lfunc_end0-find_replace_paths
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym find_replace
	.addrsig_sym copy_string