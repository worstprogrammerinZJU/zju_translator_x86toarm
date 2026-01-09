cude:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	ldr	w1, [sp, 28]
	mul	w0, w1, w0
	str	w0, [sp, 48]
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L2
	ldr	w0, [sp, 60]
	mul	w0, w0, w0
	ldr	w1, [sp, 60]
	mul	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 56]
	b	.L3
	ldr	w0, [sp, 56]
	mul	w1, w0, w0
	ldr	w0, [sp, 56]
	mul	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bge	.L13
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 52]
	b	.L6
	ldr	w0, [sp, 52]
	mul	w1, w0, w0
	ldr	w0, [sp, 52]
	mul	w0, w1, w0
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bne	.L7
	ldr	w4, [sp, 52]
	ldr	w3, [sp, 56]
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 28]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L8
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bgt	.L14
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L10
	b	.L9
	nop
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L11
	b	.L5
	nop
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 28]
	sub	w0, w0, #2
	ldr	w1, [sp, 60]
	cmp	w1, w0
	blt	.L12
	nop
	nop
	ldp	x29, x30, [sp], 64
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 6
	str	w0, [sp, 28]
	b	.L16
	ldr	w0, [sp, 28]
	bl	cude
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret