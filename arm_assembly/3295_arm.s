pqrst:
w:
WFF:
_Z3dfsv:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, w
	add	x1, x1, :lo12:w
	str	w2, [x1]
	adrp	x1, WFF
	add	x1, x1, :lo12:WFF
	sxtw	x0, w0
	ldrb	w0, [x1, x0]
	strb	w0, [sp, 31]
	ldrb	w0, [sp, 31]
	cmp	w0, 75
	beq	.L2
	ldrb	w0, [sp, 31]
	cmp	w0, 65
	beq	.L2
	ldrb	w0, [sp, 31]
	cmp	w0, 67
	beq	.L2
	ldrb	w0, [sp, 31]
	cmp	w0, 69
	bne	.L3
	bl	_Z3dfsv
	strb	w0, [sp, 30]
	bl	_Z3dfsv
	strb	w0, [sp, 29]
	ldrb	w0, [sp, 31]
	cmp	w0, 75
	bne	.L4
	ldrb	w0, [sp, 30]
	cmp	w0, 0
	beq	.L5
	ldrb	w0, [sp, 29]
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	b	.L7
	mov	w0, 0
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 65
	bne	.L8
	ldrb	w0, [sp, 30]
	cmp	w0, 0
	bne	.L9
	ldrb	w0, [sp, 29]
	cmp	w0, 0
	beq	.L10
	mov	w0, 1
	b	.L7
	mov	w0, 0
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 67
	bne	.L12
	ldrb	w0, [sp, 30]
	cmp	w0, 1
	bne	.L13
	ldrb	w0, [sp, 29]
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	b	.L7
	mov	w0, 1
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 69
	bne	.L16
	ldrb	w1, [sp, 30]
	ldrb	w0, [sp, 29]
	cmp	w1, w0
	bne	.L15
	mov	w0, 1
	b	.L7
	mov	w0, 0
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 78
	bne	.L17
	bl	_Z3dfsv
	strb	w0, [sp, 30]
	ldrb	w0, [sp, 30]
	eor	w0, w0, 1
	and	w0, w0, 255
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 112
	bne	.L18
	adrp	x0, pqrst
	add	x0, x0, :lo12:pqrst
	ldrb	w0, [x0, 4]
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 113
	bne	.L19
	adrp	x0, pqrst
	add	x0, x0, :lo12:pqrst
	ldrb	w0, [x0, 3]
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 114
	bne	.L20
	adrp	x0, pqrst
	add	x0, x0, :lo12:pqrst
	ldrb	w0, [x0, 2]
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 115
	bne	.L21
	adrp	x0, pqrst
	add	x0, x0, :lo12:pqrst
	ldrb	w0, [x0, 1]
	b	.L7
	ldrb	w0, [sp, 31]
	cmp	w0, 116
	bne	.L16
	adrp	x0, pqrst
	add	x0, x0, :lo12:pqrst
	ldrb	w0, [x0]
	b	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
_Z6simplei:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L23
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L24
	adrp	x0, pqrst
	add	x1, x0, :lo12:pqrst
	ldrsw	x0, [sp, 28]
	strb	wzr, [x1, x0]
	b	.L25
	adrp	x0, pqrst
	add	x1, x0, :lo12:pqrst
	ldrsw	x0, [sp, 28]
	mov	w2, 1
	strb	w2, [x1, x0]
	ldr	w0, [sp, 12]
	asr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 4
	ble	.L26
	nop
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L28
	str	wzr, [sp, 28]
	b	.L29
	adrp	x0, w
	add	x0, x0, :lo12:w
	str	wzr, [x0]
	ldr	w0, [sp, 28]
	bl	_Z6simplei
	bl	_Z3dfsv
	and	w0, w0, 255
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L36
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 31
	ble	.L32
	b	.L31
	nop
	ldr	w0, [sp, 28]
	cmp	w0, 31
	bgt	.L33
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L28
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, WFF
	add	x1, x0, :lo12:WFF
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, WFF
	add	x0, x0, :lo12:WFF
	ldrb	w0, [x0]
	cmp	w0, 48
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L34
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret