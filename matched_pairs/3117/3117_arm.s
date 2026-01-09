main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	b	.L2
	str	wzr, [sp, 92]
	str	wzr, [sp, 88]
	b	.L3
	add	x1, sp, 84
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 84]
	ldr	w1, [sp, 88]
	add	w0, w1, w0
	str	w0, [sp, 88]
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 80]
	ldr	w1, [sp, 92]
	cmp	w1, w0
	blt	.L4
	ldr	w1, [sp, 76]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 88]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 76
	add	x0, sp, 80
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 80]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 76]
	cmp	w0, 0
	beq	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret