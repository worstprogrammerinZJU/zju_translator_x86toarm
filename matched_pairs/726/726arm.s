	.text
	.globl	backward_detection_layer        // -- Begin function backward_detection_layer
	.p2align	2
	.type	backward_detection_layer,@function
backward_detection_layer:               // @backward_detection_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #16]
	str	x1, [sp, #24]
	ldr	x8, [sp, #16]
	stur	x8, [x29, #-16]
	ldr	w8, [sp, #24]
	stur	w8, [x29, #-8]
	mov	w8, w2
	str	w8, [sp, #12]
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-12]
	mul	w0, w8, w9
	ldur	w2, [x29, #-8]
	ldr	w4, [sp, #12]
	mov	w5, #1
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	backward_detection_layer, .Lfunc_end0-backward_detection_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym axpy_cpu