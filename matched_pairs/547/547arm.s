	.text
	.globl	load_regression_labels_paths    // -- Begin function load_regression_labels_paths
	.p2align	2
	.type	load_regression_labels_paths,@function
load_regression_labels_paths:           // @load_regression_labels_paths
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #64
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-24]
	bl	make_matrix
	stur	x0, [x29, #-8]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldursw	x9, [x29, #-28]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	str	x2, [sp]                        // 8-byte Folded Spill
	add	x3, sp, #32
	str	x3, [sp, #16]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp]                        // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	find_replace
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.9
	add	x1, x1, :lo12:.L.str.9
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.10
	add	x1, x1, :lo12:.L.str.10
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.11
	add	x1, x1, :lo12:.L.str.11
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.13
	add	x1, x1, :lo12:.L.str.13
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #16]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.15
	add	x1, x1, :lo12:.L.str.15
	bl	find_replace
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	adrp	x1, .L.str.16
	add	x1, x1, :lo12:.L.str.16
	bl	fopen
	str	x0, [sp, #24]
	stur	wzr, [x29, #-32]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldur	w8, [x29, #-32]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x0, [sp, #24]
	ldur	x8, [x29, #-8]
	ldursw	x9, [x29, #-28]
	ldr	x8, [x8, x9, lsl #3]
	ldursw	x9, [x29, #-32]
	add	x2, x8, x9, lsl #2
	adrp	x1, .L.str.17
	add	x1, x1, :lo12:.L.str.17
	bl	fscanf
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-32]
	add	w8, w8, #1
	stur	w8, [x29, #-32]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	bl	fclose
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_1
.LBB0_8:
	ldur	x0, [x29, #-8]
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #64
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	load_regression_labels_paths, .Lfunc_end0-load_regression_labels_paths
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"labels"
	.size	.L.str.1, 7
	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"JPEGImages"
	.size	.L.str.2, 11
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	".BMP"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	".txt"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	".JPEG"
	.size	.L.str.5, 6
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	".JPG"
	.size	.L.str.6, 5
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	".JPeG"
	.size	.L.str.7, 6
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	".Jpeg"
	.size	.L.str.8, 6
	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	".PNG"
	.size	.L.str.9, 5
	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	".TIF"
	.size	.L.str.10, 5
	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	".bmp"
	.size	.L.str.11, 5
	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	".jpeg"
	.size	.L.str.12, 6
	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.asciz	".jpg"
	.size	.L.str.13, 5
	.type	.L.str.14,@object               // @.str.14
.L.str.14:
	.asciz	".png"
	.size	.L.str.14, 5
	.type	.L.str.15,@object               // @.str.15
.L.str.15:
	.asciz	".tif"
	.size	.L.str.15, 5
	.type	.L.str.16,@object               // @.str.16
.L.str.16:
	.asciz	"r"
	.size	.L.str.16, 2
	.type	.L.str.17,@object               // @.str.17
.L.str.17:
	.asciz	"%f"
	.size	.L.str.17, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym find_replace
	.addrsig_sym fopen
	.addrsig_sym fscanf
	.addrsig_sym fclose