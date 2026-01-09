str:
letter:
flag:
ch:
sym:
lexer:
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	mov	w0, -1
	b	.L3
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 32
	beq	.L5
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 96
	bls	.L6
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 122
	bhi	.L6
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	sub	w1, w0, #97
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	sxtw	x1, w1
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, ch
	add	x1, x1, :lo12:ch
	str	w2, [x1]
	adrp	x1, str
	add	x1, x1, :lo12:str
	sxtw	x0, w0
	ldrb	w0, [x1, x0]
	sub	w0, w0, #97
	b	.L3
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 43
	bne	.L7
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 43
	bne	.L8
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	mov	w0, 26
	b	.L3
	mov	w0, 28
	b	.L3
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 45
	bne	.L9
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w2, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	sxtw	x0, w2
	ldrb	w0, [x1, x0]
	cmp	w0, 45
	bne	.L10
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	w1, [x0]
	mov	w0, 27
	b	.L3
	mov	w0, 29
	b	.L3
	mov	w0, -1
	ret
factor:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 26
	bne	.L12
	bl	lexer
	str	w0, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	b	.L11
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 27
	bne	.L14
	bl	lexer
	str	w0, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	b	.L11
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 0
	blt	.L15
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 25
	bgt	.L15
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	str	w0, [sp, 28]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 26
	bne	.L16
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L17
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 27
	bne	.L17
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	b	.L11
	ldp	x29, x30, [sp], 32
	ret
expression:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	bl	factor
	str	w0, [sp, 28]
	b	.L19
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	str	w0, [sp, 24]
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	bl	factor
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	cmp	w0, 28
	bne	.L20
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 28]
	b	.L19
	ldr	w0, [sp, 24]
	cmp	w0, 29
	bne	.L19
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	ldr	w0, [x0]
	cmp	w0, 0
	bge	.L21
	ldr	w0, [sp, 28]
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L24
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	gets
	str	wzr, [sp, 24]
	b	.L25
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	ldrsw	x1, [sp, 24]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 25
	ble	.L26
	adrp	x0, ch
	add	x0, x0, :lo12:ch
	str	wzr, [x0]
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	bl	lexer
	mov	w1, w0
	adrp	x0, sym
	add	x0, x0, :lo12:sym
	str	w1, [x0]
	bl	expression
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	str	wzr, [sp, 24]
	b	.L27
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L28
	ldr	w0, [sp, 24]
	add	w3, w0, 97
	adrp	x0, letter
	add	x0, x0, :lo12:letter
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	mov	w2, w0
	mov	w1, w3
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 25
	ble	.L29
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L30
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret