main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	mov	w0, -1001
	str	w0, [sp, 60]
	str	wzr, [sp, 56]
	mov	w0, -1001
	str	w0, [sp, 40]
	mov	w0, -1001
	str	w0, [sp, 36]
	str	wzr, [sp, 44]
	b	.L3
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 40]
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	str	w0, [sp, 40]
	b	.L5
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 28]
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 52]
	add	w0, w1, w0
	str	w0, [sp, 52]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 48]
	add	w0, w1, w0
	str	w0, [sp, 48]
	ldr	w0, [sp, 48]
	cmp	w0, 0
	ble	.L6
	str	wzr, [sp, 48]
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 48]
	str	w0, [sp, 56]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	ldr	w1, [sp, 60]
	cmp	w1, w0
	bge	.L8
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	sub	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bgt	.L9
	str	wzr, [sp, 52]
	str	wzr, [sp, 48]
	str	wzr, [sp, 56]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 60]
	cmp	w0, 0
	beq	.L11
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L12
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret