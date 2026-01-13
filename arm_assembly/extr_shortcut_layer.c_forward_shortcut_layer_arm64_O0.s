	.text
	.globl	forward_shortcut_layer          // -- Begin function forward_shortcut_layer
	.p2align	2
	.type	forward_shortcut_layer,@function
forward_shortcut_layer:                 // @forward_shortcut_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	mov	x8, x0
	str	x8, [sp, #24]                   // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldur	w1, [x29, #-8]
	ldr	w3, [x8, #20]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x8, #4]
	ldr	w1, [x8, #52]
	ldr	w2, [x8, #48]
	ldr	w3, [x8, #44]
	ldur	x9, [x29, #-16]
	ldr	x10, [x8, #8]
	ldr	w4, [x9, x10, lsl #2]
	ldr	w5, [x8, #40]
	ldr	w6, [x8, #36]
	ldr	w7, [x8, #32]
	ldr	w11, [x8, #28]
	ldr	w10, [x8, #24]
	ldr	w8, [x8, #20]
	mov	x9, sp
	str	w11, [x9]
	str	w10, [x9, #8]
	str	w8, [x9, #16]
	bl	shortcut_cpu
	ldr	x8, [sp, #24]                   // 8-byte Folded Reload
	ldr	w0, [x8, #20]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, #16]
	bl	activate_array
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	forward_shortcut_layer, .Lfunc_end0-forward_shortcut_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym copy_cpu
	.addrsig_sym shortcut_cpu
	.addrsig_sym activate_array