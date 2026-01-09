partition:
	sub	sp, sp, #48
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	w2, [sp]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 4]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 4]
	str	w0, [sp, 40]
	b	.L2
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 28]
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp]
	cmp	w1, w0
	blt	.L4
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w0, [x0]
	str	w0, [sp, 32]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x1, x1, x0
	ldrsw	x0, [sp, 44]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w1, [x1]
	str	w1, [x0]
	ldrsw	x0, [sp]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [sp, 32]
	str	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	add	sp, sp, 48
	ret
quickSelect:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x0, [sp, 40]
	str	w1, [sp, 36]
	str	w2, [sp, 32]
	str	w3, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bgt	.L7
	ldr	w2, [sp, 32]
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	partition
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L8
	ldrsw	x0, [sp, 60]
	lsl	x0, x0, 2
	ldr	x1, [sp, 40]
	add	x0, x1, x0
	ldr	w0, [x0]
	b	.L9
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L10
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	ldr	w3, [sp, 28]
	mov	w2, w0
	ldr	w1, [sp, 36]
	ldr	x0, [sp, 40]
	bl	quickSelect
	b	.L9
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	ldr	w3, [sp, 28]
	ldr	w2, [sp, 32]
	mov	w1, w0
	ldr	x0, [sp, 40]
	bl	quickSelect
	b	.L9
	mov	w0, -1
	ldp	x29, x30, [sp], 64
	ret
findKthLargest:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	w0, [sp, 20]
	sub	w2, w0, #1
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	mov	w3, w0
	mov	w1, 0
	ldr	x0, [sp, 24]
	bl	quickSelect
	ldp	x29, x30, [sp], 32
	ret