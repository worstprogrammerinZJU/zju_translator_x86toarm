str:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	b	.L2
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	str	w0, [sp, 32]
	str	wzr, [sp, 44]
	b	.L3
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L4
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 44]
	ldrb	w1, [x1, x0]
	adrp	x0, str
	add	x2, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L5
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 36]
	b	.L6
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 36]
	ldrb	w1, [x1, x0]
	ldr	w2, [sp, 36]
	ldr	w0, [sp, 28]
	add	w3, w2, w0
	adrp	x0, str
	add	x2, x0, :lo12:str
	sxtw	x0, w3
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	beq	.L19
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bgt	.L9
	b	.L8
	nop
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bgt	.L20
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L11
	b	.L10
	nop
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L14
	b	.L13
	nop
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L15
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L16
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L17
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret