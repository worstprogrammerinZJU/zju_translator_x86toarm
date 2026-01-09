main:
	stp	x29, x30, [sp, -448]!
	mov	x29, sp
	add	x0, sp, 432
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 444]
	b	.L2
	add	x1, sp, 424
	add	x0, sp, 428
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 424]
	cmp	w1, w0
	ble	.L3
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L4
	ldr	w0, [sp, 428]
	cmp	w0, 1
	bne	.L5
	ldr	w0, [sp, 424]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L4
	ldr	w1, [sp, 424]
	ldr	w0, [sp, 428]
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 424]
	ldr	w1, [sp, 428]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w1, w0, w1
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 436]
	mov	w0, 1
	str	w0, [sp, 440]
	b	.L6
	ldr	w0, [sp, 428]
	ldr	w1, [sp, 436]
	sdiv	w2, w1, w0
	ldrsw	x0, [sp, 440]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 440]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 424]
	cmp	w1, w0
	bne	.L7
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 436]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L14
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 436]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w1, w0, w1
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w2, w0
	ldrsw	x0, [sp, 440]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w0, w2, w0
	str	w0, [sp, 436]
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
	ldr	w0, [sp, 440]
	cmp	w0, 99
	ble	.L9
	b	.L8
	nop
	str	wzr, [sp, 424]
	b	.L10
	ldr	w0, [sp, 424]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 424]
	add	w0, w0, 1
	str	w0, [sp, 424]
	ldr	w0, [sp, 424]
	ldr	w1, [sp, 440]
	cmp	w1, w0
	bge	.L11
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	str	w0, [sp, 444]
	ldr	w0, [sp, 432]
	ldr	w1, [sp, 444]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 448
	ret