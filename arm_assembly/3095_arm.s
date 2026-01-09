len:
str:
left:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	bne	.L3
	mov	w0, 100
	b	.L4
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	beq	.L5
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 92
	bne	.L6
	mov	w0, 0
	b	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L7
	mov	w0, 100
	add	sp, sp, 32
	ret
right:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L9
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	bne	.L10
	mov	w0, 100
	b	.L11
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	beq	.L12
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 47
	bne	.L13
	mov	w0, 0
	b	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	mov	w0, 100
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	b	.L16
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strlen
	mov	w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	b	.L17
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 46
	bne	.L18
	ldr	w0, [sp, 44]
	add	w0, w0, 100
	str	w0, [sp, 44]
	b	.L19
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 47
	bne	.L20
	ldr	w0, [sp, 40]
	bl	left
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	b	.L19
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 92
	bne	.L21
	ldr	w0, [sp, 40]
	bl	right
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	b	.L19
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 40]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	bne	.L19
	ldr	w0, [sp, 40]
	bl	left
	mov	w19, w0
	ldr	w0, [sp, 40]
	bl	right
	add	w0, w19, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L22
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	sdiv	w0, w1, w0
	mov	w1, w0
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
	bne	.L23
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
	ret