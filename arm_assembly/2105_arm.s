main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 108]
	b	.L2
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 104]
	b	.L3
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x1, sp, 80
	str	wzr, [x1, x0]
	str	wzr, [sp, 100]
	b	.L4
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x1, sp, 80
	ldr	w0, [x1, x0]
	lsl	w0, w0, 1
	ldr	w1, [sp, 104]
	lsl	w2, w1, 3
	ldr	w1, [sp, 100]
	add	w1, w2, w1
	sxtw	x1, w1
	add	x2, sp, 24
	ldrb	w1, [x2, x1]
	add	w0, w0, w1
	sub	w2, w0, #48
	ldrsw	x0, [sp, 104]
	lsl	x0, x0, 2
	add	x1, sp, 80
	str	w2, [x1, x0]
	ldr	w0, [sp, 100]
	add	w0, w0, 1
	str	w0, [sp, 100]
	ldr	w0, [sp, 100]
	cmp	w0, 7
	ble	.L5
	ldr	w0, [sp, 104]
	add	w0, w0, 1
	str	w0, [sp, 104]
	ldr	w0, [sp, 104]
	cmp	w0, 3
	ble	.L6
	ldr	w0, [sp, 80]
	ldr	w1, [sp, 84]
	ldr	w2, [sp, 88]
	ldr	w3, [sp, 92]
	mov	w4, w3
	mov	w3, w2
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 96]
	ldr	w1, [sp, 108]
	cmp	w1, w0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret