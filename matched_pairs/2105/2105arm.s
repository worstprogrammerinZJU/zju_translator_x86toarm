	.text
	.globl	backward_rnn_layer              // -- Begin function backward_rnn_layer
	.p2align	2
	.type	backward_rnn_layer,@function
backward_rnn_layer:                     // @backward_rnn_layer
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #576
	str	x0, [sp, #80]                   // 8-byte Folded Spill
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-32]
	stur	x8, [x29, #-16]
	ldur	w8, [x29, #-24]
	stur	w8, [x29, #-8]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-48]
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-40]
	ldur	w8, [x29, #-8]
	stur	w8, [x29, #-40]
	ldr	x1, [x0, #56]
	sub	x0, x29, #120
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	mov	x2, #64
	str	x2, [sp, #48]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	x1, [x0, #48]
	sub	x0, x29, #184
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	ldr	x2, [sp, #48]                   // 8-byte Folded Reload
	ldr	x1, [x0, #40]
	sub	x0, x29, #248
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w1, w8, #1
	bl	increment_layer
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w1, w8, #1
	bl	increment_layer
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	ldr	w8, [x8]
	subs	w1, w8, #1
	bl	increment_layer
	ldr	x0, [sp, #80]                   // 8-byte Folded Reload
	ldr	w8, [x0, #8]
	ldr	w9, [x0, #12]
	mul	w8, w8, w9
	ldr	w9, [x0]
	mul	w9, w8, w9
	ldr	w8, [x0, #4]
	add	w8, w8, w9
	str	w8, [x0, #4]
	ldr	w8, [x0]
	subs	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_1
.LBB0_1:                                // =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-52]
	tbnz	w8, #31, .LBB0_12
	b	.LBB0_2
.LBB0_2:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldur	w1, [x29, #-104]
	ldr	w3, [x8, #4]
	mov	w4, #1
	str	w4, [sp, #36]                   // 4-byte Folded Spill
	mov	w2, w4
	bl	copy_cpu
	ldr	w5, [sp, #36]                   // 4-byte Folded Reload
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	w9, [x8, #8]
	ldr	w10, [x8, #12]
	mul	w0, w9, w10
	ldur	w2, [x29, #-168]
	ldr	w4, [x8, #4]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	w8, [x8, #4]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-164]
	stur	w8, [x29, #-44]
	add	x0, sp, #264
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	sub	x1, x29, #248
	mov	x2, #64
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-48]
	str	x8, [sp, #248]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #256]
	ldr	x1, [sp, #248]
	ldr	x2, [sp, #256]
	bl	backward_connected_layer
	ldr	x10, [sp, #80]                  // 8-byte Folded Reload
	ldr	w8, [x10, #8]
	ldr	w9, [x10, #12]
	mul	w9, w8, w9
	ldr	w8, [x10, #4]
	subs	w8, w8, w9
	str	w8, [x10, #4]
	ldr	w8, [x10, #4]
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-164]
	ldr	w9, [x10, #8]
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	subs	w8, w8, w9
	stur	w8, [x29, #-44]
	ldur	w8, [x29, #-52]
	cbnz	w8, .LBB0_4
	b	.LBB0_3
.LBB0_3:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-44]
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_1 Depth=1
	add	x0, sp, #184
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	sub	x1, x29, #184
	mov	x2, #64
	bl	memcpy
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x8, [x29, #-48]
	str	x8, [sp, #168]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #176]
	ldr	x1, [sp, #168]
	ldr	x2, [sp, #176]
	bl	backward_connected_layer
	ldr	x9, [sp, #80]                   // 8-byte Folded Reload
	ldr	w8, [x9, #8]
	ldr	w9, [x9, #12]
	mul	w0, w8, w9
	ldur	w1, [x29, #-164]
	ldur	w3, [x29, #-100]
	mov	w4, #1
	mov	w2, w4
	bl	copy_cpu
	ldur	w8, [x29, #-52]
	subs	w8, w8, #0
	b.le	.LBB0_7
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x8, [x8, #32]
	cbz	x8, .LBB0_7
	b	.LBB0_6
.LBB0_6:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #80]                  // 8-byte Folded Reload
	ldr	w8, [x10, #8]
	ldr	w9, [x10, #12]
	mul	w0, w8, w9
	ldur	w2, [x29, #-164]
	ldur	w8, [x29, #-164]
	ldr	w9, [x10, #8]
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	subs	w4, w8, w9
	mov	w5, #1
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #80]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	ldur	w9, [x29, #-52]
	ldr	w11, [x10, #24]
	mul	w9, w9, w11
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	stur	w8, [x29, #-48]
	ldur	w8, [x29, #-12]
	cbz	w8, .LBB0_9
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_1 Depth=1
	ldr	x10, [sp, #80]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-12]
	ldur	w9, [x29, #-52]
	ldr	w11, [x10, #24]
	mul	w9, w9, w11
	ldr	w10, [x10, #12]
	mul	w9, w9, w10
	add	w8, w8, w9
	stur	w8, [x29, #-44]
	b	.LBB0_10
.LBB0_9:                                //   in Loop: Header=BB0_1 Depth=1
	stur	wzr, [x29, #-44]
	b	.LBB0_10
.LBB0_10:                               //   in Loop: Header=BB0_1 Depth=1
	add	x0, sp, #104
	str	x0, [sp]                        // 8-byte Folded Spill
	sub	x1, x29, #120
	str	x1, [sp, #8]                    // 8-byte Folded Spill
	mov	x2, #64
	bl	memcpy
	ldr	x0, [sp]                        // 8-byte Folded Reload
	ldur	x8, [x29, #-48]
	str	x8, [sp, #88]
	ldur	w8, [x29, #-40]
	str	w8, [sp, #96]
	ldr	x1, [sp, #88]
	ldr	x2, [sp, #96]
	bl	backward_connected_layer
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	mov	w1, #-1
	str	w1, [sp, #20]                   // 4-byte Folded Spill
	bl	increment_layer
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	sub	x0, x29, #184
	bl	increment_layer
	ldr	w1, [sp, #20]                   // 4-byte Folded Reload
	sub	x0, x29, #248
	bl	increment_layer
	b	.LBB0_11
.LBB0_11:                               //   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-52]
	subs	w8, w8, #1
	stur	w8, [x29, #-52]
	b	.LBB0_1
.LBB0_12:
	add	sp, sp, #576
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	backward_rnn_layer, .Lfunc_end0-backward_rnn_layer
                                        // -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym increment_layer
	.addrsig_sym copy_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym backward_connected_layer