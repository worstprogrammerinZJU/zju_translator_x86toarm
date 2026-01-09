gx:
gy:
dx:
dy:
x:
y:
dist:
	sub	sp, sp, #32
	str	d0, [sp, 24]
	str	d1, [sp, 16]
	str	d2, [sp, 8]
	str	d3, [sp]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 8]
	fsub	d1, d1, d0
	ldr	d2, [sp, 24]
	ldr	d0, [sp, 8]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	d2, [sp, 16]
	ldr	d0, [sp]
	fsub	d2, d2, d0
	ldr	d3, [sp, 16]
	ldr	d0, [sp]
	fsub	d0, d3, d0
	fmul	d0, d2, d0
	fadd	d0, d1, d0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	wzr, [sp, 44]
	adrp	x0, dy
	add	x4, x0, :lo12:dy
	adrp	x0, dx
	add	x3, x0, :lo12:dx
	adrp	x0, gy
	add	x2, x0, :lo12:gy
	adrp	x0, gx
	add	x1, x0, :lo12:gx
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L4
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L4
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d1, [x0]
	adrp	x0, gx
	add	x0, x0, :lo12:gx
	ldr	d2, [x0]
	adrp	x0, gy
	add	x0, x0, :lo12:gy
	ldr	d3, [x0]
	bl	dist
	fmov	d1, d0
	fmov	d0, 4.0e+0
	fmul	d0, d1, d0
	str	d0, [sp, 32]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d1, [x0]
	adrp	x0, dx
	add	x0, x0, :lo12:dx
	ldr	d2, [x0]
	adrp	x0, dy
	add	x0, x0, :lo12:dy
	ldr	d3, [x0]
	bl	dist
	str	d0, [sp, 24]
	ldr	d0, [sp, 24]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	fadd	d0, d0, d1
	ldr	d1, [sp, 32]
	fcmpe	d1, d0
	bmi	.L10
	b	.L4
	mov	w0, 1
	str	w0, [sp, 44]
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldr	d0, [x0]
	str	d0, [sp, 32]
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldr	d0, [x0]
	str	d0, [sp, 24]
	adrp	x0, y
	add	x2, x0, :lo12:y
	adrp	x0, x
	add	x1, x0, :lo12:x
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L8
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 32]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret