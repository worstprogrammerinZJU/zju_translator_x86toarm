main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 24]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L3
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	lsr	w2, w1, 31
	add	w1, w2, w1
	asr	w1, w1, 1
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	mul	w1, w0, w0
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	w0, [sp, 20]
	lsl	w0, w0, 1
	cmp	w1, w0
	ble	.L4
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L5
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	mul	w1, w0, w0
	ldr	w0, [sp, 28]
	add	w1, w1, w0
	ldr	w0, [sp, 20]
	lsl	w0, w0, 1
	cmp	w1, w0
	ble	.L7
	ldr	w1, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret