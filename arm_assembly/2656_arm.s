main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	mov	w0, -1
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L3
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L4
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 36]
	cmp	w0, 8
	bgt	.L6
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L7
	ldr	w1, [sp, 40]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret