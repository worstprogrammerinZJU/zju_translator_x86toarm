	.text
	.globl	load_tags_paths                 // -- Begin function load_tags_paths
	.p2align	2
	.type	load_tags_paths,@function
load_tags_paths:                        // @load_tags_paths
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #64
	sub	x8, x29, #16
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8]
	stur	w1, [x29, #-20]
	stur	w2, [x29, #-24]
	ldur	w0, [x29, #-20]
	ldur	w1, [x29, #-24]
	bl	make_matrix
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	str	x0, [x8, #8]
	stur	wzr, [x29, #-28]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_5 Depth 2
	ldur	w8, [x29, #-28]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldursw	x9, [x29, #-28]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	add	x3, sp, #36
	str	x3, [sp]                        // 8-byte Folded Spill
	bl	find_replace
	ldr	x3, [sp]                        // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	adrp	x2, .L.str.3
	add	x2, x2, :lo12:.L.str.3
	bl	find_replace
	ldr	x0, [sp]                        // 8-byte Folded Reload
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	bl	fopen
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	cbnz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x0, [sp, #24]
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	add	x2, sp, #20
	bl	fscanf
	subs	w8, w0, #1
	b.ne	.LBB0_9
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #8]
	ldursw	x9, [x29, #-28]
	ldr	x9, [x8, x9, lsl #3]
	ldrsw	x10, [sp, #20]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=2
	b	.LBB0_5
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #24]
	bl	fclose
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_1
.LBB0_11:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #64
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	load_tags_paths, .Lfunc_end0-load_tags_paths
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
	.asciz	".jpg"
	.size	.L.str.2, 5
	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	".txt"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"%d"
	.size	.L.str.5, 3
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_matrix
	.addrsig_sym find_replace
	.addrsig_sym fopen
	.addrsig_sym fscanf
	.addrsig_sym fclose