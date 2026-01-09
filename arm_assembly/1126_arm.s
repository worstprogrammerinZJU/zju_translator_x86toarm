str:
sentence:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 111
	bls	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 122
	bhi	.L2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	b	.L3
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	bl	sentence
	b	.L3
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 67
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 68
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 69
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 73
	bne	.L6
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	bl	sentence
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	blt	.L7
	ldr	w0, [sp, 44]
	bl	sentence
	b	.L3
	mov	w0, -1
	b	.L3
	mov	w0, -1
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L9
	mov	w0, 0
	bl	sentence
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L10
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L10
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L9
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret