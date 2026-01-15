	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function fill_truth_detection
.LCPI0_0:
	.xword	0x3f50624dd2f1a9fc              // double 0.001
	.text
	.globl	fill_truth_detection
	.p2align	2
	.type	fill_truth_detection,@function
fill_truth_detection:                   // @fill_truth_detection
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1, lsl #12             // =4096
	sub	sp, sp, #128
	sub	x8, x29, #24
	str	x8, [sp]                        // 8-byte Folded Spill
	str	x0, [x8, #16]
	stur	w1, [x29, #-12]
	str	x2, [x8]
	stur	w3, [x29, #-28]
	stur	w4, [x29, #-32]
	stur	s0, [x29, #-36]
	stur	s1, [x29, #-40]
	stur	s2, [x29, #-44]
	stur	s3, [x29, #-48]
	ldr	x0, [x8, #16]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	add	x3, sp, #80
	str	x3, [sp, #24]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	bl	find_replace
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.4
	add	x1, x1, :lo12:.L.str.4
	adrp	x2, .L.str.5
	add	x2, x2, :lo12:.L.str.5
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	find_replace
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	find_replace
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	bl	find_replace
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	add	x1, sp, #76
	str	wzr, [sp, #76]
	bl	read_boxes
	str	x0, [sp, #64]
	ldr	x0, [sp, #64]
	ldr	w1, [sp, #76]
	bl	randomize_boxes
	ldr	x0, [sp, #64]
	ldr	w1, [sp, #76]
	ldur	s0, [x29, #-36]
	ldur	s1, [x29, #-40]
	ldur	s2, [x29, #-44]
	ldur	s3, [x29, #-48]
	ldur	w2, [x29, #-32]
	bl	correct_boxes
	ldr	w8, [sp, #76]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	b.le	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	str	w8, [sp, #76]
	b	.LBB0_2
.LBB0_2:
	str	wzr, [sp, #36]
	str	wzr, [sp, #40]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #40]
	ldr	w9, [sp, #76]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #40]
	mov	x10, #20
	mul	x9, x9, x10
	ldr	w8, [x8, x9]
	str	w8, [sp, #60]
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #40]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #4]
	str	w8, [sp, #56]
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #40]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #8]
	str	w8, [sp, #52]
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #40]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #12]
	str	w8, [sp, #48]
	ldr	x8, [sp, #64]
	ldrsw	x9, [sp, #40]
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #16]
	str	w8, [sp, #44]
	ldr	s0, [sp, #52]
	fcvt	d0, s0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fcmp	d0, d1
	b.mi	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	s0, [sp, #48]
	fcvt	d0, s0
	adrp	x8, .LCPI0_0
	ldr	d1, [x8, :lo12:.LCPI0_0]
	fcmp	d0, d1
	b.pl	.LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	.LBB0_8
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w9, [sp, #60]
	ldr	x11, [x8]
	ldr	w10, [sp, #40]
	ldr	w12, [sp, #36]
	subs	w12, w10, w12
	mov	w10, #5
	mul	w12, w12, w10
	add	w12, w12, #0
	str	w9, [x11, w12, sxtw #2]
	ldr	w9, [sp, #56]
	ldr	x11, [x8]
	ldr	w12, [sp, #40]
	ldr	w13, [sp, #36]
	subs	w12, w12, w13
	mul	w12, w12, w10
	add	w12, w12, #1
	str	w9, [x11, w12, sxtw #2]
	ldr	w9, [sp, #52]
	ldr	x11, [x8]
	ldr	w12, [sp, #40]
	ldr	w13, [sp, #36]
	subs	w12, w12, w13
	mul	w12, w12, w10
	add	w12, w12, #2
	str	w9, [x11, w12, sxtw #2]
	ldr	w9, [sp, #48]
	ldr	x11, [x8]
	ldr	w12, [sp, #40]
	ldr	w13, [sp, #36]
	subs	w12, w12, w13
	mul	w12, w12, w10
	add	w12, w12, #3
	str	w9, [x11, w12, sxtw #2]
	ldr	s0, [sp, #44]
	scvtf	s0, s0
	ldr	x8, [x8]
	ldr	w9, [sp, #40]
	ldr	w11, [sp, #36]
	subs	w9, w9, w11
	mul	w9, w9, w10
	add	w9, w9, #4
	str	s0, [x8, w9, sxtw #2]
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	.LBB0_3
.LBB0_9:
	ldr	x0, [sp, #64]
	bl	free
	add	sp, sp, #1, lsl #12             // =4096
	add	sp, sp, #128
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	fill_truth_detection, .Lfunc_end0-fill_truth_detection
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
	.asciz	"raw"
	.size	.L.str.3, 4
	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	".jpg"
	.size	.L.str.4, 5
	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	".txt"
	.size	.L.str.5, 5
	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	".png"
	.size	.L.str.6, 5
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	".JPG"
	.size	.L.str.7, 5
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	".JPEG"
	.size	.L.str.8, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym read_boxes
	.addrsig_sym randomize_boxes
	.addrsig_sym correct_boxes
	.addrsig_sym free