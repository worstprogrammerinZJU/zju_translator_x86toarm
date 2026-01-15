	.text
	.globl	forward_lstm_layer              // -- Begin function forward_lstm_layer
	.p2align	2
	.type	forward_lstm_layer,@function
forward_lstm_layer:                     // @forward_lstm_layer
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x28, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	sub	sp, sp, #2352
	sub	x8, x29, #24
	str	x8, [sp, #168]                  // 8-byte Folded Spill
	str	x0, [sp, #192]                  // 8-byte Folded Spill
	str	x1, [sp, #200]                  // 8-byte Folded Spill
	stur	xzr, [x29, #-24]
	stur	xzr, [x29, #-16]
	stur	xzr, [x29, #-8]
	ldr	x8, [x1, #8]
	stur	x8, [x29, #-16]
	ldr	x1, [x0, #112]
	sub	x0, x29, #152
	mov	x2, #120
	str	x2, [sp, #176]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x2, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x0, #104]
	add	x0, sp, #2080
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x2, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x0, #96]
	add	x0, sp, #1960
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x2, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x0, #88]
	add	x0, sp, #1840
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x2, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x0, #80]
	add	x0, sp, #1720
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x2, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x0, #72]
	add	x0, sp, #1600
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x2, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x0, #64]
	add	x0, sp, #1480
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	x2, [sp, #176]                  // 8-byte Folded Reload
	ldr	x1, [x0, #56]
	add	x0, sp, #1360
	bl	memcpy
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldur	w2, [x29, #-100]
	mov	w1, wzr
	str	w1, [sp, #184]                  // 4-byte Folded Spill
	mov	w3, #1
	str	w3, [sp, #188]                  // 4-byte Folded Spill
	bl	fill_cpu
	ldr	w1, [sp, #184]                  // 4-byte Folded Reload
	ldr	w3, [sp, #188]                  // 4-byte Folded Reload
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #2132]
	bl	fill_cpu
	ldr	w1, [sp, #184]                  // 4-byte Folded Reload
	ldr	w3, [sp, #188]                  // 4-byte Folded Reload
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #2012]
	bl	fill_cpu
	ldr	w1, [sp, #184]                  // 4-byte Folded Reload
	ldr	w3, [sp, #188]                  // 4-byte Folded Reload
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1892]
	bl	fill_cpu
	ldr	w1, [sp, #184]                  // 4-byte Folded Reload
	ldr	w3, [sp, #188]                  // 4-byte Folded Reload
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1772]
	bl	fill_cpu
	ldr	w1, [sp, #184]                  // 4-byte Folded Reload
	ldr	w3, [sp, #188]                  // 4-byte Folded Reload
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1652]
	bl	fill_cpu
	ldr	w1, [sp, #184]                  // 4-byte Folded Reload
	ldr	w3, [sp, #188]                  // 4-byte Folded Reload
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1532]
	bl	fill_cpu
	ldr	w1, [sp, #184]                  // 4-byte Folded Reload
	ldr	w3, [sp, #188]                  // 4-byte Folded Reload
	ldr	x0, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x0]
	ldr	w9, [x0, #4]
	mul	w8, w8, w9
	ldr	w9, [x0, #8]
	mul	w0, w8, w9
	ldr	w2, [sp, #1412]
	bl	fill_cpu
	ldr	x1, [sp, #200]                  // 8-byte Folded Reload
	ldr	x8, [x1, #8]
	cbz	x8, .LBB0_2
	b	.LBB0_1
.LBB0_1:
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w9, w9, w10
	ldr	w10, [x8, #8]
	mul	w0, w9, w10
	ldr	w2, [x8, #52]
	mov	w1, wzr
	mov	w3, #1
	bl	fill_cpu
	b	.LBB0_2
.LBB0_2:
	stur	wzr, [x29, #-28]
	b	.LBB0_3
.LBB0_3:                                // =>This Inner Loop Header: Depth=1
	ldr	x9, [sp, #192]                  // 8-byte Folded Reload
	ldur	w8, [x29, #-28]
	ldr	w9, [x9, #8]
	subs	w8, w8, w9
	b.ge	.LBB0_6
	b	.LBB0_4
.LBB0_4:                                //   in Loop: Header=BB0_3 Depth=1
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w8, [x8, #12]
	stur	w8, [x29, #-24]
	add	x0, sp, #1240
	str	x0, [sp, #8]                    // 8-byte Folded Spill
	sub	x1, x29, #152
	str	x1, [sp, #96]                   // 8-byte Folded Spill
	mov	x2, #120
	str	x2, [sp, #64]                   // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #8]                    // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #1216
	str	q0, [sp, #1216]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #1232]
	bl	forward_connected_layer
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	add	x0, sp, #1096
	str	x0, [sp, #16]                   // 8-byte Folded Spill
	add	x1, sp, #2080
	str	x1, [sp, #104]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #16]                   // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #1072
	str	q0, [sp, #1072]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #1088]
	bl	forward_connected_layer
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	add	x0, sp, #952
	str	x0, [sp, #24]                   // 8-byte Folded Spill
	add	x1, sp, #1960
	str	x1, [sp, #112]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #24]                   // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #928
	str	q0, [sp, #928]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #944]
	bl	forward_connected_layer
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	add	x0, sp, #808
	str	x0, [sp, #32]                   // 8-byte Folded Spill
	add	x1, sp, #1840
	str	x1, [sp, #120]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #32]                   // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #784
	str	q0, [sp, #784]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #800]
	bl	forward_connected_layer
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	ldr	x8, [sp, #200]                  // 8-byte Folded Reload
	ldr	w8, [x8]
	stur	w8, [x29, #-24]
	add	x0, sp, #664
	str	x0, [sp, #40]                   // 8-byte Folded Spill
	add	x1, sp, #1720
	str	x1, [sp, #128]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #40]                   // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #640
	str	q0, [sp, #640]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #656]
	bl	forward_connected_layer
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	add	x0, sp, #520
	str	x0, [sp, #48]                   // 8-byte Folded Spill
	add	x1, sp, #1600
	str	x1, [sp, #136]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #48]                   // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #496
	str	q0, [sp, #496]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #512]
	bl	forward_connected_layer
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	add	x0, sp, #376
	str	x0, [sp, #56]                   // 8-byte Folded Spill
	add	x1, sp, #1480
	str	x1, [sp, #144]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #56]                   // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #352
	str	q0, [sp, #352]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #368]
	bl	forward_connected_layer
	ldr	x2, [sp, #64]                   // 8-byte Folded Reload
	add	x0, sp, #232
	str	x0, [sp, #72]                   // 8-byte Folded Spill
	add	x1, sp, #1360
	str	x1, [sp, #160]                  // 8-byte Folded Spill
	bl	memcpy
	ldr	x0, [sp, #72]                   // 8-byte Folded Reload
	ldr	x8, [sp, #168]                  // 8-byte Folded Reload
	ldr	q0, [x8]
	add	x1, sp, #208
	str	q0, [sp, #208]
	ldur	x8, [x29, #-8]
	str	x8, [sp, #224]
	bl	forward_connected_layer
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldur	w1, [x29, #-136]
	ldr	w3, [x8, #20]
	mov	w4, #1
	str	w4, [sp, #156]                  // 4-byte Folded Spill
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w5, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [sp, #1736]
	ldr	w4, [x8, #20]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [sp, #2096]
	ldr	w3, [x8, #24]
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w5, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [sp, #1616]
	ldr	w4, [x8, #24]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [sp, #1976]
	ldr	w3, [x8, #28]
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w5, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [sp, #1496]
	ldr	w4, [x8, #28]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [sp, #1856]
	ldr	w3, [x8, #32]
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w5, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [sp, #1376]
	ldr	w4, [x8, #32]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x9, [sp, #192]                  // 8-byte Folded Reload
	ldr	w0, [x9, #20]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	adrp	x8, LOGISTIC
	str	x8, [sp, #80]                   // 8-byte Folded Spill
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x10, [sp, #192]                 // 8-byte Folded Reload
	ldr	w0, [x10, #24]
	ldr	w9, [x10]
	ldr	w10, [x10, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	ldr	x9, [sp, #192]                  // 8-byte Folded Reload
	ldr	w0, [x9, #28]
	ldr	w8, [x9]
	ldr	w9, [x9, #4]
	mul	w1, w8, w9
	adrp	x8, TANH
	str	x8, [sp, #88]                   // 8-byte Folded Spill
	ldr	w2, [x8, :lo12:TANH]
	bl	activate_array
	ldr	x8, [sp, #80]                   // 8-byte Folded Reload
	ldr	x10, [sp, #192]                 // 8-byte Folded Reload
	ldr	w0, [x10, #32]
	ldr	w9, [x10]
	ldr	w10, [x10, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, :lo12:LOGISTIC]
	bl	activate_array
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #24]
	ldr	w3, [x8, #36]
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #28]
	ldr	w3, [x8, #36]
	mov	w2, w4
	bl	mul_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #20]
	ldr	w3, [x8, #40]
	mov	w2, w4
	bl	mul_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w5, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w2, [x8, #36]
	ldr	w4, [x8, #40]
	mov	w1, w5
	mov	w3, w5
	bl	axpy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #40]
	ldr	w3, [x8, #12]
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #88]                   // 8-byte Folded Reload
	ldr	x10, [sp, #192]                 // 8-byte Folded Reload
	ldr	w0, [x10, #12]
	ldr	w9, [x10]
	ldr	w10, [x10, #4]
	mul	w1, w9, w10
	ldr	w2, [x8, :lo12:TANH]
	bl	activate_array
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #32]
	ldr	w3, [x8, #12]
	mov	w2, w4
	bl	mul_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #40]
	ldr	w3, [x8, #44]
	mov	w2, w4
	bl	copy_cpu
	ldr	x8, [sp, #192]                  // 8-byte Folded Reload
	ldr	w4, [sp, #156]                  // 4-byte Folded Reload
	ldr	w9, [x8]
	ldr	w10, [x8, #4]
	mul	w0, w9, w10
	ldr	w1, [x8, #12]
	ldr	w3, [x8, #16]
	mov	w2, w4
	bl	copy_cpu
	ldr	x10, [sp, #200]                 // 8-byte Folded Reload
	ldr	x9, [sp, #192]                  // 8-byte Folded Reload
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #96]                   // 8-byte Folded Reload
	ldr	w8, [x9, #48]
	ldr	w11, [x9, #4]
	mul	w11, w8, w11
	ldr	w8, [x10]
	add	w8, w8, w11
	str	w8, [x10]
	ldr	w8, [x9]
	ldr	w10, [x9, #4]
	mul	w10, w8, w10
	ldr	w8, [x9, #16]
	add	w8, w8, w10
	str	w8, [x9, #16]
	ldr	w8, [x9]
	ldr	w10, [x9, #4]
	mul	w10, w8, w10
	ldr	w8, [x9, #44]
	add	w8, w8, w10
	str	w8, [x9, #44]
	bl	increment_layer
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #104]                  // 8-byte Folded Reload
	bl	increment_layer
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #112]                  // 8-byte Folded Reload
	bl	increment_layer
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #120]                  // 8-byte Folded Reload
	bl	increment_layer
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #128]                  // 8-byte Folded Reload
	bl	increment_layer
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #136]                  // 8-byte Folded Reload
	bl	increment_layer
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #144]                  // 8-byte Folded Reload
	bl	increment_layer
	ldr	w1, [sp, #156]                  // 4-byte Folded Reload
	ldr	x0, [sp, #160]                  // 8-byte Folded Reload
	bl	increment_layer
	b	.LBB0_5
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=1
	ldur	w8, [x29, #-28]
	add	w8, w8, #1
	stur	w8, [x29, #-28]
	b	.LBB0_3
.LBB0_6:
	add	sp, sp, #2352
	ldr	x28, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	forward_lstm_layer, .Lfunc_end0-forward_lstm_layer
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
	.addrsig_sym forward_connected_layer
	.addrsig_sym copy_cpu
	.addrsig_sym axpy_cpu
	.addrsig_sym activate_array
	.addrsig_sym mul_cpu
	.addrsig_sym increment_layer
	.addrsig_sym LOGISTIC
	.addrsig_sym TANH