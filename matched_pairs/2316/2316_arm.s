main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 44]
	b	.L3
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	ldrb	w1, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x2, sp, 16
	ldrb	w0, [x2, x0]
	add	w0, w1, w0
	and	w0, w0, 255
	sub	w0, w0, #48
	and	w2, w0, 255
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	cmp	w0, 57
	bls	.L4
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	ldrb	w0, [x1, x0]
	sub	w0, w0, #10
	and	w2, w0, 255
	ldrsw	x0, [sp, 44]
	add	x1, sp, 32
	strb	w2, [x1, x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x0, [sp, 44]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L6
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret