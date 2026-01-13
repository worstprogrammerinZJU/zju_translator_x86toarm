	.text
	.globl	backward_shortcut_layer         // -- Begin function backward_shortcut_layer
	.p2align	2
	.type	backward_shortcut_layer,@function
backward_shortcut_layer:                // @backward_shortcut_layer
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #64
	mov	x8, x0
	str	x8, [sp, #32]                   // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	w0, [x8, #56]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, #52]
	ldr	w3, [x8, #32]
	bl	gradient_array
	ldr	x8, [sp, #32]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #48]
	ldr	w2, [x8, #32]
	ldur	w4, [x29, #-8]
	mov	w5, #1
	stur	w5, [x29, #-20]                 // 4-byte Folded Spill
	mov	w3, w5
	bl	axpy_cpu
	ldr	x9, [sp, #32]                   // 8-byte Folded Reload
	ldur	w11, [x29, #-20]                // 4-byte Folded Reload
	ldr	w0, [x9, #4]
	ldr	w1, [x9, #44]
	ldr	w2, [x9, #40]
	ldr	w3, [x9, #36]
	ldr	w4, [x9, #32]
	ldr	w5, [x9, #28]
	ldr	w6, [x9, #24]
	ldr	w7, [x9, #20]
	ldr	w10, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x9, [x9, #8]
	ldr	w8, [x8, x9, lsl #2]
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	bl	shortcut_cpu
	ldp	x29, x30, [sp, #64]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end0:
	.size	backward_shortcut_layer, .Lfunc_end0-backward_shortcut_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym gradient_array
	.addrsig_sym axpy_cpu
	.addrsig_sym shortcut_cpu