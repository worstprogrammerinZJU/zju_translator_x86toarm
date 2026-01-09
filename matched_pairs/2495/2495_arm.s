main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	add	x3, sp, 24
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	str	w0, [sp, 36]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	str	w0, [sp, 28]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L3
	str	wzr, [sp, 36]
	b	.L4
	mov	w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	mov	w2, w0
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret