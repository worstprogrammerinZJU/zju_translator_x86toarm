w:
h:
s:
cake:
wide:
height:
_Z3reciiii:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	str	w2, [sp, 4]
	str	w3, [sp]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	ble	.L2
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	ldr	w0, [sp, 4]
	str	w0, [sp, 12]
	ldr	w0, [sp, 24]
	str	w0, [sp, 4]
	ldr	w1, [sp, 8]
	ldr	w0, [sp]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 8]
	str	w0, [sp, 24]
	ldr	w0, [sp]
	str	w0, [sp, 8]
	ldr	w0, [sp, 24]
	str	w0, [sp]
	ldr	w0, [sp, 8]
	str	w0, [sp, 28]
	b	.L4
	adrp	x0, wide
	add	x3, x0, :lo12:wide
	ldrsw	x2, [sp, 12]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	adrp	x0, wide
	add	x3, x0, :lo12:wide
	ldrsw	x2, [sp, 4]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L6
	adrp	x0, height
	add	x3, x0, :lo12:height
	ldrsw	x2, [sp, 28]
	ldrsw	x1, [sp, 8]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	adrp	x0, height
	add	x3, x0, :lo12:height
	ldrsw	x2, [sp, 28]
	ldrsw	x1, [sp]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L7
	nop
	nop
	add	sp, sp, 32
	ret
_Z3DFSii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, cake
	add	x3, x0, :lo12:cake
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, wide
	add	x3, x0, :lo12:wide
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, cake
	add	x3, x0, :lo12:cake
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3DFSii
	adrp	x0, wide
	add	x3, x0, :lo12:wide
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, cake
	add	x3, x0, :lo12:cake
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3DFSii
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, height
	add	x3, x0, :lo12:height
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, cake
	add	x3, x0, :lo12:cake
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	_Z3DFSii
	adrp	x0, height
	add	x3, x0, :lo12:height
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L13
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, cake
	add	x3, x0, :lo12:cake
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L13
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	_Z3DFSii
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L15
	mov	x2, 400
	mov	w1, 0
	adrp	x0, cake
	add	x0, x0, :lo12:cake
	bl	memset
	mov	x2, 420
	mov	w1, 0
	adrp	x0, wide
	add	x0, x0, :lo12:wide
	bl	memset
	mov	x2, 420
	mov	w1, 0
	adrp	x0, height
	add	x0, x0, :lo12:height
	bl	memset
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	wzr, [x0]
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w1, [x0]
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	mov	w3, w0
	mov	w2, w1
	mov	w1, 0
	mov	w0, 0
	bl	_Z3reciiii
	str	wzr, [sp, 44]
	b	.L16
	add	x3, sp, 20
	add	x2, sp, 24
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x4, x3
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	ldr	w2, [sp, 24]
	ldr	w3, [sp, 20]
	bl	_Z3reciiii
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L17
	str	wzr, [sp, 44]
	b	.L18
	str	wzr, [sp, 40]
	b	.L19
	adrp	x0, cake
	add	x3, x0, :lo12:cake
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L20
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	_Z3DFSii
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, s
	add	x0, x0, :lo12:s
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L22
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, h
	add	x2, x0, :lo12:h
	adrp	x0, w
	add	x1, x0, :lo12:w
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	__isoc99_scanf
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L23
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L24
	mov	w0, 1
	b	.L25
	mov	w0, 0
	cmp	w0, 0
	bne	.L26
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret