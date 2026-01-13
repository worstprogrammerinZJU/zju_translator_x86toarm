	.text
	.globl	resize_normalization_layer      // -- Begin function resize_normalization_layer
	.p2align	2
	.type	resize_normalization_layer,@function
resize_normalization_layer:             // @resize_normalization_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8]
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #4]
	str	w8, [sp, #8]
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #12]
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #16]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #24]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #24]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #28]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #80]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #80]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #64]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #64]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #48]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #48]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #32]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldr	w9, [sp, #8]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #32]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	resize_normalization_layer, .Lfunc_end0-resize_normalization_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc