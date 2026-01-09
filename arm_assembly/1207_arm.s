pro:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 12]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 12]
	asr	w0, w0, 1
	str	w0, [sp, 12]
	b	.L4
	ldr	w1, [sp, 12]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L5
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L8
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 28]
	mov	w2, w1
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L9
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L10
	ldr	w0, [sp, 44]
	bl	pro
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L11
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L12
	ldr	w1, [sp, 40]
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
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret