t:
n:
count:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, t
	add	x1, x0, :lo12:t
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	mov	x2, 8000
	mov	w1, 0
	adrp	x0, count
	add	x0, x0, :lo12:count
	bl	memset
	str	wzr, [sp, 40]
	b	.L3
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 27
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	str	w0, [sp, 36]
	b	.L4
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldrsw	x1, [sp, 36]
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldrsw	x1, [sp, 36]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 40]
	b	.L7
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L8
	adrp	x0, count
	add	x0, x0, :lo12:count
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	add	w0, w0, 64
	bl	putchar
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 1000
	ble	.L9
	mov	w0, 10
	bl	putchar
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret