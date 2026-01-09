position:
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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L6
	str	wzr, [sp, 44]
	b	.L7
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, position
	add	x0, x0, :lo12:position
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 32]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, position
	add	x0, x0, :lo12:position
	bl	qsort
	str	wzr, [sp, 36]
	str	wzr, [sp, 44]
	b	.L9
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L10
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L21
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L13
	b	.L12
	nop
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L14
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, position
	add	x0, x0, :lo12:position
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L22
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L17
	b	.L16
	nop
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L18
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x1, sp, 32
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmn	w0, #1
	bne	.L19
	ldr	w0, [sp, 32]
	cmn	w0, #1
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret