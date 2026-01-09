cmp:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	d0, [x0]
	str	d0, [sp, 24]
	ldr	x0, [sp]
	ldr	d0, [x0]
	str	d0, [sp, 16]
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bmi	.L7
	b	.L9
	mov	w0, 1
	b	.L4
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bgt	.L8
	b	.L10
	mov	w0, -1
	b	.L4
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	sub	sp, sp, #832
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 824
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 828]
	b	.L12
	add	x1, sp, 24
	ldrsw	x0, [sp, 828]
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 828]
	add	w0, w0, 1
	str	w0, [sp, 828]
	ldr	w0, [sp, 824]
	ldr	w1, [sp, 828]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 824]
	sxtw	x1, w0
	add	x4, sp, 24
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 8
	mov	x0, x4
	bl	qsort
	mov	w0, 1
	str	w0, [sp, 828]
	b	.L14
	ldr	d1, [sp, 24]
	ldrsw	x0, [sp, 828]
	lsl	x0, x0, 3
	add	x1, sp, 24
	ldr	d0, [x1, x0]
	fmul	d0, d1, d0
	bl	sqrt
	fadd	d0, d0, d0
	str	d0, [sp, 24]
	ldr	w0, [sp, 828]
	add	w0, w0, 1
	str	w0, [sp, 828]
	ldr	w0, [sp, 824]
	ldr	w1, [sp, 828]
	cmp	w1, w0
	blt	.L15
	ldr	d0, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 832
	ret