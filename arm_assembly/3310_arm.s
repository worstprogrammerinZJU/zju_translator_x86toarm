weight:
n:
e:
G:
flag:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L2
	adrp	x0, e
	add	x1, x0, :lo12:e
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	x2, 10201
	mov	w1, 0
	adrp	x0, G
	add	x0, x0, :lo12:G
	bl	memset
	mov	x2, 404
	mov	w1, 0
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	bl	memset
	str	wzr, [sp, 44]
	b	.L3
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 28]
	ldr	w3, [sp, 24]
	adrp	x0, G
	add	x2, x0, :lo12:G
	sxtw	x0, w3
	sxtw	x3, w1
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	ldr	w1, [sp, 24]
	ldr	w3, [sp, 28]
	adrp	x0, G
	add	x2, x0, :lo12:G
	sxtw	x0, w3
	sxtw	x3, w1
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	ldr	w3, [sp, 28]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w3, [sp, 24]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	sxtw	x1, w3
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L5
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L6
	ldrsw	x1, [sp, 44]
	mov	x0, 101
	mul	x1, x1, x0
	adrp	x0, G
	add	x0, x0, :lo12:G
	add	x0, x1, x0
	mov	x2, 101
	mov	w1, 0
	bl	memset
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L7
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	mov	w1, 1
	strb	w1, [x0]
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	str	wzr, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L8
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	beq	.L9
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L10
	adrp	x0, G
	add	x2, x0, :lo12:G
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L11
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmn	w0, #1
	bne	.L11
	adrp	x0, G
	add	x2, x0, :lo12:G
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	strb	wzr, [x0]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L12
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 2
	ble	.L13
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	strb	wzr, [x0]
	b	.L14
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 1
	bne	.L15
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L9
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L16
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L9
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L17
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L18
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bgt	.L19
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L19
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L20
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L21
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L21
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	mov	w1, 1
	strb	w1, [x0]
	b	.L18
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	strb	wzr, [x0]
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	ldrb	w0, [x0]
	cmp	w0, 0
	bne	.L23
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	str	w1, [sp, 32]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L2
	ldr	w0, [sp, 32]
	add	w1, w0, 1
	str	w1, [sp, 32]
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret