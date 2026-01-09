main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	ldr	w0, [sp, 16]
	cmp	w0, 2
	bne	.L3
	add	x2, sp, 20
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 24]
	mul	w1, w1, w0
	ldr	w2, [sp, 28]
	ldr	w0, [sp, 20]
	mul	w0, w2, w0
	lsl	w0, w0, 2
	cmp	w1, w0
	blt	.L4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L2
	ldr	w0, [sp, 16]
	cmp	w0, 2
	ble	.L5
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L7
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	ldr	w0, [sp, 16]
	sub	w0, w0, #1
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	cmp	w0, 0
	bge	.L8
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret