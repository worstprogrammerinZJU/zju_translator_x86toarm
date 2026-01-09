N:
cow:
Group:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, N
	add	x1, x0, :lo12:N
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 28]
	str	wzr, [sp, 20]
	b	.L2
	adrp	x0, cow
	add	x1, x0, :lo12:cow
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, Group
	add	x0, x0, :lo12:Group
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, Group
	add	x0, x0, :lo12:Group
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, cow
	add	x0, x0, :lo12:cow
	ldr	w0, [x0]
	cmp	w0, 2
	bne	.L3
	adrp	x0, Group
	add	x0, x0, :lo12:Group
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, Group
	add	x0, x0, :lo12:Group
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L4
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w1, [x0]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w2, [x0]
	adrp	x0, Group
	add	x0, x0, :lo12:Group
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	sub	w0, w1, w0
	str	w0, [sp, 20]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	str	w0, [sp, 24]
	str	wzr, [sp, 28]
	b	.L5
	adrp	x0, Group
	add	x0, x0, :lo12:Group
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 20]
	add	w1, w1, w0
	adrp	x0, Group
	add	x0, x0, :lo12:Group
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	ldr	w2, [sp, 28]
	sub	w0, w2, w0
	sub	w0, w1, w0
	str	w0, [sp, 16]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 16]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, N
	add	x0, x0, :lo12:N
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L7
	ldr	w1, [sp, 24]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret