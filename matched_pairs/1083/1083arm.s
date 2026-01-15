	.text
	.globl	constrain_image                 // -- Begin function constrain_image
	.p2align	2
	.type	constrain_image,@function
constrain_image:                        // @constrain_image
// %bb.0:
	sub	sp, sp, #16
	str	x0, [sp]                        // 8-byte Folded Spill
	str	wzr, [sp, #12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp]                       // 8-byte Folded Reload
	ldr	w8, [sp, #12]
	ldr	w9, [x10]
	ldr	w11, [x10, #4]
	mul	w9, w9, w11
	ldr	w10, [x10, #8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_8
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #0
	b.ge	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldrsw	x10, [sp, #12]
	mov	w8, wzr
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #1
	b.le	.LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldrsw	x10, [sp, #12]
	mov	w8, #1
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	.LBB0_1
.LBB0_8:
	add	sp, sp, #16
	ret
.Lfunc_end0:
	.size	constrain_image, .Lfunc_end0-constrain_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig