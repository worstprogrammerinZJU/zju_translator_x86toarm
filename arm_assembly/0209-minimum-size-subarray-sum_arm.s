min:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	ldr	w2, [sp, 8]
	ldr	w1, [sp, 8]
	cmp	w2, w0
	csel	w0, w1, w0, le
	add	sp, sp, 16
	ret
minSubArrayLen:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	x1, [sp, 16]
	str	w2, [sp, 24]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	str	wzr, [sp, 32]
	b	.L4
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L7
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	min
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 16]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret