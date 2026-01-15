	.text
	.globl	forward_reorg_layer             // -- Begin function forward_reorg_layer
	.p2align	2
	.type	forward_reorg_layer,@function
forward_reorg_layer:                    // @forward_reorg_layer
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	stur	x1, [x29, #-8]
	ldr	x8, [x0, #56]
	cbz	x8, .LBB0_5
	b	.LBB0_1
.LBB0_1:
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x9, #24]
	ldur	x1, [x29, #-8]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w9, w8, w9
                                        // implicit-def: $x8
	mov	w8, w9
	sxtw	x8, w8
	lsl	x8, x8, #2
	mov	w2, w8
	bl	memcpy
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_3
	b	.LBB0_2
.LBB0_2:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w1, w9, w10
	ldr	w2, [x8, #36]
	ldr	w3, [x8, #4]
	mov	w4, wzr
	bl	flatten
	b	.LBB0_4
.LBB0_3:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x0, [x8, #24]
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w1, w9, w10
	ldr	w2, [x8, #36]
	ldr	w3, [x8, #4]
	mov	w4, #1
	bl	flatten
	b	.LBB0_4
.LBB0_4:
	b	.LBB0_16
.LBB0_5:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	cbz	x8, .LBB0_11
	b	.LBB0_6
.LBB0_6:
	stur	wzr, [x29, #-12]
	b	.LBB0_7
.LBB0_7:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #8]                    // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	b.ge	.LBB0_10
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_7 Depth=1
	ldr	x10, [sp, #8]                   // 8-byte Folded Reload
	ldr	w0, [x10, #16]
	ldur	x8, [x29, #-8]
	ldur	w9, [x29, #-12]
	ldr	w11, [x10, #16]
	mul	w9, w9, w11
	add	x1, x8, w9, sxtw
	ldr	x8, [x10, #24]
	ldur	w9, [x29, #-12]
	ldr	w10, [x10]
	mul	w9, w9, w10
	add	x3, x8, w9, sxtw
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_9
.LBB0_9:                                //   in Loop: Header=BB0_7 Depth=1
	ldur	w8, [x29, #-12]
	add	w8, w8, #1
	stur	w8, [x29, #-12]
	b	.LBB0_7
.LBB0_10:
	b	.LBB0_15
.LBB0_11:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [x8, #40]
	cbz	x8, .LBB0_13
	b	.LBB0_12
.LBB0_12:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	w1, [x8, #8]
	ldr	w2, [x8, #12]
	ldr	w3, [x8, #36]
	ldr	w4, [x8, #4]
	ldr	w5, [x8, #32]
	ldr	x7, [x8, #24]
	mov	w6, #1
	bl	reorg_cpu
	b	.LBB0_14
.LBB0_13:
	ldr	x8, [sp, #8]                    // 8-byte Folded Reload
	ldur	x0, [x29, #-8]
	ldr	w1, [x8, #8]
	ldr	w2, [x8, #12]
	ldr	w3, [x8, #36]
	ldr	w4, [x8, #4]
	ldr	w5, [x8, #32]
	ldr	x7, [x8, #24]
	mov	w6, wzr
	bl	reorg_cpu
	b	.LBB0_14
.LBB0_14:
	b	.LBB0_15
.LBB0_15:
	b	.LBB0_16
.LBB0_16:
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end0:
	.size	forward_reorg_layer, .Lfunc_end0-forward_reorg_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym memcpy
	.addrsig_sym flatten
	.addrsig_sym copy_cpu
	.addrsig_sym reorg_cpu