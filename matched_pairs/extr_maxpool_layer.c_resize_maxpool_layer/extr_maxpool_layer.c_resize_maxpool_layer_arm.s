	.text
	.globl	resize_maxpool_layer            // -- Begin function resize_maxpool_layer
	.p2align	2
	.type	resize_maxpool_layer,@function
resize_maxpool_layer:                   // @resize_maxpool_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	str	w2, [sp, #16]
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-12]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #8]
	ldur	w8, [x29, #-12]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #20]
	add	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #28]
	sdiv	w8, w8, w9
	add	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldr	w8, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #20]
	add	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #24]
	subs	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #28]
	sdiv	w8, w8, w9
	add	w8, w8, #1
	ldur	x9, [x29, #-8]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #16]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #32]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #12]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #36]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #36]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #40]
	mul	w8, w8, w9
	str	w8, [sp, #12]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #88]
	ldrsw	x8, [sp, #12]
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #88]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #72]
	ldrsw	x8, [sp, #12]
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #72]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #64]
	ldrsw	x8, [sp, #12]
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #64]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	resize_maxpool_layer, .Lfunc_end0-resize_maxpool_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc