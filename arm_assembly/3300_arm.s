f:
r:
q:
front:
rear:
ratio:
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
	mov	w0, -1
	b	.L4
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 16]
	fcmpe	d1, d0
	bgt	.L8
	b	.L10
	mov	w0, 1
	b	.L4
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L12
	adrp	x0, r
	add	x1, x0, :lo12:r
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L13
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, front
	add	x0, x0, :lo12:front
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	str	wzr, [sp, 28]
	b	.L15
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 3
	adrp	x0, rear
	add	x0, x0, :lo12:rear
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L16
	adrp	x0, q
	add	x0, x0, :lo12:q
	str	wzr, [x0]
	str	wzr, [sp, 28]
	b	.L17
	str	wzr, [sp, 24]
	b	.L18
	adrp	x0, front
	add	x0, x0, :lo12:front
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	adrp	x0, rear
	add	x0, x0, :lo12:rear
	ldrsw	x1, [sp, 24]
	ldr	d0, [x0, x1, lsl 3]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, q
	add	x1, x1, :lo12:q
	str	w2, [x1]
	fdiv	d0, d1, d0
	adrp	x1, ratio
	add	x1, x1, :lo12:ratio
	sxtw	x0, w0
	str	d0, [x1, x0, lsl 3]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L19
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L20
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 8
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	bl	qsort
	str	xzr, [sp, 16]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L21
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fdiv	d0, d1, d0
	ldr	d1, [sp, 16]
	fcmpe	d1, d0
	bmi	.L27
	b	.L22
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	ldrsw	x1, [sp, 28]
	ldr	d1, [x0, x1, lsl 3]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, ratio
	add	x0, x0, :lo12:ratio
	sxtw	x1, w1
	ldr	d0, [x0, x1, lsl 3]
	fdiv	d0, d1, d0
	str	d0, [sp, 16]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, q
	add	x0, x0, :lo12:q
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L24
	ldr	d0, [sp, 16]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, f
	add	x1, x0, :lo12:f
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, f
	add	x0, x0, :lo12:f
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret