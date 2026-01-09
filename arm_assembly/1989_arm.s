breed:
n:
k:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 24]
	adrp	x0, k
	add	x2, x0, :lo12:k
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	str	wzr, [sp, 20]
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w1, [sp, 16]
	adrp	x0, breed
	add	x0, x0, :lo12:breed
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 16]
	adrp	x0, breed
	add	x0, x0, :lo12:breed
	sxtw	x1, w1
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bne	.L3
	str	wzr, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, k
	add	x0, x0, :lo12:k
	ldr	w0, [x0]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x0, x0, 1
	mov	x2, x0
	mov	w1, 0
	adrp	x0, breed
	add	x0, x0, :lo12:breed
	bl	memset
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L4
	ldr	w1, [sp, 24]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret