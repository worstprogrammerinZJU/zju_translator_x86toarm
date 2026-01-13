	.text
	.globl	resize_iseg_layer               // -- Begin function resize_iseg_layer
	.p2align	2
	.type	resize_iseg_layer,@function
resize_iseg_layer:                      // @resize_iseg_layer
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	str	w2, [sp]
	ldr	w8, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	w8, [sp]
	ldr	x9, [sp, #8]
	str	w8, [x9, #4]
	ldr	w8, [sp]
	ldr	w9, [sp, #4]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #8]
	ldr	x9, [sp, #8]
	str	w8, [x9, #16]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #20]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #8]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #24]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	ldr	x8, [sp, #8]
	ldr	w8, [x8, #20]
	ldr	x9, [sp, #8]
	ldr	w9, [x9, #8]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldr	x8, [sp, #8]
	str	x0, [x8, #40]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Lfunc_end0:
	.size	resize_iseg_layer, .Lfunc_end0-resize_iseg_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc