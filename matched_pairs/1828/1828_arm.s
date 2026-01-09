point:
cmp:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	x0, [sp]
	ldr	x0, [x0]
	str	x0, [sp, 16]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	bge	.L2
	mov	w0, 1
	b	.L7
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L4
	mov	w0, -1
	b	.L7
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	bge	.L5
	mov	w0, 1
	b	.L7
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	ble	.L6
	mov	w0, -1
	b	.L7
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L9
	str	wzr, [sp, 28]
	b	.L10
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, point
	add	x0, x0, :lo12:point
	add	x3, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, point
	add	x0, x0, :lo12:point
	add	x0, x1, x0
	add	x0, x0, 4
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L11
	ldr	w0, [sp, 16]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 8
	adrp	x0, point
	add	x0, x0, :lo12:point
	bl	qsort
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldr	w0, [x0, 4]
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L12
	adrp	x0, point
	add	x1, x0, :lo12:point
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L13
	adrp	x0, point
	add	x1, x0, :lo12:point
	ldrsw	x0, [sp, 28]
	lsl	x0, x0, 3
	add	x0, x1, x0
	ldr	w0, [x0, 4]
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	ldr	w1, [sp, 20]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret