	.text
	.globl	backward_cost_layer             // -- Begin function backward_cost_layer
	.p2align	2
	.type	backward_cost_layer,@function
backward_cost_layer:                    // @backward_cost_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	mov	w8, w2
	str	w8, [sp, #12]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	mul	w0, w8, w9
	ldr	w1, [sp, #28]
	ldr	w2, [sp, #24]
	ldr	w4, [sp, #12]
	mov	w5, #1
	mov	w3, w5
	bl	axpy_cpu
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	backward_cost_layer, .Lfunc_end0-backward_cost_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy_cpu