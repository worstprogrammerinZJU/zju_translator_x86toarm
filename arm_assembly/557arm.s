	.text
	.globl	resize_data                     // -- Begin function resize_data
	.p2align	2
	.type	resize_data,@function
resize_data:                            // @resize_data
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x8, [sp, #16]                   // 8-byte Folded Spill
	mov	x8, x0
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	w1, [x29, #-4]
	stur	w2, [x29, #-8]
	mov	w1, wzr
	mov	x2, #48
	bl	memset
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	xzr, [x8, #32]
	ldur	w9, [x29, #-4]
	str	w9, [x8]
	ldur	w9, [x29, #-8]
	str	w9, [x8, #4]
	ldr	w9, [x0, #8]
	str	w9, [x8, #8]
	ldur	w9, [x29, #-4]
	ldur	w10, [x29, #-8]
	mul	w9, w9, w10
	mov	w10, #3
	mul	w9, w9, w10
	str	w9, [x8, #12]
	ldr	w0, [x8, #8]
	mov	w1, #8
	bl	calloc
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	mov	x8, x0
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	str	x8, [x9, #16]
	ldr	w0, [x0, #24]
	bl	copy_matrix
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	str	w0, [x8, #24]
	stur	wzr, [x29, #-12]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x8]
	ldr	w1, [x8, #4]
	ldr	x8, [x8, #16]
	ldursw	x9, [x29, #-12]
	ldr	w3, [x8, x9, lsl #2]
	mov	w2, #3
	bl	float_to_image
	stur	w0, [x29, #-16]
	ldur	w0, [x29, #-16]
	ldur	w1, [x29, #-4]
	ldur	w2, [x29, #-8]
	bl	resize_image
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	stur	w0, [x29, #-20]
	ldur	w8, [x29, #-20]
	ldr	x9, [x9, #16]
	ldursw	x10, [x29, #-12]
	str	w8, [x9, x10, lsl #2]
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_1
.LBB0_4:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	resize_data, .Lfunc_end0-resize_data
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym calloc
	.addrsig_sym copy_matrix
	.addrsig_sym float_to_image
	.addrsig_sym resize_image