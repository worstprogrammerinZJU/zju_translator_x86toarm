main:
	sub	sp, sp, #528
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, 484
	mov	x2, x1
	mov	w1, 0
	bl	memset
	str	wzr, [sp, 524]
	b	.L2
	ldrsw	x0, [sp, 524]
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldrsw	x0, [sp, 524]
	add	x0, x0, 11
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	lsl	x0, x0, 2
	add	x1, sp, 28
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 524]
	add	w0, w0, 1
	str	w0, [sp, 524]
	ldr	w0, [sp, 524]
	cmp	w0, 10
	ble	.L3
	mov	w0, 2
	str	w0, [sp, 524]
	b	.L4
	mov	w0, 2
	str	w0, [sp, 520]
	b	.L5
	ldr	w1, [sp, 520]
	ldr	w0, [sp, 524]
	cmp	w1, w0
	ble	.L6
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 4
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldrsw	x3, [sp, 520]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	b	.L7
	ldr	w0, [sp, 520]
	sub	w0, w0, #1
	sxtw	x2, w0
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w2, [x1, x0]
	ldr	w1, [sp, 524]
	ldr	w0, [sp, 520]
	sub	w0, w1, w0
	ldrsw	x3, [sp, 520]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	add	w2, w2, w0
	ldrsw	x3, [sp, 520]
	ldrsw	x1, [sp, 524]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x3
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	w2, [x1, x0]
	ldr	w0, [sp, 520]
	add	w0, w0, 1
	str	w0, [sp, 520]
	ldr	w0, [sp, 520]
	cmp	w0, 10
	ble	.L8
	ldr	w0, [sp, 524]
	add	w0, w0, 1
	str	w0, [sp, 524]
	ldr	w0, [sp, 524]
	cmp	w0, 10
	ble	.L9
	add	x0, sp, 516
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 524]
	b	.L10
	add	x1, sp, 508
	add	x0, sp, 512
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 512]
	ldr	w1, [sp, 508]
	sxtw	x2, w1
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	sub	x0, x0, x1
	add	x0, x0, x2
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 524]
	add	w0, w0, 1
	str	w0, [sp, 524]
	ldr	w0, [sp, 516]
	ldr	w1, [sp, 524]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 528
	ret