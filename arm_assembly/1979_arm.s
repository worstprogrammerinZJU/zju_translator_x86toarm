w:
h:
count:
t:
p:
_Z3dfsii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 1
	beq	.L7
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 1
	strb	w1, [x0]
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 46
	bne	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 46
	bne	.L5
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 46
	bne	.L6
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L1
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 46
	bne	.L1
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	b	.L1
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L9
	adrp	x0, count
	add	x0, x0, :lo12:count
	str	wzr, [x0]
	mov	x2, 900
	mov	w1, 0
	adrp	x0, p
	add	x0, x0, :lo12:p
	bl	memset
	str	wzr, [sp, 28]
	b	.L10
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, t
	add	x1, x1, :lo12:t
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L11
	str	wzr, [sp, 28]
	b	.L12
	str	wzr, [sp, 24]
	b	.L13
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L14
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	b	.L15
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L17
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, h
	add	x2, x0, :lo12:h
	adrp	x0, w
	add	x1, x0, :lo12:w
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, w
	add	x0, x0, :lo12:w
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L18
	adrp	x0, h
	add	x0, x0, :lo12:h
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L19
	mov	w0, 1
	b	.L20
	mov	w0, 0
	cmp	w0, 0
	bne	.L21
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret