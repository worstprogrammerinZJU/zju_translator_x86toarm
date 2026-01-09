n:
s:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 16]
	b	.L2
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	b	.L3
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, s
	add	x0, x0, :lo12:s
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	add	w0, w1, w0
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
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	str	wzr, [sp, 20]
	b	.L5
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L6
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L7
	ldr	w0, [sp, 16]
	add	w0, w0, 1
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w1, [sp, 20]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret