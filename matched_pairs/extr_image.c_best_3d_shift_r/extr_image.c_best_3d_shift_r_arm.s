	.text
	.globl	best_3d_shift_r                 // -- Begin function best_3d_shift_r
	.p2align	2
	.type	best_3d_shift_r,@function
best_3d_shift_r:                        // @best_3d_shift_r
// %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             // 16-byte Folded Spill
	add	x29, sp, #96
	stur	x0, [x29, #-20]
	stur	x1, [x29, #-12]
	stur	x2, [x29, #-36]
	stur	x3, [x29, #-28]
	stur	w4, [x29, #-40]
	stur	w5, [x29, #-44]
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-44]
	subs	w8, w8, w9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-40]
	stur	w8, [x29, #-4]
	b	.LBB0_5
.LBB0_2:
	ldur	w8, [x29, #-40]
	ldur	w9, [x29, #-44]
	add	w8, w8, w9
	scvtf	d0, w8
	fmov	d1, #2.00000000
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
	bl	floor
	str	w0, [sp, #48]
	ldr	w3, [sp, #48]
	ldur	w4, [x29, #-36]
	ldur	w5, [x29, #-32]
	ldur	x0, [x29, #-36]
	ldur	x1, [x29, #-28]
	mov	w2, wzr
	str	w2, [sp]                        // 4-byte Folded Spill
	bl	crop_image
	ldr	w2, [sp]                        // 4-byte Folded Reload
	str	x0, [sp, #32]
	str	x1, [sp, #40]
	ldr	w8, [sp, #48]
	add	w3, w8, #1
	ldur	w4, [x29, #-36]
	ldur	w5, [x29, #-32]
	ldur	x0, [x29, #-36]
	ldur	x1, [x29, #-28]
	bl	crop_image
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	w0, [sp, #44]
	ldur	w1, [x29, #-8]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-12]
	mul	w2, w8, w9
	mov	w3, #10
	str	w3, [sp, #4]                    // 4-byte Folded Spill
	bl	dist_array
	ldr	w3, [sp, #4]                    // 4-byte Folded Reload
	str	s0, [sp, #12]
	ldr	w0, [sp, #28]
	ldur	w1, [x29, #-8]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-16]
	mul	w8, w8, w9
	ldur	w9, [x29, #-12]
	mul	w2, w8, w9
	bl	dist_array
	str	s0, [sp, #8]
	ldr	x0, [sp, #32]
	ldr	x1, [sp, #40]
	bl	free_image
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #24]
	bl	free_image
	ldr	s0, [sp, #12]
	ldr	s1, [sp, #8]
	fcmp	s0, s1
	b.pl	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldur	w4, [x29, #-40]
	ldr	w5, [sp, #48]
	ldur	x0, [x29, #-20]
	ldur	x1, [x29, #-12]
	ldur	x2, [x29, #-36]
	ldur	x3, [x29, #-28]
	bl	best_3d_shift_r
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_4:
	ldr	w8, [sp, #48]
	add	w4, w8, #1
	ldur	w5, [x29, #-44]
	ldur	x0, [x29, #-20]
	ldur	x1, [x29, #-12]
	ldur	x2, [x29, #-36]
	ldur	x3, [x29, #-28]
	bl	best_3d_shift_r
	stur	w0, [x29, #-4]
	b	.LBB0_5
.LBB0_5:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]             // 16-byte Folded Reload
	add	sp, sp, #112
	ret
.Lfunc_end0:
	.size	best_3d_shift_r, .Lfunc_end0-best_3d_shift_r
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym best_3d_shift_r
	.addrsig_sym floor
	.addrsig_sym crop_image
	.addrsig_sym dist_array
	.addrsig_sym free_image