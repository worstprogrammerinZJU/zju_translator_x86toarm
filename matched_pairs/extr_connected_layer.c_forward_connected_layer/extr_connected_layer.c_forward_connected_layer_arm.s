	.text
	.globl	forward_connected_layer         // -- Begin function forward_connected_layer
	.p2align	2
	.type	forward_connected_layer,@function
forward_connected_layer:                // @forward_connected_layer
// %bb.0:
	sub	sp, sp, #176
	stp	x29, x30, [sp, #160]            // 16-byte Folded Spill
	add	x29, sp, #160
	mov	x8, x0
	str	x8, [sp, #56]                   // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	x2, [x8, #8]
	mov	w1, wzr
	str	w1, [sp, #52]                   // 4-byte Folded Spill
	mov	w3, #1
	str	w3, [sp, #48]                   // 4-byte Folded Spill
	bl	fill_cpu
	ldr	w5, [sp, #48]                   // 4-byte Folded Reload
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	w0, [sp, #52]                   // 4-byte Folded Reload
	ldr	w9, [x8, #4]
	stur	w9, [x29, #-12]
	ldr	w9, [x8, #16]
	stur	w9, [x29, #-16]
	ldr	w9, [x8]
	stur	w9, [x29, #-20]
	ldur	x9, [x29, #-8]
	stur	x9, [x29, #-32]
	ldr	x9, [x8, #24]
	stur	x9, [x29, #-40]
	ldr	x8, [x8, #8]
	stur	x8, [x29, #-48]
	ldur	w2, [x29, #-12]
	ldur	w3, [x29, #-20]
	ldur	w4, [x29, #-16]
	ldur	x6, [x29, #-32]
	ldur	w7, [x29, #-16]
	ldur	x12, [x29, #-40]
	ldur	w11, [x29, #-16]
	ldur	x10, [x29, #-48]
	ldur	w8, [x29, #-20]
	mov	x9, sp
	str	x12, [x9]
	str	w11, [x9, #8]
	str	w5, [x9, #16]
	str	x10, [x9, #24]
	str	w8, [x9, #32]
	mov	w1, w5
	bl	gemm
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [x0, #40]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x1, [sp, #56]                   // 8-byte Folded Reload
	add	x0, sp, #64
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	mov	x2, #48
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-8]
	bl	forward_batchnorm_layer
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	w1, [x8, #36]
	ldr	w2, [x8, #4]
	ldr	w3, [x8]
	mov	w4, #1
	bl	add_bias
	b	.LBB0_3
.LBB0_3:
	ldr	x8, [sp, #56]                   // 8-byte Folded Reload
	ldr	x0, [x8, #8]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, #32]
	bl	activate_array
	ldp	x29, x30, [sp, #160]            // 16-byte Folded Reload
	add	sp, sp, #176
	ret
.Lfunc_end0:
	.size	forward_connected_layer, .Lfunc_end0-forward_connected_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym gemm
	.addrsig_sym forward_batchnorm_layer
	.addrsig_sym add_bias
	.addrsig_sym activate_array