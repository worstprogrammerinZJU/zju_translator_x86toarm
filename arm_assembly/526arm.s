	.text
	.globl	get_segmentation_image2         // -- Begin function get_segmentation_image2
	.p2align	2
	.type	get_segmentation_image2,@function
get_segmentation_image2:                // @get_segmentation_image2
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #9, lsl #12             // =36864
	sub	sp, sp, #128
	add	x8, sp, #8, lsl #12             // =32768
	add	x8, x8, #88
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	str	x0, [x8, #4120]
	str	w1, [x8, #4116]
	str	w2, [x8, #4112]
	str	w3, [x8, #4108]
	ldr	x0, [x8, #4120]
	adrp	x1, .L.str
	add	x1, x1, :lo12:.L.str
	adrp	x2, .L.str.1
	add	x2, x2, :lo12:.L.str.1
	str	x2, [sp, #8]                    // 8-byte Folded Spill
	add	x3, sp, #8, lsl #12             // =32768
	add	x3, x3, #100
	str	x3, [sp, #24]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #8]                    // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.2
	add	x1, x1, :lo12:.L.str.2
	bl	find_replace
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.3
	add	x1, x1, :lo12:.L.str.3
	adrp	x2, .L.str.4
	add	x2, x2, :lo12:.L.str.4
	str	x2, [sp, #16]                   // 8-byte Folded Spill
	bl	find_replace
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.5
	add	x1, x1, :lo12:.L.str.5
	bl	find_replace
	ldr	x2, [sp, #16]                   // 8-byte Folded Reload
	ldr	x3, [sp, #24]                   // 8-byte Folded Reload
	mov	x0, x3
	adrp	x1, .L.str.6
	add	x1, x1, :lo12:.L.str.6
	bl	find_replace
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w0, [x8, #4116]
	ldr	w1, [x8, #4112]
	ldr	w8, [x8, #4108]
	add	w2, w8, #1
	bl	make_image
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8, #4128]
	str	wzr, [x8, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #32]                  // 8-byte Folded Reload
	ldr	w8, [x10, #8]
	ldr	w9, [x10, #4116]
	ldr	w10, [x10, #4112]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #32]                  // 8-byte Folded Reload
	ldr	x9, [x10, #4128]
	ldr	w8, [x10, #4116]
	ldr	w11, [x10, #4112]
	mul	w8, w8, w11
	ldr	w11, [x10, #4108]
	mul	w8, w8, w11
	ldr	w10, [x10, #8]
	add	w10, w8, w10
	mov	w8, #1
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	b	.LBB0_1
.LBB0_4:
	add	x0, sp, #8, lsl #12             // =32768
	add	x0, x0, #100
	adrp	x1, .L.str.7
	add	x1, x1, :lo12:.L.str.7
	bl	fopen
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	x0, [x8]
	ldr	x8, [x8]
	cbnz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	add	x0, sp, #8, lsl #12             // =32768
	add	x0, x0, #100
	bl	file_error
	b	.LBB0_6
.LBB0_6:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w0, [x8, #4116]
	ldr	w1, [x8, #4112]
	mov	w2, #1
	bl	make_image
	str	x0, [sp, #56]
	b	.LBB0_7
.LBB0_7:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_9 Depth 2
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, .L.str.8
	add	x1, x1, :lo12:.L.str.8
	add	x2, sp, #64
	add	x3, sp, #68
	bl	fscanf
	subs	w8, w0, #2
	b.ne	.LBB0_15
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	add	x1, sp, #52
	mov	w2, wzr
	str	wzr, [sp, #52]
	add	x0, sp, #68
	bl	read_intlist
	str	x0, [sp, #40]
	ldr	x1, [sp, #40]
	ldr	w2, [sp, #52]
	ldr	x0, [sp, #56]
	bl	load_rle
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w2, [sp, #64]
	ldr	x0, [sp, #56]
	ldr	x1, [x8, #4128]
	bl	or_image
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	str	wzr, [x8, #8]
	b	.LBB0_9
.LBB0_9:                                //   Parent Loop BB0_7 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x10, [sp, #32]                  // 8-byte Folded Reload
	ldr	w8, [x10, #8]
	ldr	w9, [x10, #4116]
	ldr	w10, [x10, #4112]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [sp, #56]
	ldrsw	x9, [x9, #8]
	ldr	w8, [x8, x9, lsl #2]
	cbz	w8, .LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	x10, [sp, #32]                  // 8-byte Folded Reload
	ldr	x9, [x10, #4128]
	ldr	w8, [x10, #4116]
	ldr	w11, [x10, #4112]
	mul	w8, w8, w11
	ldr	w11, [x10, #4108]
	mul	w8, w8, w11
	ldr	w10, [x10, #8]
	add	w10, w8, w10
	mov	w8, wzr
	str	w8, [x9, w10, sxtw #2]
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_9 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_9 Depth=2
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldr	w8, [x9, #8]
	add	w8, w8, #1
	str	w8, [x9, #8]
	b	.LBB0_9
.LBB0_14:                               //   in Loop: Header=BB0_7 Depth=1
	ldr	x0, [sp, #40]
	bl	free
	b	.LBB0_7
.LBB0_15:
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x0, [x8]
	bl	fclose
	ldr	x0, [sp, #56]
	bl	free_image
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	x0, [x8, #4128]
	add	sp, sp, #9, lsl #12             // =36864
	add	sp, sp, #128
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	get_segmentation_image2, .Lfunc_end0-get_segmentation_image2
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"images"
	.size	.L.str, 7
	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"mask"
	.size	.L.str.1, 5
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
	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"r"
	.size	.L.str.7, 2
	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"%d %s"
	.size	.L.str.8, 6
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym find_replace
	.addrsig_sym make_image
	.addrsig_sym fopen
	.addrsig_sym file_error
	.addrsig_sym fscanf
	.addrsig_sym read_intlist
	.addrsig_sym load_rle
	.addrsig_sym or_image
	.addrsig_sym free
	.addrsig_sym fclose
	.addrsig_sym free_image