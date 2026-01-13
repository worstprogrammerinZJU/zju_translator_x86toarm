	.text
	.globl	backward_batchnorm_layer        // -- Begin function backward_batchnorm_layer
	.p2align	2
	.type	backward_batchnorm_layer,@function
backward_batchnorm_layer:               // @backward_batchnorm_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	ldur	w8, [x29, #-4]
	cbnz	w8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w8, [x9, #76]
	str	w8, [x9, #48]
	ldr	w8, [x9, #72]
	str	w8, [x9, #44]
	b	.LBB0_2
.LBB0_2:
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x9, #68]
	ldr	w1, [x9, #28]
	ldr	w2, [x9]
	ldr	w3, [x9, #32]
	ldr	w8, [x9, #4]
	ldr	w9, [x9, #8]
	mul	w4, w8, w9
	bl	backward_bias
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #64]
	ldr	w1, [x8, #28]
	ldr	w2, [x8]
	ldr	w3, [x8, #32]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	mul	w4, w9, w10
	ldr	w5, [x8, #60]
	bl	backward_scale_cpu
	ldr	x9, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x9, #28]
	ldr	w1, [x9, #56]
	ldr	w2, [x9]
	ldr	w3, [x9, #32]
	ldr	w8, [x9, #8]
	ldr	w9, [x9, #4]
	mul	w4, w8, w9
	bl	scale_bias
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #28]
	ldr	w1, [x8, #44]
	ldr	w2, [x8]
	ldr	w3, [x8, #32]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	mul	w4, w9, w10
	ldr	w5, [x8, #40]
	bl	mean_delta_cpu
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #52]
	ldr	w1, [x8, #28]
	ldr	w2, [x8, #48]
	ldr	w3, [x8, #44]
	ldr	w4, [x8]
	ldr	w5, [x8, #32]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	mul	w6, w9, w10
	ldr	w7, [x8, #36]
	bl	variance_delta_cpu
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8, #52]
	ldr	w1, [x8, #48]
	ldr	w2, [x8, #44]
	ldr	w3, [x8, #40]
	ldr	w4, [x8, #36]
	ldr	w5, [x8]
	ldr	w6, [x8, #32]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	mul	w7, w9, w10
	ldr	w8, [x8, #28]
	mov	x9, sp
	str	w8, [x9]
	bl	normalize_delta_cpu
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	adrp	x9, BATCHNORM
	ldr	x9, [x9, :lo12:BATCHNORM]
	subs	x8, x8, x9
	b.ne	.LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w9, [x8, #24]
	ldr	w10, [x8]
	mul	w0, w9, w10
	ldr	w1, [x8, #28]
	ldur	w3, [x29, #-8]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_4
.LBB0_4:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	backward_batchnorm_layer, .Lfunc_end0-backward_batchnorm_layer
                                        // -- End function
	.type	BATCHNORM,@object               // @BATCHNORM
	.bss
	.globl	BATCHNORM
	.p2align	3
BATCHNORM:
	.xword	0                               // 0x0
	.size	BATCHNORM, 8
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym backward_bias
	.addrsig_sym backward_scale_cpu
	.addrsig_sym scale_bias
	.addrsig_sym mean_delta_cpu
	.addrsig_sym variance_delta_cpu
	.addrsig_sym normalize_delta_cpu
	.addrsig_sym copy_cpu
	.addrsig_sym BATCHNORM