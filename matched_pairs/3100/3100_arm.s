pow:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	mul	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
	mov	w0, 1
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L7
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	pow
	str	w0, [sp, 36]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	sub	w1, w1, w0
	ldr	w2, [sp, 32]
	ldr	w0, [sp, 40]
	sub	w0, w2, w0
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret