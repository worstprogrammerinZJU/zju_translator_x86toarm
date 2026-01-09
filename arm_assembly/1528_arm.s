main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	ldr	w0, [sp, 16]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	mov	w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	add	w0, w0, 3
	str	w0, [sp, 28]
	b	.L4
	mov	w0, 2
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 28]
	mov	w0, 3
	str	w0, [sp, 20]
	b	.L5
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	mul	w1, w0, w0
	ldr	w0, [sp, 16]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 16]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 16]
	cmp	w0, 1
	bne	.L8
	str	wzr, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bne	.L9
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L10
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L11
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	b	.L10
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bne	.L12
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret