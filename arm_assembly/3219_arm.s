num:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	b	.L2
	ldr	w0, [sp, 12]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bgt	.L3
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L6
	ldr	w0, [sp, 32]
	bl	num
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	bl	num
	str	w0, [sp, 40]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	bl	num
	str	w0, [sp, 36]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L7
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L6
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret