	.text
	.globl	resize_reorg_layer              // -- Begin function resize_reorg_layer
	.p2align	2
	.type	resize_reorg_layer,@function
resize_reorg_layer:                     // @resize_reorg_layer
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
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #72]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	sdiv	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #24]
	b	.LBB0_3
.LBB0_2:
	ldur	w8, [x29, #-12]
	ldr	w9, [sp, #12]
	sdiv	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #16]
	ldr	w8, [sp, #16]
	ldr	w9, [sp, #12]
	sdiv	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #20]
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	ldr	w10, [sp, #12]
	mul	w9, w9, w10
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #24]
	b	.LBB0_3
.LBB0_3:
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #20]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #16]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #24]
	mul	w8, w8, w9
	ldur	x9, [x29, #-8]
	str	w8, [x9, #28]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #28]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-8]
	ldr	w8, [x8, #28]
	ldur	x9, [x29, #-8]
	ldr	w9, [x9, #36]
	mul	w8, w8, w9
	str	w8, [sp, #4]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #56]
	ldrsw	x8, [sp, #4]
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #56]
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	ldrsw	x8, [sp, #4]
	lsl	x8, x8, #2
	mov	w1, w8
	bl	realloc
	ldur	x8, [x29, #-8]
	str	x0, [x8, #40]
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	resize_reorg_layer, .Lfunc_end0-resize_reorg_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym realloc