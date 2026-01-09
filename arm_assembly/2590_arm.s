main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	str	wzr, [sp, 40]
	str	wzr, [sp, 32]
	b	.L3
	ldr	w0, [sp, 32]
	add	w0, w0, 2
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	add	w0, w0, 2
	str	w0, [sp, 32]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 32]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	neg	w0, w0
	mov	w1, w0
	ldr	w0, [sp, 40]
	add	w1, w1, w0
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 40]
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret