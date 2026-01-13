	.text
	.globl	fill_truth_swag                 // -- Begin function fill_truth_swag
	.p2align	2
	.type	fill_truth_swag,@function
fill_truth_swag:                        // @fill_truth_swag
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #128
	sub	x8, x29, #16
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	str	x0, [x8, #8]
	str	x1, [x8]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	stur	s0, [x29, #-28]
	stur	s1, [x29, #-32]
	stur	s2, [x29, #-36]
	stur	s3, [x29, #-40]
	ldr	x0, [x8, #8]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	add	x3, sp, #88
	str	x3, [sp, #32]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x3, [sp, #32]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	find_replace
	ldr	x3, [sp, #32]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	str	x2, [sp, #24]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldr	x3, [sp, #32]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	find_replace
	ldr	x2, [sp, #24]                   // 8-byte Folded Reload
	ldr	x3, [sp, #32]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	find_replace
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	add	x1, sp, #84
	str	wzr, [sp, #84]
	bl	read_boxes
	str	x0, [sp, #72]
	ldr	x0, [sp, #72]
	ldr	w1, [sp, #84]
	bl	randomize_boxes
	ldr	x0, [sp, #72]
	ldr	w1, [sp, #84]
	ldur	s0, [x29, #-28]
	ldur	s1, [x29, #-32]
	ldur	s2, [x29, #-36]
	ldur	s3, [x29, #-40]
	ldur	w2, [x29, #-24]
	bl	correct_boxes
	str	wzr, [sp, #48]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	w9, [sp, #48]
	ldr	w10, [sp, #84]
	mov	w8, #0
	subs	w9, w9, w10
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b.ge	.LBB0_3
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #48]
	subs	w8, w8, #90
	cset	w8, lt
	str	w8, [sp, #4]                    // 4-byte Folded Spill
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    // 4-byte Folded Reload
	tbz	w8, #0, .LBB0_11
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #48]
	mov	x10, #20
	mul	x9, x9, x10
	ldr	w8, [x8, x9]
	str	w8, [sp, #68]
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #48]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	str	w8, [sp, #64]
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #48]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #8]
	str	w8, [sp, #60]
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #48]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	str	w8, [sp, #56]
	ldr	x8, [sp, #72]
	ldrsw	x9, [sp, #48]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #16]
	str	w8, [sp, #52]
	ldr	s0, [sp, #60]
	fcvt	d0, s0
	fcmp	d0, #0.0
	b.mi	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	s0, [sp, #56]
	fcvt	d0, s0
	fcmp	d0, #0.0
	b.pl	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	add	w8, w8, #4
	ldr	w10, [sp, #48]
	mul	w8, w8, w10
	str	w8, [sp, #44]
	ldr	w8, [sp, #68]
	ldr	x10, [x9]
	ldrsw	x11, [sp, #44]
	mov	w12, w11
	add	w12, w12, #1
	str	w12, [sp, #44]
	str	w8, [x10, x11, lsl #2]
	ldr	w8, [sp, #64]
	ldr	x10, [x9]
	ldrsw	x11, [sp, #44]
	mov	w12, w11
	add	w12, w12, #1
	str	w12, [sp, #44]
	str	w8, [x10, x11, lsl #2]
	ldr	w8, [sp, #60]
	ldr	x10, [x9]
	ldrsw	x11, [sp, #44]
	mov	w12, w11
	add	w12, w12, #1
	str	w12, [sp, #44]
	str	w8, [x10, x11, lsl #2]
	ldr	w8, [sp, #56]
	ldr	x9, [x9]
	ldrsw	x10, [sp, #44]
	mov	w11, w10
	add	w11, w11, #1
	str	w11, [sp, #44]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8]
	ldr	w9, [sp, #44]
	ldr	w10, [sp, #52]
	add	w9, w9, w10
	fmov	s0, #1.00000000
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	.LBB0_1
.LBB0_11:
	ldr	x0, [sp, #72]
	bl	free
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #128
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	fill_truth_swag, .Lfunc_end0-fill_truth_swag
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
	.asciz	".jpg"
	.size	.L.str.3, 5
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	".txt"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	".JPG"
	.size	.L.str.5, 5
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	".JPEG"
	.size	.L.str.6, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym read_boxes
	.addrsig_sym randomize_boxes
	.addrsig_sym correct_boxes
	.addrsig_sym free