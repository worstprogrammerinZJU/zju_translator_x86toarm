point:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x1, sp, 28
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, point
	add	x0, x0, :lo12:point
	add	x3, x1, x0
	ldrsw	x0, [sp, 44]
	add	x0, x0, 500
	lsl	x1, x0, 2
	adrp	x0, point
	add	x0, x0, :lo12:point
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 44]
	add	x2, x2, 500
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L3
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 36]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	add	x1, x1, 500
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	add	x1, x1, 500
	ldr	w2, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	str	wzr, [sp, 44]
	b	.L5
	strb	wzr, [sp, 35]
	str	wzr, [sp, 40]
	b	.L6
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	blt	.L7
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	add	x1, x1, 500
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	add	x2, x2, 500
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L21
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L9
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 44]
	add	x1, x1, 500
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	add	x2, x2, 500
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L21
	ldrb	w0, [sp, 35]
	cmp	w0, 1
	bne	.L11
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 36]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	blt	.L12
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 36]
	add	x1, x1, 500
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	add	x2, x2, 500
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L11
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 36]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L13
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x1, [sp, 36]
	add	x1, x1, 500
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, point
	add	x0, x0, :lo12:point
	ldrsw	x2, [sp, 40]
	add	x2, x2, 500
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bgt	.L13
	mov	w0, 1
	strb	w0, [sp, 35]
	ldr	w0, [sp, 40]
	str	w0, [sp, 36]
	b	.L10
	nop
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L14
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L22
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L17
	b	.L16
	nop
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L18
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret