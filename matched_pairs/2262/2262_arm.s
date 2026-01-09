prime:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L3
	mov	w0, 0
	b	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	mul	w0, w0, w0
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L5
	mov	w0, 1
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L7
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L8
	ldr	w0, [sp, 28]
	bl	prime
	cmp	w0, 0
	beq	.L9
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	bl	prime
	cmp	w0, 0
	beq	.L9
	ldr	w4, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	mov	w3, w0
	ldr	w2, [sp, 28]
	mov	w1, w4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L10
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	cmp	w0, w1
	ble	.L11
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret