	.text
	.globl	backward_deconvolutional_layer  // -- Begin function backward_deconvolutional_layer
	.p2align	2
	.type	backward_deconvolutional_layer,@function
backward_deconvolutional_layer:         // @backward_deconvolutional_layer
// %bb.0:
	sub	sp, sp, #320
	stp	x29, x30, [sp, #288]            // 16-byte Folded Spill
	str	x28, [sp, #304]                 // 8-byte Folded Spill
	add	x29, sp, #288
	mov	x8, x0
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	str	x1, [sp, #48]                   // 8-byte Folded Spill
	ldr	w0, [x8, #100]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, #96]
	ldr	x3, [x8, #72]
	bl	gradient_array
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x0, #88]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	sub	x0, x29, #112
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mov	x2, #104
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #144
	str	q0, [sp, #144]
	ldr	x8, [x8, #16]
	str	x8, [sp, #160]
	bl	backward_batchnorm_layer
	b	.LBB0_3
.LBB0_2:
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	w0, [x9, #80]
	ldr	x1, [x9, #72]
	ldr	w2, [x9, #4]
	ldr	w3, [x9, #8]
	ldr	w8, [x9, #12]
	ldr	w9, [x9, #16]
	mul	w4, w8, w9
	bl	backward_bias
	b	.LBB0_3
.LBB0_3:
	stur	wzr, [x29, #-4]
	b	.LBB0_4
.LBB0_4:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-4]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	w10, [x8, #20]
	str	w10, [sp, #140]
	ldr	w10, [x8, #24]
	ldr	w11, [x8, #24]
	mul	w10, w10, w11
	ldr	w11, [x8, #8]
	mul	w10, w10, w11
	str	w10, [sp, #136]
	ldr	w10, [x8, #28]
	ldr	w11, [x8, #32]
	mul	w10, w10, w11
	str	w10, [sp, #132]
	ldr	x10, [x9]
	ldur	w11, [x29, #-4]
	ldr	w12, [sp, #140]
	mul	w11, w11, w12
	ldr	w12, [sp, #132]
	mul	w11, w11, w12
	add	x10, x10, w11, sxtw #2
	str	x10, [sp, #120]
	ldr	x9, [x9, #8]
	str	x9, [sp, #112]
	ldr	x9, [x8, #40]
	str	x9, [sp, #104]
	ldr	x9, [x8, #72]
	ldur	w10, [x29, #-4]
	ldr	w11, [x8]
	mul	w10, w10, w11
	add	x0, x9, w10, sxtw
	ldr	w1, [x8, #64]
	ldr	w2, [x8, #16]
	ldr	w3, [x8, #12]
	ldr	w4, [x8, #24]
	ldr	w5, [x8, #60]
	ldr	w6, [x8, #56]
	ldr	x7, [sp, #112]
	bl	im2col_cpu
	ldr	w2, [sp, #140]
	ldr	w3, [sp, #136]
	ldr	w4, [sp, #132]
	ldr	x6, [sp, #120]
	ldr	w7, [sp, #132]
	ldr	x12, [sp, #112]
	ldr	w11, [sp, #132]
	ldr	x10, [sp, #104]
	ldr	w8, [sp, #136]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w5, #1
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w0, wzr
	mov	w1, w5
	bl	gemm_cpu
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_4 Depth=1
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	w10, [x9, #20]
	str	w10, [sp, #100]
	ldr	w10, [x9, #28]
	ldr	w11, [x9, #32]
	mul	w10, w10, w11
	str	w10, [sp, #96]
	ldr	w10, [x9, #24]
	ldr	w11, [x9, #24]
	mul	w10, w10, w11
	ldr	w11, [x9, #8]
	mul	w10, w10, w11
	str	w10, [sp, #92]
	ldr	x9, [x9, #48]
	str	x9, [sp, #80]
	ldr	x9, [x8, #8]
	str	x9, [sp, #72]
	ldr	x8, [x8, #16]
	ldur	w9, [x29, #-4]
	ldr	w10, [sp, #96]
	mul	w9, w9, w10
	ldr	w10, [sp, #100]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	str	x8, [sp, #64]
	ldr	w2, [sp, #100]
	ldr	w3, [sp, #96]
	ldr	w4, [sp, #92]
	ldr	x6, [sp, #80]
	ldr	w7, [sp, #92]
	ldr	x12, [sp, #72]
	ldr	w11, [sp, #96]
	ldr	x10, [sp, #64]
	ldr	w8, [sp, #96]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w5, #1
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w1, wzr
	mov	w0, w1
	bl	gemm_cpu
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_4 Depth=1
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_4 Depth=1
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	stur	w8, [x29, #-4]
	b	.LBB0_4
.LBB0_9:
	ldr	x28, [sp, #304]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #288]            // 16-byte Folded Reload
	add	sp, sp, #320
	ret
.Lfunc_end0:
	.size	backward_deconvolutional_layer, .Lfunc_end0-backward_deconvolutional_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym backward_batchnorm_layer
	.addrsig_sym backward_bias
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm_cpu