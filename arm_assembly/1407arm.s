	.text
	.globl	forward_l2norm_layer            // -- Begin function forward_l2norm_layer
	.p2align	2
	.type	forward_l2norm_layer,@function
forward_l2norm_layer:                   // @forward_l2norm_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	mov	x8, x0
	str	x8, [sp]                        // 8-byte Folded Spill
	mov	w9, w1
	stur	w9, [x29, #-4]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldur	w1, [x29, #-4]
	ldr	w3, [x8, #24]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	ldr	x9, [sp]                        // 8-byte Folded Reload
	ldr	w0, [x9, #24]
	ldr	w1, [x9, #20]
	ldr	w2, [x9, #4]
	ldr	w3, [x9, #16]
	ldr	w8, [x9, #8]
	ldr	w9, [x9, #12]
	mul	w4, w8, w9
	bl	l2normalize_cpu
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	forward_l2norm_layer, .Lfunc_end0-forward_l2norm_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym l2normalize_cpu