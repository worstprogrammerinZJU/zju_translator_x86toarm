	.text
	.globl	backward_convolutional_layer    // -- Begin function backward_convolutional_layer
	.p2align	2
	.type	backward_convolutional_layer,@function
backward_convolutional_layer:           // @backward_convolutional_layer
// %bb.0:
	sub	sp, sp, #304
	stp	x29, x30, [sp, #272]            // 16-byte Folded Spill
	str	x28, [sp, #288]                 // 8-byte Folded Spill
	add	x29, sp, #272
	mov	x8, x0
	str	x8, [sp, #64]                   // 8-byte Folded Spill
	str	x1, [sp, #56]                   // 8-byte Folded Spill
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	sdiv	w9, w9, w10
	stur	w9, [x29, #-12]
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #8]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w9, w9, w10
	ldr	w10, [x8, #4]
	sdiv	w9, w9, w10
	stur	w9, [x29, #-16]
	ldr	w9, [x8, #16]
	ldr	w10, [x8, #20]
	mul	w9, w9, w10
	stur	w9, [x29, #-20]
	ldr	w0, [x8, #100]
	ldr	w9, [x8, #24]
	ldr	w10, [x8, #28]
	mul	w1, w9, w10
	ldr	w2, [x8, #96]
	ldr	x3, [x8, #32]
	bl	gradient_array
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	ldr	x8, [x0, #88]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #64]                   // 8-byte Folded Reload
	sub	x0, x29, #128
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	mov	x2, #104
	bl	memcpy
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #112
	str	q0, [sp, #112]
	ldr	x8, [x8, #16]
	str	x8, [sp, #128]
	bl	backward_batchnorm_layer
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	w0, [x8, #80]
	ldr	x1, [x8, #32]
	ldr	w2, [x8, #28]
	ldr	w3, [x8]
	ldur	w4, [x29, #-20]
	bl	backward_bias
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_4
.LBB0_4:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_6 Depth 2
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #28]
	subs	w8, w8, w9
	b.ge	.LBB0_20
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	stur	wzr, [x29, #-8]
	b	.LBB0_6
.LBB0_6:                                //   Parent Loop BB0_4 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #64]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-8]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_18
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	x10, [x8, #32]
	ldur	w11, [x29, #-4]
	ldr	w12, [x8, #4]
	mul	w11, w11, w12
	ldur	w12, [x29, #-8]
	add	w11, w11, w12
	ldur	w12, [x29, #-12]
	mul	w11, w11, w12
	ldur	w12, [x29, #-20]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	str	x10, [sp, #104]
	ldr	x10, [x9]
	str	x10, [sp, #96]
	ldr	x10, [x8, #40]
	ldur	w11, [x29, #-8]
	ldr	w12, [x8, #48]
	mul	w11, w11, w12
	ldr	w12, [x8, #4]
	sdiv	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	str	x10, [sp, #88]
	ldr	x10, [x9, #8]
	ldur	w11, [x29, #-4]
	ldr	w12, [x8, #4]
	mul	w11, w11, w12
	ldur	w12, [x29, #-8]
	add	w11, w11, w12
	ldr	w12, [x8, #12]
	mul	w11, w11, w12
	ldr	w12, [x8, #4]
	sdiv	w11, w11, w12
	ldr	w12, [x8, #52]
	mul	w11, w11, w12
	ldr	w12, [x8, #56]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	str	x10, [sp, #80]
	ldr	x9, [x9, #16]
	ldur	w10, [x29, #-4]
	ldr	w11, [x8, #4]
	mul	w10, w10, w11
	ldur	w11, [x29, #-8]
	add	w10, w10, w11
	ldr	w11, [x8, #12]
	mul	w10, w10, w11
	ldr	w11, [x8, #4]
	sdiv	w10, w10, w11
	ldr	w11, [x8, #52]
	mul	w10, w10, w11
	ldr	w11, [x8, #56]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	str	x9, [sp, #72]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	b.ne	.LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #80]
	str	x8, [sp, #96]
	b	.LBB0_10
.LBB0_9:                                //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x0, [sp, #80]
	ldr	w9, [x8, #12]
	ldr	w10, [x8, #4]
	sdiv	w1, w9, w10
	ldr	w2, [x8, #52]
	ldr	w3, [x8, #56]
	ldr	w4, [x8, #8]
	ldr	w5, [x8, #76]
	ldr	w6, [x8, #72]
	ldr	x7, [sp, #96]
	bl	im2col_cpu
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	w2, [x29, #-12]
	ldur	w3, [x29, #-16]
	ldur	w4, [x29, #-20]
	ldr	x6, [sp, #104]
	ldur	w7, [x29, #-20]
	ldr	x12, [sp, #96]
	ldur	w11, [x29, #-20]
	ldr	x10, [sp, #88]
	ldur	w8, [x29, #-16]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w5, #1
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w0, wzr
	mov	w1, w5
	bl	gemm
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_16
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	x10, [x8, #64]
	ldur	w11, [x29, #-8]
	ldr	w12, [x8, #48]
	mul	w11, w11, w12
	ldr	w12, [x8, #4]
	sdiv	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	str	x10, [sp, #104]
	ldr	x10, [x8, #32]
	ldur	w11, [x29, #-4]
	ldr	w12, [x8, #4]
	mul	w11, w11, w12
	ldur	w12, [x29, #-8]
	add	w11, w11, w12
	ldur	w12, [x29, #-12]
	mul	w11, w11, w12
	ldur	w12, [x29, #-20]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	str	x10, [sp, #96]
	ldr	x9, [x9]
	str	x9, [sp, #88]
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	b.ne	.LBB0_13
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #72]
	str	x8, [sp, #88]
	b	.LBB0_13
.LBB0_13:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	w2, [x29, #-16]
	ldur	w3, [x29, #-20]
	ldur	w4, [x29, #-12]
	ldr	x6, [sp, #104]
	ldur	w7, [x29, #-16]
	ldr	x12, [sp, #96]
	ldur	w11, [x29, #-20]
	ldr	x10, [sp, #88]
	ldur	w8, [x29, #-20]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w1, wzr
	str	wzr, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w5, #1
	mov	w0, w5
	bl	gemm
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	w8, [x8, #8]
	subs	w8, w8, #1
	b.eq	.LBB0_15
	b	.LBB0_14
.LBB0_14:                               //   in Loop: Header=BB0_6 Depth=2
	ldr	x8, [sp, #64]                   // 8-byte Folded Reload
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x9]
	ldr	w9, [x8, #12]
	ldr	w10, [x8, #4]
	sdiv	w1, w9, w10
	ldr	w2, [x8, #52]
	ldr	w3, [x8, #56]
	ldr	w4, [x8, #8]
	ldr	w5, [x8, #76]
	ldr	w6, [x8, #72]
	ldr	x7, [sp, #72]
	bl	col2im_cpu
	b	.LBB0_15
.LBB0_15:                               //   in Loop: Header=BB0_6 Depth=2
	b	.LBB0_16
.LBB0_16:                               //   in Loop: Header=BB0_6 Depth=2
	b	.LBB0_17
.LBB0_17:                               //   in Loop: Header=BB0_6 Depth=2
	ldur	w8, [x29, #-8]
	add	w8, w8, #1
	stur	w8, [x29, #-8]
	b	.LBB0_6
.LBB0_18:                               //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_19
.LBB0_19:                               //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_4
.LBB0_20:
	ldr	x28, [sp, #288]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #272]            // 16-byte Folded Reload
	add	sp, sp, #304
	ret
.Lfunc_end0:
	.size	backward_convolutional_layer, .Lfunc_end0-backward_convolutional_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym backward_batchnorm_layer
	.addrsig_sym backward_bias
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym col2im_cpu