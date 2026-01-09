line:
str:
len:
makeline:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	str	w0, [sp, 28]
	b	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	strcat
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	strcat
	adrp	x0, line
	add	x0, x0, :lo12:line
	bl	strlen
	mov	w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w2, [x0]
	adrp	x0, line
	add	x1, x0, :lo12:line
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	mov	w0, -1
	b	.L4
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	str	w0, [sp, 28]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	cmp	w0, 75
	ble	.L5
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w2, [x0]
	adrp	x0, line
	add	x1, x0, :lo12:line
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	mov	w0, 1
	ldp	x29, x30, [sp], 32
	ret
left:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, line
	add	x1, x0, :lo12:line
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	nop
	ldp	x29, x30, [sp], 16
	ret
right:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	mov	w1, 75
	sub	w0, w1, w0
	str	w0, [sp, 28]
	b	.L8
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L9
	adrp	x0, line
	add	x1, x0, :lo12:line
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	nop
	ldp	x29, x30, [sp], 32
	ret
center:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	mov	w1, 75
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L11
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L12
	adrp	x0, line
	add	x1, x0, :lo12:line
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	str	wzr, [sp, 28]
	b	.L13
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L14
	mov	w0, 10
	bl	putchar
	nop
	ldp	x29, x30, [sp], 32
	ret
justify:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	mov	w1, 75
	sub	w0, w1, w0
	str	w0, [sp, 24]
	str	wzr, [sp, 20]
	str	wzr, [sp, 28]
	b	.L16
	adrp	x0, line
	add	x1, x0, :lo12:line
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L17
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L19
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 20]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L20
	adrp	x0, line
	add	x1, x0, :lo12:line
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	bne	.L21
	str	wzr, [sp, 20]
	b	.L22
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L21
	mov	w0, 32
	bl	putchar
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	adrp	x0, line
	add	x1, x0, :lo12:line
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L24
	mov	w0, 10
	bl	putchar
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0]
	cmp	w0, 76
	bne	.L26
	str	wzr, [sp, 28]
	b	.L27
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0]
	cmp	w0, 82
	bne	.L28
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L27
	adrp	x0, str
	add	x0, x0, :lo12:str
	ldrb	w0, [x0]
	cmp	w0, 67
	bne	.L29
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L27
	mov	w0, 3
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	b	.L30
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L31
	bl	left
	b	.L32
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L33
	bl	right
	b	.L32
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L34
	bl	center
	b	.L32
	bl	justify
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	wzr, [x0]
	adrp	x0, line
	add	x0, x0, :lo12:line
	strb	wzr, [x0]
	bl	makeline
	cmp	w0, 1
	beq	.L35
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L36
	bl	left
	b	.L37
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L38
	bl	right
	b	.L37
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L39
	bl	center
	b	.L37
	bl	left
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret