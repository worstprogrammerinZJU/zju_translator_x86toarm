	.text
	.globl	forward_softmax_layer           // -- Begin function forward_softmax_layer
	.p2align	2
	.type	forward_softmax_layer,@function
forward_softmax_layer:                  // @forward_softmax_layer
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	x8, [x0, #48]
	cbz	x8, .LBB0_6
	b	.LBB0_1
.LBB0_1:
	str	wzr, [sp, #24]
	stur	wzr, [x29, #-20]
	b	.LBB0_2
.LBB0_2:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-20]
	ldr	x9, [x9, #48]
	ldr	w9, [x9]
	subs	w8, w8, w9
	b.ge	.LBB0_5
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_2 Depth=1
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x9, [x8, #48]
	ldr	x9, [x9, #8]
	ldursw	x10, [x29, #-20]
	ldr	w9, [x9, x10, lsl #2]
	str	w9, [sp, #20]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #24]
	add	x0, x9, x10
	ldr	w1, [sp, #20]
	ldr	w2, [x8]
	ldr	w3, [x8, #4]
	ldr	w7, [x8, #44]
	ldr	x8, [x8, #32]
	ldrsw	x9, [sp, #24]
	add	x8, x8, x9
	mov	x9, sp
	str	x8, [x9]
	mov	w6, #1
	mov	w4, w6
	mov	w5, wzr
	bl	softmax_cpu
	ldr	w9, [sp, #20]
	ldr	w8, [sp, #24]
	add	w8, w8, w9
	str	w8, [sp, #24]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_2 Depth=1
	ldur	w8, [x29, #-20]
	add	w8, w8, #1
	stur	w8, [x29, #-20]
	b	.LBB0_2
.LBB0_5:
	b	.LBB0_7
.LBB0_6:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	sdiv	w1, w9, w10
	ldr	w2, [x8]
	ldr	w3, [x8, #4]
	ldr	w4, [x8, #8]
	ldr	w9, [x8, #4]
	ldr	w10, [x8, #8]
	sdiv	w5, w9, w10
	ldr	w7, [x8, #44]
	ldr	x8, [x8, #32]
	mov	x9, sp
	str	x8, [x9]
	mov	w6, #1
	bl	softmax_cpu
	b	.LBB0_7
.LBB0_7:
	ldur	x8, [x29, #-16]
	cbz	x8, .LBB0_10
	b	.LBB0_8
.LBB0_8:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w8, [x8, #40]
	cbnz	w8, .LBB0_10
	b	.LBB0_9
.LBB0_9:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	x1, [x8, #32]
	ldur	x2, [x29, #-16]
	ldr	w3, [x8, #24]
	ldr	w4, [x8, #12]
	bl	softmax_x_ent_cpu
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	w0, [x9, #12]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	bl	sum_array
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #16]
	str	w0, [x8]
	b	.LBB0_10
.LBB0_10:
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end0:
	.size	forward_softmax_layer, .Lfunc_end0-forward_softmax_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym softmax_cpu
	.addrsig_sym softmax_x_ent_cpu
	.addrsig_sym sum_array