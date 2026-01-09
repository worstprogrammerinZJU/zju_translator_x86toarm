speed:
n:
cmp:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w0, [x0]
	str	w0, [sp, 28]
	ldr	x0, [sp]
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L2
	mov	w0, -1
	b	.L3
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, 1
	b	.L3
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L6
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	b	.L7
	ldrsw	x0, [sp, 24]
	lsl	x1, x0, 2
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L8
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	bl	qsort
	str	wzr, [sp, 20]
	b	.L9
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #2
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	lsl	w0, w0, 1
	cmp	w1, w0
	ble	.L10
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w1, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L9
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0]
	lsl	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w2, w0, 1
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 3
	bgt	.L11
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 3
	bne	.L12
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w1, [x0]
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	add	w1, w1, w0
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 8]
	add	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L13
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 2
	bne	.L14
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0, 4]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	b	.L13
	adrp	x0, speed
	add	x0, x0, :lo12:speed
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L15
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret