str:
qu:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 24]
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 63
	bne	.L3
	adrp	x0, qu
	add	x0, x0, :lo12:qu
	ldr	w1, [sp, 28]
	str	w1, [x0]
	b	.L4
	mov	w1, 10
	ldr	w0, [sp, 28]
	sub	w1, w1, w0
	adrp	x0, str
	add	x2, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x2, x0]
	sub	w0, w0, #48
	mul	w0, w1, w0
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 8
	ble	.L5
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0, 9]
	cmp	w0, 63
	bne	.L6
	adrp	x0, qu
	add	x0, x0, :lo12:qu
	mov	w1, 9
	str	w1, [x0]
	b	.L7
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0, 9]
	cmp	w0, 88
	bne	.L8
	ldr	w0, [sp, 24]
	add	w0, w0, 10
	str	w0, [sp, 24]
	b	.L7
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0, 9]
	sub	w0, w0, #48
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L9
	adrp	x0, qu
	add	x0, x0, :lo12:qu
	ldr	w0, [x0]
	mov	w1, 10
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	mul	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	mov	w0, 41705
	movk	w0, 0x2e8b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 1
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 11
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	beq	.L17
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L12
	b	.L11
	nop
	ldr	w0, [sp, 28]
	cmp	w0, 9
	bgt	.L13
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L14
	ldr	w0, [sp, 24]
	add	w1, w0, 10
	mov	w0, 41705
	movk	w0, 0x2e8b, lsl 16
	smull	x0, w1, w0
	lsr	x0, x0, 32
	asr	w2, w0, 1
	asr	w0, w1, 31
	sub	w0, w2, w0
	mov	w2, 11
	mul	w0, w0, w2
	sub	w0, w1, w0
	cmp	w0, 0
	bne	.L15
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L14
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret