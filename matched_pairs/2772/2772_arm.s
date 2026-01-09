main:
	sub	sp, sp, #4064
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 4028
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 4060]
	b	.L2
	add	x2, sp, 4036
	add	x1, sp, 4032
	add	x0, sp, 4040
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 4044]
	str	wzr, [sp, 4056]
	b	.L3
	add	x1, sp, 24
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x0, x1, x0
	add	x1, sp, 20
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 4036]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 4036]
	sub	w0, w0, #1
	str	w0, [sp, 4036]
	mov	w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 20]
	cmp	w0, 1
	bne	.L5
	ldr	w1, [sp, 4032]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	bge	.L6
	ldr	w1, [sp, 4032]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	str	w0, [sp, 4044]
	ldr	w0, [sp, 4032]
	lsl	w1, w0, 1
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	sub	w2, w1, w0
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4056]
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 4036]
	ldr	w0, [sp, 4040]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 4032]
	mul	w0, w1, w0
	lsl	w0, w0, 1
	str	w0, [sp, 4048]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4040]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 4036]
	ldr	w0, [sp, 4036]
	cmp	w0, 0
	beq	.L8
	str	wzr, [sp, 4056]
	b	.L9
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4052]
	b	.L10
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x2, sp, 24
	ldr	w0, [x2, x0]
	cmp	w1, w0
	ble	.L11
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	str	w0, [sp, 20]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x0, [sp, 4052]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w2, [sp, 20]
	ldrsw	x0, [sp, 4056]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 4052]
	add	w0, w0, 1
	str	w0, [sp, 4052]
	ldr	w0, [sp, 4040]
	ldr	w1, [sp, 4052]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 4056]
	add	w0, w0, 1
	str	w0, [sp, 4056]
	ldr	w0, [sp, 4036]
	ldr	w1, [sp, 4056]
	cmp	w1, w0
	blt	.L13
	ldr	w0, [sp, 4036]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 4032]
	add	w0, w1, w0
	ldr	w1, [sp, 4048]
	add	w0, w1, w0
	str	w0, [sp, 4048]
	b	.L14
	ldr	w1, [sp, 4048]
	ldr	w0, [sp, 4044]
	add	w0, w1, w0
	str	w0, [sp, 4048]
	ldr	w1, [sp, 4048]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 4060]
	add	w0, w0, 1
	str	w0, [sp, 4060]
	ldr	w0, [sp, 4028]
	ldr	w1, [sp, 4060]
	cmp	w1, w0
	blt	.L15
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4064
	ret