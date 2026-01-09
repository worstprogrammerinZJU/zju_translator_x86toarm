point:
	sub	sp, sp, #16
	str	d0, [sp, 8]
	ldr	d1, [sp, 8]
	fmov	d0, 3.0e+0
	fcmpe	d1, d0
	bls	.L13
	b	.L18
	mov	w0, 100
	b	.L4
	ldr	d1, [sp, 8]
	fmov	d0, 6.0e+0
	fcmpe	d1, d0
	bls	.L14
	b	.L19
	mov	w0, 80
	b	.L4
	ldr	d1, [sp, 8]
	fmov	d0, 9.0e+0
	fcmpe	d1, d0
	bls	.L15
	b	.L20
	mov	w0, 60
	b	.L4
	ldr	d1, [sp, 8]
	fmov	d0, 1.2e+1
	fcmpe	d1, d0
	bls	.L16
	b	.L21
	mov	w0, 40
	b	.L4
	ldr	d1, [sp, 8]
	fmov	d0, 1.5e+1
	fcmpe	d1, d0
	bls	.L17
	b	.L22
	mov	w0, 20
	b	.L4
	mov	w0, 0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L24
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	point
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
	str	wzr, [sp, 52]
	b	.L25
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	point
	mov	w1, w0
	ldr	w0, [sp, 60]
	add	w0, w0, w1
	str	w0, [sp, 60]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 1
	ble	.L26
	str	wzr, [sp, 52]
	b	.L27
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 24]
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	point
	mov	w1, w0
	ldr	w0, [sp, 56]
	add	w0, w0, w1
	str	w0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 2
	ble	.L28
	ldr	w2, [sp, 56]
	ldr	w1, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L29
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L30
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L31
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L30
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	d0, [sp, 32]
	mov	x0, -4586634745500139520
	fmov	d1, x0
	fcmp	d0, d1
	bne	.L32
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret