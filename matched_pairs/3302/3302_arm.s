s:
t:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	adrp	x0, t
	add	x2, x0, :lo12:t
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	b	.L3
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w1, [x1, x0]
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L5
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L6
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L8
	str	wzr, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L9
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 24]
	ldrb	w1, [x1, x0]
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L10
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	blt	.L11
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L12
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 20]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L13
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L8
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret