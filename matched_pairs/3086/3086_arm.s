num:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 3
	str	w0, [sp, 24]
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w2, [sp, 24]
	ldr	w0, [sp, 28]
	mul	w0, w2, w0
	add	w2, w1, w0
	adrp	x0, num
	add	x0, x0, :lo12:num
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 300
	ble	.L3
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L4
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w2, [sp, 16]
	ldr	w1, [sp, 16]
	adrp	x0, num
	add	x0, x0, :lo12:num
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w3, w0
	ldr	w1, [sp, 28]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret