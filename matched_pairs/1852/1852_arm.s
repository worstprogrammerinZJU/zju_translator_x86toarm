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
	add	x1, sp, 20
	add	x0, sp, 16
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 32]
	str	wzr, [sp, 36]
	str	wzr, [sp, 40]
	b	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	lsl	w1, w0, 1
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L4
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	b	.L5
	ldr	w0, [sp, 24]
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 24]
	str	w0, [sp, 32]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L7
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L8
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 32]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret