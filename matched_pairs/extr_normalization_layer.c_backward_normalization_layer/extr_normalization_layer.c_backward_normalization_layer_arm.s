	.text
	.globl	backward_normalization_layer    // -- Begin function backward_normalization_layer
	.p2align	2
	.type	backward_normalization_layer,@function
backward_normalization_layer:           // @backward_normalization_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	mov	x8, x0
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	w9, w1
	stur	w9, [x29, #-4]
	ldr	w9, [x8]
	stur	w9, [x29, #-8]
	ldr	w9, [x8, #4]
	stur	w9, [x29, #-12]
	ldr	w9, [x8, #8]
	str	w9, [sp, #16]
	ldur	w9, [x29, #-8]
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	w10, [x8, #24]
	mov	w9, wzr
	subs	w1, w9, w10
	ldr	w2, [x8, #20]
	ldur	w4, [x29, #-4]
	mov	w5, #1
	str	w5, [sp, #12]                   // 4-byte Folded Spill
	mov	w3, w5
	bl	pow_cpu
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w4, [sp, #12]                   // 4-byte Folded Reload
	ldur	w9, [x29, #-8]
	ldur	w10, [x29, #-12]
	mul	w9, w9, w10
	ldr	w10, [sp, #16]
	mul	w9, w9, w10
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldr	w1, [x8, #16]
	ldur	w3, [x29, #-4]
	mov	w2, w4
	bl	mul_cpu
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	backward_normalization_layer, .Lfunc_end0-backward_normalization_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym pow_cpu
	.addrsig_sym mul_cpu