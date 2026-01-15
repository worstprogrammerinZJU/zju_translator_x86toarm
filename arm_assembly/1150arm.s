	.text
	.globl	threshold_image                 // -- Begin function threshold_image
	.p2align	2
	.type	threshold_image,@function
threshold_image:                        // @threshold_image
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	mov	x9, x0
	str	x9, [sp, #16]                   // 8-byte Folded Spill
	stur	s0, [x29, #-4]
	ldr	w0, [x9]
	ldr	w1, [x9, #4]
	ldr	w2, [x9, #8]
	bl	make_image
	stur	wzr, [x29, #-8]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x10, [sp, #16]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x10]
	ldr	w11, [x10, #4]
	mul	w9, w9, w11
	ldr	w10, [x10, #8]
	mul	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	ldursw	x10, [x29, #-8]
	ldr	s0, [x8, x10, lsl #2]
	scvtf	s0, s0
	ldur	s1, [x29, #-4]
	mov	w8, wzr
	fcmp	s0, s1
	csinc	w8, w8, wzr, le
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-8]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	threshold_image, .Lfunc_end0-threshold_image
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym make_image