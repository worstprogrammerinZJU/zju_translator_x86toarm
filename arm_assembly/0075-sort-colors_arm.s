swap:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 4]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
	nop
	add	sp, sp, 32
	ret
sortColors:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	wzr, [sp, 44]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	str	wzr, [sp, 36]
	b	.L3
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 2
	bne	.L4
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 24]
	bl	swap
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	b	.L3
	ldrsw	x0, [sp, 36]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	mov	w2, w0
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 24]
	bl	swap
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L6
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret