main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 40
	movi	v0.4s, 0
	stp	q0, q0, [x0]
	str	q0, [x0, 28]
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	bl	getchar
	add	x0, sp, 16
	bl	gets
	add	x2, sp, 16
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 88]
	str	w0, [sp, 92]
	b	.L4
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmp	w0, 10
	ble	.L5
	b	.L6
	add	x2, sp, 16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L8
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 40
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 88]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	ble	.L9
	b	.L6
	ldr	w0, [sp, 88]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 40
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L10
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L11
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L12
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 2
	add	x1, sp, 40
	str	wzr, [x1, x0]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmp	w0, 10
	ble	.L13
	add	x0, sp, 88
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret