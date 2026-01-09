n:
min:
max:
sum:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	adrp	x0, min
	add	x0, x0, :lo12:min
	mov	w1, 1001
	str	w1, [x0]
	adrp	x0, max
	add	x0, x0, :lo12:max
	mov	w1, -1
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	wzr, [x0]
	str	wzr, [sp, 28]
	b	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	ldr	w0, [sp, 24]
	add	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	ldr	w1, [sp, 24]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldr	w1, [sp, 24]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	w1, [x0]
	ldr	w1, [sp, 24]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L5
	ldr	w1, [sp, 24]
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	sub	w1, w1, w0
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	sub	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w0, w0, #2
	sdiv	w1, w1, w0
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	str	w1, [x0]
	adrp	x0, sum
	add	x0, x0, :lo12:sum
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
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
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret