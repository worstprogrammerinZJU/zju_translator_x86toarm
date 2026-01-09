main:
	mov	x12, 40048
	sub	sp, sp, x12
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 32768
	str	wzr, [x0, 7260]
	add	x0, sp, 36864
	add	x0, x0, 3156
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 32768
	str	wzr, [x0, 7276]
	b	.L2
	add	x0, sp, 32768
	str	wzr, [x0, 7272]
	b	.L3
	add	x2, sp, 16
	add	x0, sp, 32768
	ldrsw	x3, [x0, 7272]
	add	x0, sp, 32768
	ldrsw	x1, [x0, 7276]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	lsl	x0, x0, 2
	add	x0, x2, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 32768
	ldr	w0, [x0, 7272]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7272]
	add	x0, sp, 32768
	ldr	w0, [x0, 7252]
	add	x1, sp, 32768
	ldr	w1, [x1, 7272]
	cmp	w1, w0
	blt	.L4
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	add	x0, sp, 32768
	ldr	w0, [x0, 7252]
	add	x1, sp, 32768
	ldr	w1, [x1, 7276]
	cmp	w1, w0
	blt	.L5
	add	x0, sp, 32768
	str	wzr, [x0, 7276]
	b	.L6
	add	x0, sp, 32768
	str	wzr, [x0, 7272]
	b	.L7
	add	x0, sp, 32768
	str	wzr, [x0, 7256]
	add	x0, sp, 32768
	str	wzr, [x0, 7268]
	b	.L8
	add	x0, sp, 32768
	str	wzr, [x0, 7264]
	b	.L9
	add	x0, sp, 32768
	ldr	w1, [x0, 7264]
	add	x0, sp, 32768
	ldr	w0, [x0, 7272]
	add	w0, w1, w0
	add	x1, sp, 32768
	ldrsw	x2, [x1, 7268]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	add	x1, sp, 32768
	ldr	w1, [x1, 7256]
	add	w0, w1, w0
	add	x1, sp, 32768
	str	w0, [x1, 7256]
	add	x0, sp, 32768
	ldr	w0, [x0, 7264]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7264]
	add	x0, sp, 32768
	ldr	w1, [x0, 7264]
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	cmp	w1, w0
	ble	.L10
	add	x0, sp, 32768
	ldr	w1, [x0, 7256]
	add	x0, sp, 32768
	ldr	w0, [x0, 7260]
	cmp	w1, w0
	ble	.L11
	add	x0, sp, 32768
	ldr	w0, [x0, 7256]
	add	x1, sp, 32768
	str	w0, [x1, 7260]
	add	x0, sp, 32768
	ldr	w0, [x0, 7256]
	cmp	w0, 0
	bge	.L12
	add	x0, sp, 32768
	str	wzr, [x0, 7256]
	add	x0, sp, 32768
	ldr	w0, [x0, 7268]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7268]
	add	x0, sp, 32768
	ldr	w0, [x0, 7252]
	add	x1, sp, 32768
	ldr	w1, [x1, 7268]
	cmp	w1, w0
	blt	.L13
	add	x0, sp, 32768
	ldr	w0, [x0, 7272]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7272]
	add	x0, sp, 32768
	ldr	w1, [x0, 7252]
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	sub	w0, w1, w0
	add	x1, sp, 32768
	ldr	w1, [x1, 7272]
	cmp	w1, w0
	blt	.L14
	add	x0, sp, 32768
	ldr	w0, [x0, 7276]
	add	w0, w0, 1
	add	x1, sp, 32768
	str	w0, [x1, 7276]
	add	x0, sp, 32768
	ldr	w0, [x0, 7252]
	add	x1, sp, 32768
	ldr	w1, [x1, 7276]
	cmp	w1, w0
	blt	.L15
	add	x0, sp, 32768
	ldr	w1, [x0, 7260]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	mov	x12, 40048
	add	sp, sp, x12
	ret