	.text
	.globl	forward_gru_layer               // -- Begin function forward_gru_layer
	.p2align	2
	.type	forward_gru_layer,@function
forward_gru_layer:                      // @forward_gru_layer
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #1488
	sub	x8, x29, #32
	str	x0, [sp, #96]                   // 8-byte Folded Spill
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	ldr	q0, [x8, #16]
	str	q0, [x8]
	ldur	x8, [x29, #-8]
	stur	x8, [x29, #-24]
	ldr	x1, [x0, #104]
	sub	x0, x29, #152
	mov	x2, #112
	str	x2, [sp, #80]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	x2, [sp, #80]                   // 8-byte Folded Reload
	ldr	x1, [x0, #96]
	add	x0, sp, #1224
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	x2, [sp, #80]                   // 8-byte Folded Reload
	ldr	x1, [x0, #88]
	add	x0, sp, #1112
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	x2, [sp, #80]                   // 8-byte Folded Reload
	ldr	x1, [x0, #80]
	add	x0, sp, #1000
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	x2, [sp, #80]                   // 8-byte Folded Reload
	ldr	x1, [x0, #72]
	add	x0, sp, #888
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	x2, [sp, #80]                   // 8-byte Folded Reload
	ldr	x1, [x0, #64]
	add	x0, sp, #776
	bl	memcpy
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldur	w2, [x29, #-96]
	mov	w1, wzr
	str	w1, [sp, #88]                   // 4-byte Folded Spill
	mov	w3, #1
	str	w3, [sp, #92]                   // 4-byte Folded Spill
	bl	fill_cpu
	ldr	w1, [sp, #88]                   // 4-byte Folded Reload
	ldr	w3, [sp, #92]                   // 4-byte Folded Reload
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1280]
	bl	fill_cpu
	ldr	w1, [sp, #88]                   // 4-byte Folded Reload
	ldr	w3, [sp, #92]                   // 4-byte Folded Reload
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1168]
	bl	fill_cpu
	ldr	w1, [sp, #88]                   // 4-byte Folded Reload
	ldr	w3, [sp, #92]                   // 4-byte Folded Reload
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1056]
	bl	fill_cpu
	ldr	w1, [sp, #88]                   // 4-byte Folded Reload
	ldr	w3, [sp, #92]                   // 4-byte Folded Reload
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #944]
	bl	fill_cpu
	ldr	w1, [sp, #88]                   // 4-byte Folded Reload
	ldr	w3, [sp, #92]                   // 4-byte Folded Reload
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #832]
	bl	fill_cpu
	ldur	x8, [x29, #-8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	ldr	w10, [x8, #8]
	mul	w0, w9, w10
	ldr	w2, [x8, #56]
	mov	w1, wzr
	mov	w3, #1
	str	w3, [sp, #76]                   // 4-byte Folded Spill
	bl	fill_cpu
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w4, [sp, #76]                   // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #12]
	ldr	w3, [x8, #16]
	mov	w2, w4
	bl	copy_cpu
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-36]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #96]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-36]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_9
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x8, #12]
	stur	w8, [x29, #-32]
	add	x0, sp, #664
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	add	x1, sp, #1000
	mov	x2, #112
	str	x2, [sp, #56]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-24]
	bl	forward_connected_layer
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	add	x0, sp, #552
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	add	x1, sp, #888
	bl	memcpy
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-24]
	bl	forward_connected_layer
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	ldur	w8, [x29, #-16]
	stur	w8, [x29, #-32]
	add	x0, sp, #440
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	sub	x1, x29, #152
	bl	memcpy
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-24]
	bl	forward_connected_layer
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	add	x0, sp, #328
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	add	x1, sp, #1224
	bl	memcpy
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-24]
	bl	forward_connected_layer
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	add	x0, sp, #216
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	add	x1, sp, #1112
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-24]
	bl	forward_connected_layer
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldur	w1, [x29, #-132]
	ldr	w3, [x8, #24]
	mov	w4, #1
	str	w4, [sp, #72]                   // 4-byte Folded Spill
	mov	w2, w4
	bl	copy_cpu
	ldr	w5, [sp, #72]                   // 4-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [sp, #1020]
	ldr	w4, [x8, #24]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	w4, [sp, #72]                   // 4-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [sp, #1244]
	ldr	w3, [x8, #28]
	mov	w2, w4
	bl	copy_cpu
	ldr	w5, [sp, #72]                   // 4-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [sp, #908]
	ldr	w4, [x8, #28]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x9, [sp, #96]                   // 8-byte Folded Reload
	ldr	w0, [x9, #24]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	adrp	x8, LOGISTIC
	str	x8, [sp, #48]                   // 8-byte Folded Spill
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	ldr	x8, [sp, #48]                   // 8-byte Folded Reload
	ldr	x10, [sp, #96]                  // 8-byte Folded Reload
	ldr	w0, [x10, #28]
	ldr	w9, [x10]
	ldr	w10, [x10, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	ldr	w4, [sp, #72]                   // 4-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #12]
	ldr	w3, [x8, #32]
	mov	w2, w4
	bl	copy_cpu
	ldr	w4, [sp, #72]                   // 4-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #28]
	ldr	w3, [x8, #32]
	mov	w2, w4
	bl	mul_cpu
	ldr	x2, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x8, #32]
	stur	w8, [x29, #-32]
	add	x0, sp, #104
	str	x0, [sp, #64]                   // 8-byte Folded Spill
	add	x1, sp, #776
	bl	memcpy
	ldr	x0, [sp, #64]                   // 8-byte Folded Reload
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-24]
	bl	forward_connected_layer
	ldr	w4, [sp, #72]                   // 4-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [sp, #1132]
	ldr	w3, [x8, #36]
	mov	w2, w4
	bl	copy_cpu
	ldr	w5, [sp, #72]                   // 4-byte Folded Reload
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [sp, #796]
	ldr	w4, [x8, #36]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	x8, [x8, #48]
	cbz	x8, .LBB0_6
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x9, [sp, #96]                   // 8-byte Folded Reload
	ldr	w0, [x9, #36]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	adrp	x8, TANH
	ldr	w2, [x8, :lo12:TANH]
	bl	activate_array
	b	.LBB0_7
.LBB0_6:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x9, [sp, #96]                   // 8-byte Folded Reload
	ldr	w0, [x9, #36]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	adrp	x8, LOGISTIC
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	b	.LBB0_7
.LBB0_7:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w0, [x8, #12]
	ldr	w1, [x8, #36]
	ldr	w2, [x8, #24]
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w3, w9, w10
	ldr	w4, [x8, #20]
	bl	weighted_sum_cpu
	ldr	x8, [sp, #96]                   // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #20]
	ldr	w3, [x8, #12]
	mov	w4, #1
	str	w4, [sp, #4]                    // 4-byte Folded Spill
	mov	w2, w4
	bl	copy_cpu
	ldr	x9, [sp, #96]                   // 8-byte Folded Reload
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	ldr	w8, [x9, #40]
	ldr	w10, [x9, #4]
	mul	w10, w8, w10
	ldur	w8, [x29, #-16]
	add	w8, w8, w10
	stur	w8, [x29, #-16]
	ldr	w8, [x9]
	ldr	w10, [x9, #4]
	mul	w10, w8, w10
	ldr	w8, [x9, #20]
	add	w8, w8, w10
	str	w8, [x9, #20]
	sub	x0, x29, #152
	bl	increment_layer
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	add	x0, sp, #1224
	bl	increment_layer
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	add	x0, sp, #1112
	bl	increment_layer
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	add	x0, sp, #1000
	bl	increment_layer
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	add	x0, sp, #888
	bl	increment_layer
	ldr	w1, [sp, #4]                    // 4-byte Folded Reload
	add	x0, sp, #776
	bl	increment_layer
	b	.LBB0_8
.LBB0_8:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	.LBB0_3
.LBB0_9:
	add	sp, sp, #1488
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	forward_gru_layer, .Lfunc_end0-forward_gru_layer
                                        // -- End function
	.type	LOGISTIC,@object                // @LOGISTIC
	.bss
	.globl	LOGISTIC
	.p2align	2
LOGISTIC:
	.word	0                               // 0x0
	.size	LOGISTIC, 4
	.type	TANH,@object                    // @TANH
	.globl	TANH
	.p2align	2
TANH:
	.word	0                               // 0x0
	.size	TANH, 4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym fill_cpu
	.addrsig_sym copy_cpu
	.addrsig_sym forward_connected_layer
	.addrsig_sym axpy_cpu
	.addrsig_sym activate_array
	.addrsig_sym mul_cpu
	.addrsig_sym weighted_sum_cpu
	.addrsig_sym increment_layer
	.addrsig_sym LOGISTIC
	.addrsig_sym TANH