N:
S:
cow:
_Z3cmpPKvS0_:
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
	str	wzr, [sp, 20]
	adrp	x0, S
	add	x2, x0, :lo12:S
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L6
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L7
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, _Z3cmpPKvS0_
	add	x3, x0, :lo12:_Z3cmpPKvS0_
	mov	x2, 4
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	bl	qsort
	str	wzr, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L8
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L10
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w1, w1, w0
	adrp	x0, S
	add	x0, x0, :lo12:S
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L11
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L12
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L9
	ldr	w1, [sp, 20]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret