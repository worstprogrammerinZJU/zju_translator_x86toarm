p:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 28]
	str	wzr, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L2
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	lsl	w2, w0, 1
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	cmp	w2, w0
	bcs	.L3
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	lsl	w0, w0, 1
	add	w1, w0, 1
	ldr	w0, [sp, 20]
	sub	w2, w0, #1
	adrp	x0, p
	add	x0, x0, :lo12:p
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L4
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	str	w1, [sp, 28]
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	ldr	w0, [x1, x0, lsl 2]
	lsl	w1, w0, 1
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	add	w2, w1, 1
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	b	.L2
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w0, w0, w1
	add	w1, w0, 1
	ldr	w0, [sp, 20]
	sub	w2, w0, #1
	adrp	x0, p
	add	x0, x0, :lo12:p
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L2
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	str	w1, [sp, 24]
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	ldr	w1, [x1, x0, lsl 2]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w0, [sp, 20]
	add	w2, w0, 1
	str	w2, [sp, 20]
	add	w2, w1, 1
	adrp	x1, p
	add	x1, x1, :lo12:p
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	ldr	w1, [sp, 20]
	mov	w0, 38527
	movk	w0, 0x98, lsl 16
	cmp	w1, w0
	ble	.L6
	b	.L7
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	adrp	x0, p
	add	x0, x0, :lo12:p
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret