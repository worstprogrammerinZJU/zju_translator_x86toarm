str:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	b	.L2
	str	wzr, [sp, 24]
	str	wzr, [sp, 28]
	b	.L3
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L4
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L4
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, str
	add	x2, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x2, x0]
	sub	w0, w0, #64
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L5
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret