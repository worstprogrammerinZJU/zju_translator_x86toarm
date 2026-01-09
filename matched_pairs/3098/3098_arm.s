numofword:
un:
po:
ne:
unsi:
posi:
neti:
id:
word:
str:
flag:
_Z6searchv:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 28]
	b	.L2
	str	wzr, [sp, 24]
	b	.L3
	adrp	x0, unsi
	add	x0, x0, :lo12:unsi
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, flag
	add	x3, x0, :lo12:flag
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 1
	beq	.L21
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, un
	add	x0, x0, :lo12:un
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L6
	b	.L5
	nop
	adrp	x0, un
	add	x0, x0, :lo12:un
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L7
	adrp	x0, un
	add	x0, x0, :lo12:un
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L22
	str	wzr, [sp, 24]
	b	.L9
	adrp	x0, posi
	add	x0, x0, :lo12:posi
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, flag
	add	x3, x0, :lo12:flag
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	beq	.L23
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, po
	add	x0, x0, :lo12:po
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L12
	b	.L11
	nop
	adrp	x0, po
	add	x0, x0, :lo12:po
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L24
	str	wzr, [sp, 24]
	b	.L14
	adrp	x0, neti
	add	x0, x0, :lo12:neti
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, flag
	add	x3, x0, :lo12:flag
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 1
	beq	.L25
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, ne
	add	x0, x0, :lo12:ne
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L17
	b	.L16
	nop
	adrp	x0, ne
	add	x0, x0, :lo12:ne
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L26
	adrp	x0, id
	add	x0, x0, :lo12:id
	ldr	w0, [x0]
	cmn	w0, #1
	beq	.L19
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x2, x0, x1
	adrp	x0, id
	add	x0, x0, :lo12:id
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bge	.L8
	adrp	x0, id
	add	x0, x0, :lo12:id
	ldr	w1, [sp, 28]
	str	w1, [x0]
	b	.L8
	nop
	b	.L8
	nop
	b	.L8
	nop
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L20
	nop
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, word
	add	x1, x0, :lo12:word
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L28
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	str	wzr, [x0]
	mov	x2, 2860
	mov	w1, 0
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	bl	memset
	b	.L29
	str	wzr, [sp, 28]
	b	.L30
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	ldr	w4, [x0]
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	ldr	w1, [x0]
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 28]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	sub	w1, w0, #97
	adrp	x0, flag
	add	x3, x0, :lo12:flag
	sxtw	x2, w1
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	ldr	w1, [x0]
	adrp	x0, word
	add	x3, x0, :lo12:word
	ldrsw	x2, [sp, 28]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L31
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	str	w1, [x0]
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, numofword
	add	x0, x0, :lo12:numofword
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x2, x0, x1
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L32
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L33
	str	wzr, [sp, 28]
	adrp	x0, id
	add	x0, x0, :lo12:id
	mov	w1, -1
	str	w1, [x0]
	b	.L34
	adrp	x0, un
	add	x0, x0, :lo12:un
	str	wzr, [x0]
	adrp	x0, po
	add	x0, x0, :lo12:po
	str	wzr, [x0]
	adrp	x0, ne
	add	x0, x0, :lo12:ne
	str	wzr, [x0]
	b	.L35
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 43
	bne	.L36
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w2, w0, #97
	adrp	x0, po
	add	x0, x0, :lo12:po
	ldr	w0, [x0]
	add	w3, w0, 1
	adrp	x1, po
	add	x1, x1, :lo12:po
	str	w3, [x1]
	adrp	x1, posi
	add	x1, x1, :lo12:posi
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	b	.L37
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 45
	bne	.L38
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w2, w0, #97
	adrp	x0, ne
	add	x0, x0, :lo12:ne
	ldr	w0, [x0]
	add	w3, w0, 1
	adrp	x1, ne
	add	x1, x1, :lo12:ne
	str	w3, [x1]
	adrp	x1, neti
	add	x1, x1, :lo12:neti
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	b	.L37
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	sub	w2, w0, #97
	adrp	x0, un
	add	x0, x0, :lo12:un
	ldr	w0, [x0]
	add	w3, w0, 1
	adrp	x1, un
	add	x1, x1, :lo12:un
	str	w3, [x1]
	adrp	x1, unsi
	add	x1, x1, :lo12:unsi
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	beq	.L39
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	bne	.L40
	bl	_Z6searchv
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 124
	bne	.L34
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, str
	add	x1, x0, :lo12:str
	ldrsw	x0, [sp, 28]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L41
	adrp	x0, id
	add	x0, x0, :lo12:id
	ldr	w0, [x0]
	cmn	w0, #1
	bne	.L42
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L43
	adrp	x0, id
	add	x0, x0, :lo12:id
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	adrp	x1, word
	add	x1, x1, :lo12:word
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, str
	add	x1, x0, :lo12:str
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, str
	add	x0, x0, :lo12:str
	bl	strcmp
	cmp	w0, 0
	bne	.L44
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	adrp	x0, word
	add	x1, x0, :lo12:word
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, word
	add	x0, x0, :lo12:word
	bl	strcmp
	cmp	w0, 0
	bne	.L45
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret