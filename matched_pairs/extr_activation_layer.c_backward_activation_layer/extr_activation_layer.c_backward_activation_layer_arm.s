	.text
	.globl	backward_activation_layer       // -- Begin function backward_activation_layer
	.p2align	2
	.type	backward_activation_layer,@function
backward_activation_layer:              // @backward_activation_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	x8, x0
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	w9, w1
	stur	w9, [x29, #-4]
	ldr	w0, [x8, #16]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, #12]
	ldr	w3, [x8, #8]
	bl	gradient_array
	ldr	x8, [sp]                        // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #8]
	ldur	w3, [x29, #-4]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	backward_activation_layer, .Lfunc_end0-backward_activation_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym copy_cpu