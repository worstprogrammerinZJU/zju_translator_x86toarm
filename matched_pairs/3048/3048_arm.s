prime:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 28]
	mov	w0, 2
	str	w0, [sp, 24]
	b	.L2
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 24]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 24]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	bl	prime
	str	w0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L8
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	bl	prime
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	str	w0, [sp, 24]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [sp, 24]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret