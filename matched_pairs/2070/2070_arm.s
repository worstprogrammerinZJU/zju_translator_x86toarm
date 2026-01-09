main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 28]
	add	x2, sp, 16
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	s0, [sp, 24]
	fcmp	s0, #0.0
	beq	.L19
	ldr	s1, [sp, 24]
	fmov	s0, 4.5e+0
	fcmpe	s1, s0
	bls	.L15
	b	.L4
	ldr	w0, [sp, 20]
	cmp	w0, 149
	ble	.L4
	ldr	w0, [sp, 16]
	cmp	w0, 199
	ble	.L4
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	s1, [sp, 24]
	fmov	s0, 6.0e+0
	fcmpe	s1, s0
	bls	.L16
	b	.L6
	ldr	w0, [sp, 20]
	cmp	w0, 299
	ble	.L6
	ldr	w0, [sp, 16]
	cmp	w0, 499
	ble	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L8
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	s1, [sp, 24]
	fmov	s0, 5.0e+0
	fcmpe	s1, s0
	bls	.L17
	b	.L9
	ldr	w0, [sp, 20]
	cmp	w0, 199
	ble	.L9
	ldr	w0, [sp, 16]
	cmp	w0, 299
	ble	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 1
	str	w0, [sp, 28]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L12
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	b	.L13
	nop
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret