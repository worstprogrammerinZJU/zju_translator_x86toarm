main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	str	wzr, [sp, 40]
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L3
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L4
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	lsr	w1, w1, 1
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 28]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	lsl	w0, w0, 1
	cmp	w1, w0
	bls	.L5
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L6
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	udiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 28]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	lsl	w0, w0, 1
	cmp	w1, w0
	bls	.L8
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret