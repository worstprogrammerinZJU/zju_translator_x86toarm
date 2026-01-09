A:
a:
B:
b:
P:
main:
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	adrp	x0, P
	add	x5, x0, :lo12:P
	adrp	x0, b
	add	x4, x0, :lo12:b
	adrp	x0, B
	add	x3, x0, :lo12:B
	adrp	x0, a
	add	x2, x0, :lo12:a
	adrp	x0, A
	add	x1, x0, :lo12:A
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w1, [x0]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L2
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w1, [x0]
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L2
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w1, [x0]
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w0, [x0]
	add	w1, w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L3
	adrp	x0, A
	add	x0, x0, :lo12:A
	ldr	w1, [x0]
	adrp	x0, b
	add	x0, x0, :lo12:b
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L3
	adrp	x0, B
	add	x0, x0, :lo12:B
	ldr	w1, [x0]
	adrp	x0, a
	add	x0, x0, :lo12:a
	ldr	w0, [x0]
	cmp	w1, w0
	bgt	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L4
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret