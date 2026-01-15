	.text
	.globl	fill_image                      // -- Begin function fill_image
	.p2align	2
	.type	fill_image,@function
fill_image:                             // @fill_image
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]                        // 8-byte Folded Spill
	str	s0, [sp, #12]
	str	wzr, [sp, #8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldr	w8, [sp, #8]
	ldr	w9, [x10]
	ldr	w11, [x10, #4]
	mul	w9, w9, w11
	ldr	w10, [x10, #8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w8, [sp, #12]
	ldr	x9, [x9, #16]
	ldrsw	x10, [sp, #8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	.LBB0_1
.LBB0_4:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	fill_image, .Lfunc_end0-fill_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig