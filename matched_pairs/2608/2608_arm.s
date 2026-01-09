main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 48
	ldr	q0, [x1]
	str	q0, [x0]
	ldr	q0, [x1, 10]
	str	q0, [x0, 10]
	b	.L2
	mov	w0, -1
	strb	w0, [sp, 75]
	str	wzr, [sp, 76]
	b	.L3
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L4
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	ldrb	w1, [sp, 75]
	cmp	w1, w0
	beq	.L4
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	sub	w0, w0, #65
	sxtw	x0, w0
	add	x1, sp, 48
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 75]
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x0, [sp, 76]
	add	x1, sp, 24
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret