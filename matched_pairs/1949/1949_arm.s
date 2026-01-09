n:
max:
m:
time:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	add	x1, sp, 36
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	wzr, [x0]
	b	.L3
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w1, [sp, 32]
	adrp	x0, time
	add	x0, x0, :lo12:time
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	ldr	w1, [sp, 32]
	adrp	x0, time
	add	x0, x0, :lo12:time
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L5
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w2, [sp, 28]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	add	w0, w2, w0
	add	w2, w1, w0
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L6
	adrp	x0, time
	add	x0, x0, :lo12:time
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L7
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret