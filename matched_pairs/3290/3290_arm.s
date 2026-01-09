str:
pqrst:
KACE:
len:
Len:
N:
Middle:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	cmp	w0, 0
	ble	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L2
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 122
	bhi	.L2
	b	.L3
	mov	w0, 78
	bl	putchar
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, N
	add	x0, x0, :lo12:N
	str	w1, [x0]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	cmp	w0, 0
	bgt	.L4
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	bl	putchar
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	add	w1, w0, 1
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 28]
	lsl	w0, w0, 1
	add	w0, w0, 1
	bl	Middle
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	lsl	w1, w0, 1
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	lsl	w0, w0, 1
	bl	Middle
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L9
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	wzr, [x0]
	adrp	x0, Len
	add	x0, x0, :lo12:Len
	str	wzr, [x0]
	adrp	x0, N
	add	x0, x0, :lo12:N
	str	wzr, [x0]
	str	wzr, [sp, 28]
	b	.L10
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 112
	beq	.L11
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 113
	beq	.L11
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 114
	beq	.L11
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 115
	beq	.L11
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 116
	bne	.L12
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, len
	add	x1, x1, :lo12:len
	str	w2, [x1]
	adrp	x1, str
	add	x2, x1, :lo12:str
	ldrsw	x1, [sp, 28]
	ldrb	w2, [x2, x1]
	adrp	x1, pqrst
	add	x1, x1, :lo12:pqrst
	sxtw	x0, w0
	strb	w2, [x1, x0]
	b	.L13
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 78
	bne	.L14
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, N
	add	x0, x0, :lo12:N
	str	w1, [x0]
	b	.L13
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 75
	beq	.L15
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 65
	beq	.L15
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 67
	beq	.L15
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 69
	bne	.L13
	adrp	x0, Len
	add	x0, x0, :lo12:Len
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, Len
	add	x1, x1, :lo12:Len
	str	w2, [x1]
	adrp	x1, str
	add	x2, x1, :lo12:str
	ldrsw	x1, [sp, 28]
	ldrb	w2, [x2, x1]
	adrp	x1, KACE
	add	x1, x1, :lo12:KACE
	sxtw	x0, w0
	strb	w2, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L16
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L17
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L9
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w1, [x0]
	adrp	x0, Len
	add	x0, x0, :lo12:Len
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L18
	adrp	x0, Len
	add	x0, x0, :lo12:Len
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	b	.L19
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, Len
	add	x0, x0, :lo12:Len
	str	w1, [x0]
	str	wzr, [sp, 28]
	b	.L20
	adrp	x0, KACE
	add	x1, x0, :lo12:KACE
	ldrsw	x0, [sp, 28]
	ldrb	w2, [x1, x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, Len
	add	x0, x0, :lo12:Len
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L21
	str	wzr, [sp, 24]
	b	.L22
	adrp	x0, pqrst
	add	x1, x0, :lo12:pqrst
	ldrsw	x0, [sp, 24]
	ldrb	w2, [x1, x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	strb	w2, [x1, x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L23
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w1, [x0]
	adrp	x0, Len
	add	x0, x0, :lo12:Len
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, len
	add	x0, x0, :lo12:len
	str	w1, [x0]
	adrp	x0, len
	add	x0, x0, :lo12:len
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	strb	wzr, [x1, x0]
	mov	w0, 0
	bl	Middle
	mov	w0, 10
	bl	putchar
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret