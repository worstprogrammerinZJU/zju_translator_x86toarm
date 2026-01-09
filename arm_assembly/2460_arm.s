x:
y:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 44]
	b	.L3
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x3, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, y
	add	x0, x0, :lo12:y
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L5
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L6
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L7
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L8
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L9
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L10
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bgt	.L11
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L9
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L9
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L12
	ldr	w2, [sp, 36]
	ldr	w1, [sp, 40]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret