n:
s:
t:
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 76]
	b	.L2
	str	wzr, [sp, 68]
	str	wzr, [sp, 64]
	adrp	x0, t
	add	x2, x0, :lo12:t
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 72]
	b	.L3
	ldrsw	x0, [sp, 72]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	wzr, [x1, x0]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	cmp	w0, 9
	ble	.L4
	str	wzr, [sp, 72]
	b	.L5
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 72]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	cmp	w0, 3
	ble	.L6
	str	wzr, [sp, 72]
	b	.L7
	adrp	x0, t
	add	x1, x0, :lo12:t
	ldrsw	x0, [sp, 72]
	ldrb	w0, [x1, x0]
	sub	w0, w0, #48
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 1
	bne	.L8
	ldr	w0, [sp, 64]
	add	w0, w0, 1
	str	w0, [sp, 64]
	adrp	x0, s
	add	x1, x0, :lo12:s
	ldrsw	x0, [sp, 72]
	ldrb	w1, [x1, x0]
	adrp	x0, t
	add	x2, x0, :lo12:t
	ldrsw	x0, [sp, 72]
	ldrb	w0, [x2, x0]
	cmp	w1, w0
	bne	.L9
	ldr	w0, [sp, 68]
	add	w0, w0, 1
	str	w0, [sp, 68]
	ldr	w0, [sp, 64]
	sub	w0, w0, #1
	str	w0, [sp, 64]
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	cmp	w0, 3
	ble	.L10
	ldr	w2, [sp, 64]
	ldr	w1, [sp, 68]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	blt	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret