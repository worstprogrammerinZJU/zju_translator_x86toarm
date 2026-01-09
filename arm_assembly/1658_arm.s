main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 60]
	b	.L2
	str	wzr, [sp, 56]
	b	.L3
	add	x1, sp, 24
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 56]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 3
	ble	.L4
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L5
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 52]
	cmp	w1, w0
	bne	.L5
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 52]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L6
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 48]
	mul	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret