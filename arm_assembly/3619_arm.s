N:
K:
s:
t:
r:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, K
	add	x2, x0, :lo12:K
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	adrp	x0, r
	add	x3, x0, :lo12:r
	adrp	x0, t
	add	x2, x0, :lo12:t
	adrp	x0, s
	add	x1, x0, :lo12:s
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w1, [x0]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w2, [x0]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	w0, [x0]
	mul	w0, w2, w0
	sdiv	w0, w1, w0
	str	w0, [sp, 24]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	w1, [x0]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	add	w0, w1, w0
	ldr	w1, [sp, 24]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	adrp	x1, s
	add	x1, x1, :lo12:s
	ldr	w2, [x1]
	adrp	x1, t
	add	x1, x1, :lo12:t
	ldr	w1, [x1]
	mul	w1, w2, w1
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L3
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 24]
	b	.L4
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	adrp	x1, s
	add	x1, x1, :lo12:s
	ldr	w2, [x1]
	adrp	x1, t
	add	x1, x1, :lo12:t
	ldr	w1, [x1]
	mul	w1, w2, w1
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	sub	w1, w0, #1
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldr	w0, [x0]
	sdiv	w0, w1, w0
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, K
	add	x0, x0, :lo12:K
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret