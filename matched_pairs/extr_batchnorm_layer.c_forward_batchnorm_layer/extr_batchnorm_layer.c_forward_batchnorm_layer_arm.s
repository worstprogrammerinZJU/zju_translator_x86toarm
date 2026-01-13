	.text
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               // -- Begin function forward_batchnorm_layer
.LCPI0_0:
	.xword	0x3f847ae147ae147b              // double 0.01
.LCPI0_1:
	.xword	0x3fefae147ae147ae              // double 0.98999999999999999
	.text
	.globl	forward_batchnorm_layer
	.p2align	2
	.type	forward_batchnorm_layer,@function
forward_batchnorm_layer:                // @forward_batchnorm_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	x8, [x0]
	adrp	x9, BATCHNORM
	ldr	x9, [x9, :lo12:BATCHNORM]
	subs	x8, x8, x9
	b.ne	.LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldur	w1, [x29, #-8]
	ldr	w3, [x8, #32]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	w1, [x8, #32]
	ldr	w3, [x8, #60]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_4
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x8, #32]
	ldr	w1, [x8, #12]
	ldr	w2, [x8, #24]
	ldr	w9, [x8, #16]
	ldr	w10, [x8, #20]
	mul	w3, w9, w10
	ldr	w4, [x8, #56]
	bl	mean_cpu
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x8, #32]
	ldr	w1, [x8, #56]
	ldr	w2, [x8, #12]
	ldr	w3, [x8, #24]
	ldr	w9, [x8, #16]
	ldr	w10, [x8, #20]
	mul	w4, w9, w10
	ldr	w5, [x8, #52]
	bl	variance_cpu
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x8, #24]
	ldr	w1, [x8, #44]
	adrp	x8, .LCPI0_1
	ldr	d0, [x8, :lo12:.LCPI0_1]
	str	d0, [sp]                        // 8-byte Folded Spill
	mov	w2, #1
	str	w2, [sp, #20]                   // 4-byte Folded Spill
	bl	scal_cpu
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w4, [sp, #20]                   // 4-byte Folded Reload
	ldr	w0, [x8, #24]
	ldr	w1, [x8, #56]
	ldr	w3, [x8, #44]
	adrp	x8, .LCPI0_0
	ldr	d0, [x8, :lo12:.LCPI0_0]
	str	d0, [sp, #8]                    // 8-byte Folded Spill
	mov	w2, w4
	bl	axpy_cpu
	ldr	d0, [sp]                        // 8-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w2, [sp, #20]                   // 4-byte Folded Reload
	ldr	w0, [x8, #24]
	ldr	w1, [x8, #40]
	bl	scal_cpu
	ldr	d0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w4, [sp, #20]                   // 4-byte Folded Reload
	ldr	w0, [x8, #24]
	ldr	w1, [x8, #52]
	ldr	w3, [x8, #40]
	mov	w2, w4
	bl	axpy_cpu
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x9, #32]
	ldr	w1, [x9, #56]
	ldr	w2, [x9, #52]
	ldr	w3, [x9, #12]
	ldr	w4, [x9, #24]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #20]
	mul	w5, w8, w9
	bl	normalize_cpu
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w4, [sp, #20]                   // 4-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	w1, [x8, #32]
	ldr	w3, [x8, #48]
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_5
.LBB0_4:
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x9, #32]
	ldr	w1, [x9, #44]
	ldr	w2, [x9, #40]
	ldr	w3, [x9, #12]
	ldr	w4, [x9, #24]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #20]
	mul	w5, w8, w9
	bl	normalize_cpu
	b	.LBB0_5
.LBB0_5:
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x9, #32]
	ldr	w1, [x9, #36]
	ldr	w2, [x9, #12]
	ldr	w3, [x9, #24]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #20]
	mul	w4, w8, w9
	bl	scale_bias
	ldr	x9, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x9, #32]
	ldr	w1, [x9, #28]
	ldr	w2, [x9, #12]
	ldr	w3, [x9, #24]
	ldr	w8, [x9, #16]
	ldr	w9, [x9, #20]
	mul	w4, w8, w9
	bl	add_bias
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	forward_batchnorm_layer, .Lfunc_end0-forward_batchnorm_layer
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
	.addrsig_sym copy_cpu
	.addrsig_sym mean_cpu
	.addrsig_sym variance_cpu
	.addrsig_sym scal_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym normalize_cpu
	.addrsig_sym scale_bias
	.addrsig_sym add_bias
	.addrsig_sym BATCHNORM