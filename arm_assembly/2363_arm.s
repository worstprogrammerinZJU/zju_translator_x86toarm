main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	add	x0, sp, 24
	ldp	q0, q1, [x1]
	stp	q0, q1, [x0]
	ldr	x1, [x1, 32]
	str	x1, [x0, 32]
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 92]
	b	.L2
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 88]
	b	.L3
	ldr	w0, [sp, 88]
	add	w0, w0, 1
	str	w0, [sp, 88]
	ldrsw	x0, [sp, 88]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w1, [x1, x0]
	ldr	w0, [sp, 64]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 64]
	cmp	w0, 0
	bne	.L5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 10000
	str	w0, [sp, 80]
	b	.L6
	ldr	w0, [sp, 64]
	ldr	w1, [sp, 88]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 88]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 64]
	ldr	w0, [sp, 88]
	sdiv	w0, w1, w0
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	scvtf	d0, w0
	bl	sqrt
	fcvtzs	w0, d0
	str	w0, [sp, 84]
	b	.L8
	ldr	w0, [sp, 76]
	ldr	w1, [sp, 84]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 84]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L9
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 84]
	mul	w1, w1, w0
	ldr	w0, [sp, 76]
	add	w0, w1, w0
	lsl	w1, w0, 1
	ldr	w2, [sp, 88]
	ldr	w0, [sp, 76]
	mul	w0, w2, w0
	lsl	w2, w0, 1
	ldr	w0, [sp, 84]
	sdiv	w0, w2, w0
	add	w0, w1, w0
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	ldr	w2, [sp, 80]
	ldr	w1, [sp, 80]
	cmp	w2, w0
	csel	w0, w1, w0, le
	str	w0, [sp, 80]
	ldr	w0, [sp, 84]
	sub	w0, w0, #1
	str	w0, [sp, 84]
	ldr	w0, [sp, 84]
	cmp	w0, 0
	bgt	.L10
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	str	w0, [sp, 88]
	ldr	w0, [sp, 88]
	cmp	w0, 0
	bne	.L11
	ldr	w1, [sp, 80]
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret