	.text
	.globl	backward_connected_layer        // -- Begin function backward_connected_layer
	.p2align	2
	.type	backward_connected_layer,@function
backward_connected_layer:               // @backward_connected_layer
// %bb.0:
	sub	sp, sp, #192
	stp	x29, x30, [sp, #176]            // 16-byte Folded Spill
	add	x29, sp, #176
	mov	x8, x0
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	w0, [x8, #60]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, #56]
	ldr	x3, [x8, #8]
	bl	gradient_array
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [x0, #48]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #48]                   // 8-byte Folded Reload
	sub	x0, x29, #80
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mov	x2, #64
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-8]
	bl	backward_batchnorm_layer
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	w0, [x8, #40]
	ldr	x1, [x8, #8]
	ldr	w2, [x8, #4]
	ldr	w3, [x8]
	mov	w4, #1
	bl	backward_bias
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	stur	w9, [x29, #-84]
	ldr	w9, [x8, #4]
	str	w9, [sp, #88]
	ldr	w9, [x8, #16]
	str	w9, [sp, #84]
	ldr	x9, [x8, #8]
	str	x9, [sp, #72]
	ldur	x9, [x29, #-16]
	str	x9, [sp, #64]
	ldr	x8, [x8, #24]
	str	x8, [sp, #56]
	ldur	w2, [x29, #-84]
	ldr	w3, [sp, #84]
	ldr	w4, [sp, #88]
	ldr	x6, [sp, #72]
	ldur	w7, [x29, #-84]
	ldr	x12, [sp, #64]
	ldr	w11, [sp, #84]
	ldr	x10, [sp, #56]
	ldr	w8, [sp, #84]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	mov	w5, #1
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w0, w5
	mov	w1, wzr
	bl	gemm
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	w9, [x8, #4]
	stur	w9, [x29, #-84]
	ldr	w9, [x8]
	str	w9, [sp, #88]
	ldr	w9, [x8, #16]
	str	w9, [sp, #84]
	ldr	x9, [x8, #8]
	str	x9, [sp, #72]
	ldr	x8, [x8, #32]
	str	x8, [sp, #64]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #56]
	ldr	x8, [sp, #56]
	cbz	x8, .LBB0_5
	b	.LBB0_4
.LBB0_4:
	ldur	w2, [x29, #-84]
	ldr	w3, [sp, #84]
	ldr	w4, [sp, #88]
	ldr	x6, [sp, #72]
	ldr	w7, [sp, #88]
	ldr	x12, [sp, #64]
	ldr	w11, [sp, #84]
	ldr	x10, [sp, #56]
	ldr	w8, [sp, #84]
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
	b	.LBB0_5
.LBB0_5:
	ldp	x29, x30, [sp, #176]            // 16-byte Folded Reload
	add	sp, sp, #192
	ret
.Lfunc_end0:
	.size	backward_connected_layer, .Lfunc_end0-backward_connected_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym backward_batchnorm_layer
	.addrsig_sym backward_bias
	.addrsig_sym gemm