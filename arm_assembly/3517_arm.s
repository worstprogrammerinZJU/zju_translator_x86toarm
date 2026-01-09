n:
k:
m:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	mov	w0, 2
	str	w0, [sp, 28]
	str	wzr, [sp, 24]
	b	.L3
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	ldr	w1, [sp, 28]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 28]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L4
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	adrp	x1, n
	add	x1, x1, :lo12:n
	ldr	w1, [x1]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	adrp	x0, m
	add	x3, x0, :lo12:m
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L5
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret