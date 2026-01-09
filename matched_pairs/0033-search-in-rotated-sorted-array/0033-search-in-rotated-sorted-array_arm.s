findPivotIndex:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	str	wzr, [sp, 28]
	ldr	w0, [sp, 4]
	str	w0, [sp, 24]
	b	.L2
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	add	w0, w0, w1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L3
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	add	x0, x0, 1
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 20]
	b	.L4
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L5
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	sub	x0, x0, #4
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	b	.L4
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L2
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 2
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldr	w1, [x0]
	ldrsw	x0, [sp, 20]
	lsl	x0, x0, 2
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldr	w0, [x0]
	cmp	w1, w0
	blt	.L2
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 4]
	add	sp, sp, 32
	ret
binarySearch:
	sub	sp, sp, #48
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	str	w3, [sp, 12]
	b	.L9
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 20]
	add	w0, w0, w1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bne	.L10
	ldr	w0, [sp, 44]
	b	.L11
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp, 24]
	add	x0, x1, x0
	ldr	w0, [x0]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	ble	.L12
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L9
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 16]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L13
	mov	w0, -1
	add	sp, sp, 48
	ret
search:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	x0, [sp, 24]
	bl	findPivotIndex
	str	w0, [sp, 40]
	ldr	w3, [sp, 16]
	ldr	w2, [sp, 40]
	mov	w1, 0
	ldr	x0, [sp, 24]
	bl	binarySearch
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmn	w0, #1
	beq	.L15
	ldr	w0, [sp, 36]
	b	.L16
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w3, [sp, 16]
	ldr	w2, [sp, 44]
	mov	w1, w0
	ldr	x0, [sp, 24]
	bl	binarySearch
	ldp	x29, x30, [sp], 48
	ret