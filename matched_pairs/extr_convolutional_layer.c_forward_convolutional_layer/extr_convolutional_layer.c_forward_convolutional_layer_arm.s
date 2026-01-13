	.text
	.globl	forward_convolutional_layer     // -- Begin function forward_convolutional_layer
	.p2align	2
	.type	forward_convolutional_layer,@function
forward_convolutional_layer:            // @forward_convolutional_layer
// %bb.0:
	sub	sp, sp, #288
	stp	x29, x30, [sp, #256]            // 16-byte Folded Spill
	str	x28, [sp, #272]                 // 8-byte Folded Spill
	add	x29, sp, #256
	mov	x8, x0
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	x2, [x8, #8]
	mov	w1, wzr
	mov	w3, #1
	bl	fill_cpu
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x0, #72]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x8, #16]
	ldr	w1, [x8, #24]
	ldr	w9, [x8, #28]
	ldr	w10, [x8, #32]
	sdiv	w9, w9, w10
	ldr	w10, [x8, #36]
	mul	w9, w9, w10
	ldr	w10, [x8, #36]
	mul	w2, w9, w10
	ldr	w3, [x8, #112]
	bl	binarize_weights
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	bl	swap_binary
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-16]
	ldr	w9, [x8, #28]
	ldr	w10, [x8, #40]
	mul	w9, w9, w10
	ldr	w10, [x8, #44]
	mul	w9, w9, w10
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	x2, [x8, #48]
	bl	binarize_cpu
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	stur	x8, [x29, #-16]
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	w8, [x9, #24]
	ldr	w10, [x9, #32]
	sdiv	w8, w8, w10
	stur	w8, [x29, #-28]
	ldr	w8, [x9, #36]
	ldr	w10, [x9, #36]
	mul	w8, w8, w10
	ldr	w10, [x9, #28]
	mul	w8, w8, w10
	ldr	w10, [x9, #32]
	sdiv	w8, w8, w10
	stur	w8, [x29, #-32]
	ldr	w8, [x9, #56]
	ldr	w9, [x9, #60]
	mul	w8, w8, w9
	stur	w8, [x29, #-36]
	stur	wzr, [x29, #-20]
	b	.LBB0_3
.LBB0_3:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_5 Depth 2
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_13
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	stur	wzr, [x29, #-24]
	b	.LBB0_5
.LBB0_5:                                //   Parent Loop BB0_3 Depth=1
                                        // =>  This Inner Loop Header: Depth=2
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-24]
	ldr	w9, [x9, #32]
	subs	w8, w8, w9
	b.ge	.LBB0_11
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x9, [x8, #16]
	ldur	w10, [x29, #-24]
	ldr	w11, [x8, #64]
	mul	w10, w10, w11
	ldr	w11, [x8, #32]
	sdiv	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	stur	x9, [x29, #-48]
	ldur	x9, [x29, #-8]
	stur	x9, [x29, #-56]
	ldr	x9, [x8, #8]
	ldur	w10, [x29, #-20]
	ldr	w11, [x8, #32]
	mul	w10, w10, w11
	ldur	w11, [x29, #-24]
	add	w10, w10, w11
	ldur	w11, [x29, #-36]
	mul	w10, w10, w11
	ldur	w11, [x29, #-28]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	stur	x9, [x29, #-64]
	ldur	x9, [x29, #-16]
	ldur	w10, [x29, #-20]
	ldr	w11, [x8, #32]
	mul	w10, w10, w11
	ldur	w11, [x29, #-24]
	add	w10, w10, w11
	ldr	w11, [x8, #28]
	mul	w10, w10, w11
	ldr	w11, [x8, #32]
	sdiv	w10, w10, w11
	ldr	w11, [x8, #40]
	mul	w10, w10, w11
	ldr	w11, [x8, #44]
	mul	w10, w10, w11
	add	x9, x9, w10, sxtw #2
	stur	x9, [x29, #-72]
	ldr	w8, [x8, #36]
	subs	w8, w8, #1
	b.ne	.LBB0_8
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_5 Depth=2
	ldur	x8, [x29, #-72]
	stur	x8, [x29, #-56]
	b	.LBB0_9
.LBB0_8:                                //   in Loop: Header=BB0_5 Depth=2
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldur	x0, [x29, #-72]
	ldr	w9, [x8, #28]
	ldr	w10, [x8, #32]
	sdiv	w1, w9, w10
	ldr	w2, [x8, #40]
	ldr	w3, [x8, #44]
	ldr	w4, [x8, #36]
	ldr	w5, [x8, #108]
	ldr	w6, [x8, #104]
	ldur	x7, [x29, #-56]
	bl	im2col_cpu
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_5 Depth=2
	ldur	w2, [x29, #-28]
	ldur	w3, [x29, #-36]
	ldur	w4, [x29, #-32]
	ldur	x6, [x29, #-48]
	ldur	w7, [x29, #-32]
	ldur	x12, [x29, #-56]
	ldur	w11, [x29, #-36]
	ldur	x10, [x29, #-64]
	ldur	w8, [x29, #-36]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w5, #1
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w1, wzr
	mov	w0, w1
	bl	gemm
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_5 Depth=2
	ldur	w8, [x29, #-24]
	add	w8, w8, #1
	stur	w8, [x29, #-24]
	b	.LBB0_5
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_12
.LBB0_12:                               //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_3
.LBB0_13:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x8, #96]
	cbz	x8, .LBB0_15
	b	.LBB0_14
.LBB0_14:
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	add	x0, sp, #64
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	mov	x2, #120
	bl	memcpy
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-8]
	bl	forward_batchnorm_layer
	b	.LBB0_16
.LBB0_15:
	ldr	x9, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x9, #8]
	ldr	w1, [x9, #92]
	ldr	w2, [x9, #4]
	ldr	w3, [x9, #24]
	ldr	w8, [x9, #60]
	ldr	w9, [x9, #56]
	mul	w4, w8, w9
	bl	add_bias
	b	.LBB0_16
.LBB0_16:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, #88]
	bl	activate_array
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x8, #80]
	cbnz	x8, .LBB0_18
	b	.LBB0_17
.LBB0_17:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x8, #72]
	cbz	x8, .LBB0_19
	b	.LBB0_18
.LBB0_18:
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	bl	swap_binary
	b	.LBB0_19
.LBB0_19:
	ldr	x28, [sp, #272]                 // 8-byte Folded Reload
	ldp	x29, x30, [sp, #256]            // 16-byte Folded Reload
	add	sp, sp, #288
	ret
.Lfunc_end0:
	.size	forward_convolutional_layer, .Lfunc_end0-forward_convolutional_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym binarize_weights
	.addrsig_sym swap_binary
	.addrsig_sym binarize_cpu
	.addrsig_sym im2col_cpu
	.addrsig_sym gemm
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym add_bias
	.addrsig_sym activate_array