min:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L2
	ldr	w0, [sp, 8]
	b	.L3
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	ret
max:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 12]
	b	.L6
	ldr	w0, [sp, 8]
	add	sp, sp, 16
	ret
maxProfit:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L8
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	min
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	ldr	w1, [sp, 40]
	bl	max
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 40]
	ldp	x29, x30, [sp], 48
	ret