	.text
	.globl	forward_activation_layer        // -- Begin function forward_activation_layer
	.p2align	2
	.type	forward_activation_layer,@function
forward_activation_layer:               // @forward_activation_layer
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
	ldr	w1, [sp, #12]
	ldr	w3, [sp, #28]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	ldr	w0, [sp, #28]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #20]
	mul	w1, w8, w9
	ldr	w2, [sp, #24]
	bl	activate_array
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	forward_activation_layer, .Lfunc_end0-forward_activation_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym activate_array