	.text
	.globl	backward_upsample_layer         // -- Begin function backward_upsample_layer
	.p2align	2
	.type	backward_upsample_layer,@function
backward_upsample_layer:                // @backward_upsample_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	mov	w8, w1
	stur	w8, [x29, #-4]
	ldr	x8, [x0, #40]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldr	w0, [x8]
	ldr	w1, [x8, #32]
	ldr	w2, [x8, #28]
	ldr	w3, [x8, #16]
	ldr	w4, [x8, #12]
	ldr	w5, [x8, #8]
	ldr	w7, [x8, #4]
	ldur	w8, [x29, #-4]
	mov	x9, sp
	str	w8, [x9]
	mov	w6, #1
	bl	upsample_cpu
	b	.LBB0_3
.LBB0_2:
	ldr	x8, [sp, #16]                   // 8-byte Folded Reload
	ldur	w0, [x29, #-4]
	ldr	w1, [x8, #24]
	ldr	w2, [x8, #20]
	ldr	w3, [x8, #16]
	ldr	w4, [x8, #12]
	ldr	w5, [x8, #8]
	ldr	w7, [x8, #4]
	ldr	w8, [x8]
	mov	x9, sp
	str	w8, [x9]
	mov	w6, wzr
	bl	upsample_cpu
	b	.LBB0_3
.LBB0_3:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	backward_upsample_layer, .Lfunc_end0-backward_upsample_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym upsample_cpu