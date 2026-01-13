	.text
	.globl	binarize_image                  // -- Begin function binarize_image
	.p2align	2
	.type	binarize_image,@function
binarize_image:                         // @binarize_image
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mov	x9, x0
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	ldr	q0, [x9]
	add	x0, sp, #32
	str	q0, [sp, #32]
	ldr	x9, [x9, #16]
	str	x9, [sp, #48]
	bl	copy_image
	str	wzr, [sp, #28]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldr	w8, [sp, #28]
	ldr	w9, [x10]
	ldr	w11, [x10, #4]
	mul	w9, w9, w11
	ldr	w10, [x10, #8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_7
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #28]
	ldr	d0, [x8, x9, lsl #3]
	fmov	d1, #0.50000000
	fcmp	d0, d1
	b.le	.LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #28]
	fmov	d0, #1.00000000
	str	d0, [x8, x9, lsl #3]
	b	.LBB0_5
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldrsw	x9, [sp, #28]
	movi	d0, #0000000000000000
	str	d0, [x8, x9, lsl #3]
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	.LBB0_1
.LBB0_7:
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	binarize_image, .Lfunc_end0-binarize_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_image