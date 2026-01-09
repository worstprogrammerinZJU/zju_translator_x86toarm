main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	x0, [sp, 16]
	str	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 16]
	mul	x0, x1, x0
	add	x0, x0, 1
	ldr	x1, [sp, 24]
	udiv	x2, x0, x1
	ldr	x1, [sp, 24]
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	beq	.L7
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	b	.L4
	nop
	ldr	x0, [sp, 16]
	lsl	x1, x0, 1
	ldr	x2, [sp, 16]
	ldr	x0, [sp, 16]
	mul	x0, x2, x0
	add	x2, x0, 1
	ldr	x0, [sp, 24]
	udiv	x0, x2, x0
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret