	.text
	.globl	forward_normalization_layer     // -- Begin function forward_normalization_layer
	.p2align	2
	.type	forward_normalization_layer,@function
forward_normalization_layer:            // @forward_normalization_layer
// %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             // 16-byte Folded Spill
	add	x29, sp, #80
	mov	x8, x0
	str	x8, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	ldr	w9, [x8]
	stur	w9, [x29, #-20]
	ldr	w9, [x8, #4]
	stur	w9, [x29, #-24]
	ldr	w9, [x8, #8]
	stur	w9, [x29, #-28]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	x2, [x8, #16]
	mov	w1, wzr
	mov	w3, #1
	bl	scal_cpu
	stur	wzr, [x29, #-16]
	b	.LBB0_1
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_3 Depth 2
                                        //     Child Loop BB0_7 Depth 2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldr	w9, [x9, #12]
	subs	w8, w8, w9
	b.ge	.LBB0_16
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldur	w10, [x29, #-20]
	ldur	w11, [x29, #-24]
	mul	w10, w10, w11
	ldur	w11, [x29, #-28]
	mul	w10, w10, w11
	ldur	w11, [x29, #-16]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	str	x9, [sp, #40]
	ldr	x8, [x8, #24]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #32]
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldur	w10, [x29, #-16]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #24]
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	mul	w8, w8, w9
	ldur	w9, [x29, #-28]
	mul	w0, w8, w9
	ldr	x2, [sp, #24]
	ldr	x4, [sp, #40]
	mov	w1, #2
	mov	w5, #1
	str	w5, [sp, #4]                    // 4-byte Folded Spill
	mov	w3, w5
	bl	pow_cpu
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w3, [sp, #4]                    // 4-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w0, w9, w10
	ldr	w1, [x8, #52]
	ldr	x2, [sp, #32]
	bl	const_cpu
	stur	wzr, [x29, #-12]
	b	.LBB0_3
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #32]
	mov	w10, #2
	sdiv	w9, w9, w10
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w0, w9, w10
	ldr	w1, [x8, #48]
	ldr	x8, [sp, #40]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	add	x2, x8, w9, sxtw #2
	ldr	x4, [sp, #32]
	mov	w5, #1
	mov	w3, w5
	bl	axpy_cpu
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_3
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_7
.LBB0_7:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_14
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=2
	ldur	w8, [x29, #-20]
	ldur	w9, [x29, #-24]
	mul	w0, w8, w9
	ldr	x8, [sp, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	mov	w4, #1
	subs	w10, w10, #1
	mul	w9, w9, w10
	add	x1, x8, w9, sxtw #2
	ldr	x8, [sp, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	add	x3, x8, w9, sxtw #2
	mov	w2, w4
	bl	copy_cpu
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w10, [x9, #32]
	subs	w11, w10, #1
	mov	w10, #2
	sdiv	w11, w11, w10
	subs	w8, w8, w11
	subs	w8, w8, #1
	str	w8, [sp, #20]
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #32]
	sdiv	w9, w9, w10
	add	w8, w8, w9
	str	w8, [sp, #16]
	ldr	w8, [sp, #20]
	tbnz	w8, #31, .LBB0_10
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w0, w9, w10
	ldr	w9, [x8, #48]
	mov	w8, wzr
	subs	w1, w8, w9
	ldr	x8, [sp, #40]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldr	w10, [sp, #20]
	mul	w9, w9, w10
	add	x2, x8, w9, sxtw #2
	ldr	x8, [sp, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	add	x4, x8, w9, sxtw #2
	mov	w5, #1
	mov	w3, w5
	bl	axpy_cpu
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [sp, #16]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_12
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w0, w9, w10
	ldr	w1, [x8, #48]
	ldr	x8, [sp, #40]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	add	x2, x8, w9, sxtw #2
	ldr	x8, [sp, #32]
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	add	x4, x8, w9, sxtw #2
	mov	w5, #1
	mov	w3, w5
	bl	axpy_cpu
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_7 Depth=2
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_7 Depth=2
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_7
.LBB0_14:                               //   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-16]
	add	w8, w8, #1
	stur	w8, [x29, #-16]
	b	.LBB0_1
.LBB0_16:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	w10, [x8, #36]
	mov	w9, wzr
	subs	w1, w9, w10
	ldr	x2, [x8, #24]
	ldr	x4, [x8, #40]
	mov	w5, #1
	str	w5, [sp]                        // 4-byte Folded Spill
	mov	w3, w5
	bl	pow_cpu
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w4, [sp]                        // 4-byte Folded Reload
	ldur	w9, [x29, #-20]
	ldur	w10, [x29, #-24]
	mul	w9, w9, w10
	ldur	w10, [x29, #-28]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldur	x1, [x29, #-8]
	ldr	x3, [x8, #40]
	mov	w2, w4
	bl	mul_cpu
	ldp	x29, x30, [sp, #80]             // 16-byte Folded Reload
	add	sp, sp, #96
	ret
.Lfunc_end0:
	.size	forward_normalization_layer, .Lfunc_end0-forward_normalization_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym scal_cpu
	.addrsig_sym pow_cpu
	.addrsig_sym const_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym copy_cpu
	.addrsig_sym mul_cpu