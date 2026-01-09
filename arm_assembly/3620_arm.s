N:
M:
K:
k:
farm:
_Z3dfsii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, farm
	add	x2, x0, :lo12:farm
	ldrsw	x0, [sp, 24]
	ldrsw	x3, [sp, 28]
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	strb	wzr, [x0]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, k
	add	x0, x0, :lo12:k
	str	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	ble	.L2
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, farm
	add	x2, x0, :lo12:farm
	ldrsw	x0, [sp, 24]
	sxtw	x3, w1
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L2
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, farm
	add	x2, x0, :lo12:farm
	ldrsw	x0, [sp, 24]
	sxtw	x3, w1
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	_Z3dfsii
	ldr	w0, [sp, 24]
	cmp	w0, 1
	ble	.L4
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, farm
	add	x2, x0, :lo12:farm
	sxtw	x0, w1
	ldrsw	x3, [sp, 28]
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L4
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	adrp	x0, M
	add	x0, x0, :lo12:M
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, farm
	add	x2, x0, :lo12:farm
	sxtw	x0, w1
	ldrsw	x3, [sp, 28]
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z3dfsii
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	wzr, [sp, 36]
	adrp	x0, K
	add	x3, x0, :lo12:K
	adrp	x0, M
	add	x2, x0, :lo12:M
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L8
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 32]
	ldr	w3, [sp, 28]
	adrp	x0, farm
	add	x2, x0, :lo12:farm
	sxtw	x0, w3
	sxtw	x3, w1
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	mov	w1, 1
	strb	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L9
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L10
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L11
	adrp	x0, farm
	add	x2, x0, :lo12:farm
	ldrsw	x0, [sp, 40]
	ldrsw	x3, [sp, 44]
	mov	x1, 101
	mul	x1, x3, x1
	add	x1, x2, x1
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, 1
	bne	.L12
	adrp	x0, k
	add	x0, x0, :lo12:k
	str	wzr, [x0]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	_Z3dfsii
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L12
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, M
	add	x0, x0, :lo12:M
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L13
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L14
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret