stack:
top:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	adrp	x0, top
	add	x0, x0, :lo12:top
	str	wzr, [x0]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	str	wzr, [sp, 32]
	b	.L3
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 36]
	b	.L4
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x1, top
	add	x1, x1, :lo12:top
	str	w2, [x1]
	adrp	x1, stack
	add	x1, x1, :lo12:stack
	sxtw	x0, w0
	mov	w2, 1
	str	w2, [x1, x0, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 20]
	str	w0, [sp, 32]
	adrp	x0, top
	add	x0, x0, :lo12:top
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L6
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	str	w0, [sp, 36]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	blt	.L7
	adrp	x0, stack
	add	x0, x0, :lo12:stack
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L8
	adrp	x0, stack
	add	x0, x0, :lo12:stack
	ldrsw	x1, [sp, 36]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 20]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret