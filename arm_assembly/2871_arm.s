main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x1, sp, 16
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	d1, [sp, 16]
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	d0, [sp, 16]
	str	d0, [sp, 24]
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	d0, [sp, 16]
	mov	x0, 61572651155456
	movk	x0, 0x408f, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fcmpe	d0, d1
	bgt	.L3
	ldr	d0, [sp, 16]
	mov	x0, 61572651155456
	movk	x0, 0x408f, lsl 48
	fmov	d1, x0
	fsub	d0, d0, d1
	adrp	x0, .LC5
	ldr	d1, [x0, #:lo12:.LC5]
	fcmpe	d0, d1
	bmi	.L3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret