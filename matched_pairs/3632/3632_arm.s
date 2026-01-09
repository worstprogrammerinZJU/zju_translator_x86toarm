main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, -1
	str	w0, [sp, 36]
	mov	w0, 100
	str	w0, [sp, 32]
	str	wzr, [sp, 40]
	b	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 24]
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L6
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	lsl	w0, w0, 1
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret