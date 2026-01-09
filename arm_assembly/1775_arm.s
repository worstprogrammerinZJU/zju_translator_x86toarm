Factorial:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	mov	w0, 9
	str	w0, [sp, 28]
	b	.L3
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	blt	.L5
	adrp	x0, Factorial
	add	x0, x0, :lo12:Factorial
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bgt	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 0
	blt	.L14
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	adrp	x1, Factorial
	add	x1, x1, :lo12:Factorial
	sxtw	x0, w0
	ldr	w0, [x1, x0, lsl 2]
	ldr	w1, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bgt	.L4
	b	.L8
	nop
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 28]
	cmp	w0, 9
	beq	.L10
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L11
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bge	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret