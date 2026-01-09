main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	str	wzr, [sp, 44]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 40
	str	w0, [sp, 44]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 44]
	add	w0, w0, 40
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 40
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	ldr	w1, [sp, 44]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w0, w0, w1
	add	w0, w0, 1080
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x3, sp, 28
	add	x2, sp, 32
	add	x1, sp, 36
	add	x0, sp, 40
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L7
	mov	w0, 1
	b	.L8
	mov	w0, 0
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret