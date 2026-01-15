	.text
	.globl	forward_deconvolutional_layer   // -- Begin function forward_deconvolutional_layer
	.p2align	2
	.type	forward_deconvolutional_layer,@function
forward_deconvolutional_layer:          // @forward_deconvolutional_layer
// %bb.0:
	sub	sp, sp, #224
	stp	x29, x30, [sp, #208]            // 16-byte Folded Spill
	add	x29, sp, #208
	mov	x8, x0
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	w9, [x8]
	ldr	w10, [x8]
	mul	w9, w9, w10
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	stur	w9, [x29, #-24]
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w9, w9, w10
	stur	w9, [x29, #-28]
	ldr	w9, [x8, #16]
	stur	w9, [x29, #-32]
	ldr	w9, [x8, #20]
	ldr	w10, [x8, #24]
	mul	w0, w9, w10
	ldr	x2, [x8, #56]
	mov	w1, wzr
	mov	w3, #1
	bl	fill_cpu
	stur	wzr, [x29, #-20]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	b.ge	.LBB0_4
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #48]                  // 8-byte Folded Reload
	ldr	x8, [x10, #32]
	stur	x8, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldur	w9, [x29, #-20]
	ldr	w11, [x10, #16]
	mul	w9, w9, w11
	ldr	w11, [x10, #8]
	mul	w9, w9, w11
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	add	x8, x8, w9, sxtw #2
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-56]
	ldur	w2, [x29, #-24]
	ldur	w3, [x29, #-28]
	ldur	w4, [x29, #-32]
	ldur	x6, [x29, #-40]
	ldur	w7, [x29, #-24]
	ldur	x12, [x29, #-48]
	ldur	w11, [x29, #-28]
	ldur	x10, [x29, #-56]
	ldur	w8, [x29, #-28]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w1, wzr
	str	wzr, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w5, #1
	mov	w0, w5
	bl	gemm_cpu
	ldr	x10, [sp, #48]                  // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	w1, [x10, #88]
	ldr	w2, [x10, #40]
	ldr	w3, [x10, #44]
	ldr	w4, [x10]
	ldr	w5, [x10, #84]
	ldr	w6, [x10, #80]
	ldr	x8, [x10, #56]
	ldur	w9, [x29, #-20]
	ldr	w10, [x10, #20]
	mul	w9, w9, w10
	add	x7, x8, w9, sxtw
	bl	col2im_cpu
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_1
.LBB0_4:
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [x8, #72]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	add	x0, sp, #56
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mov	x2, #96
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-8]
	bl	forward_batchnorm_layer
	b	.LBB0_7
.LBB0_6:
	ldr	x9, [sp, #48]                   // 8-byte Folded Reload
	ldr	x0, [x9, #56]
	ldr	w1, [x9, #64]
	ldr	w2, [x9, #24]
	ldr	w3, [x9, #4]
	ldr	w8, [x9, #44]
	ldr	w9, [x9, #40]
	mul	w4, w8, w9
	bl	add_bias
	b	.LBB0_7
.LBB0_7:
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x0, [x8, #56]
	ldr	w9, [x8, #24]
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	ldr	w10, [x8, #44]
	mul	w9, w9, w10
	ldr	w10, [x8, #40]
	mul	w1, w9, w10
	ldr	w2, [x8, #48]
	bl	activate_array
	ldp	x29, x30, [sp, #208]            // 16-byte Folded Reload
	add	sp, sp, #224
	ret
.Lfunc_end0:
	.size	forward_deconvolutional_layer, .Lfunc_end0-forward_deconvolutional_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym gemm_cpu
	.addrsig_sym col2im_cpu
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym add_bias
	.addrsig_sym activate_array