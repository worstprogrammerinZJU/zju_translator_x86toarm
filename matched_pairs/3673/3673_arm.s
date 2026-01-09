s:
t:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 20]
	adrp	x0, t
	add	x2, x0, :lo12:t
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	str	wzr, [sp, 24]
	b	.L3
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w1, w0, #48
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x2, x0]
	sub	w0, w0, #48
	mul	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 20]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret