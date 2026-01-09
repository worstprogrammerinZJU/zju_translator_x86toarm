main:
	mov	x12, 40048
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	mov	w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7268]
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	add	x1, sp, 32768
	str	w0, [x1, 7264]
	mov	w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	b	.L2
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L3
	add	x0, sp, 32768
	ldr	w0, [x0, 7264]
	sub	w1, w0, #1
	add	x2, sp, 32768
	str	w1, [x2, 7264]
	ldr	w2, [sp, 24]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	b	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 7268]
	add	w1, w0, 1
	add	x2, sp, 32768
	str	w1, [x2, 7268]
	ldr	w2, [sp, 24]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	ldr	w0, [sp, 28]
	add	x1, sp, 32768
	ldr	w1, [x1, 7276]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	add	x1, sp, 32768
	ldr	w1, [x1, 7268]
	cmp	w1, w0
	bne	.L6
	ldr	w0, [sp, 32]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L7
	ldr	w0, [sp, 24]
	add	x1, sp, 32768
	ldr	w1, [x1, 7268]
	cmp	w1, w0
	ble	.L8
	mov	w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	b	.L9
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7272]
	b	.L10
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7276]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7272]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	cmp	w1, w0
	bge	.L11
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7276]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	str	w0, [x1, 7264]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7272]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7276]
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7272]
	lsl	x0, x0, 2
	add	x1, sp, 32
	add	x2, sp, 32768
	ldr	w2, [x2, 7264]
	str	w2, [x1, x0]
	add	x0, sp, 32768
	ldr	w0, [x0, 7272]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7272]
	add	x0, sp, 32768
	ldr	w1, [x0, 7272]
	add	x0, sp, 32768
	ldr	w0, [x0, 7268]
	cmp	w1, w0
	blt	.L12
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	ldr	w0, [sp, 24]
	add	x1, sp, 32768
	ldr	w1, [x1, 7268]
	sub	w0, w1, w0
	add	x1, sp, 32768
	ldr	w1, [x1, 7276]
	cmp	w1, w0
	ble	.L13
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L7
	add	x0, sp, 32768
	ldr	w0, [x0, 7268]
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	b	.L14
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7272]
	b	.L15
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7276]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w1, [x1, x0]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7272]
	lsl	x0, x0, 2
	add	x2, sp, 32
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L16
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7276]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	str	w0, [x1, 7264]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7272]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [x1, x0]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7276]
	lsl	x0, x0, 2
	add	x1, sp, 32
	str	w2, [x1, x0]
	add	x0, sp, 32768
	ldrsw	x0, [x0, 7272]
	lsl	x0, x0, 2
	add	x1, sp, 32
	add	x2, sp, 32768
	ldr	w2, [x2, 7264]
	str	w2, [x1, x0]
	add	x0, sp, 32768
	ldr	w0, [x0, 7272]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7272]
	ldr	w0, [sp, 28]
	add	x1, sp, 32768
	ldr	w1, [x1, 7272]
	cmp	w1, w0
	blt	.L17
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	ldr	w0, [sp, 24]
	add	x1, sp, 32768
	ldr	w1, [x1, 7276]
	cmp	w1, w0
	blt	.L18
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 40048
	add	sp, sp, x12
	ret