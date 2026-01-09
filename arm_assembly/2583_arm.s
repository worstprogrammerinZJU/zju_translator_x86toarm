main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 32]
	lsl	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w2, w0, w1
	ldr	w1, [sp, 28]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w1, w2, w0
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 3
	sub	w1, w0, w1
	ldr	w0, [sp, 44]
	add	w1, w1, w0
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w1, [sp, 32]
	mov	w0, w1
	lsl	w0, w0, 3
	add	w1, w0, w1
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldr	w0, [sp, 28]
	add	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w3, [sp, 36]
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 44]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret