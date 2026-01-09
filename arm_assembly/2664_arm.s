p:
m:
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
	mov	w0, 1
	b	.L3
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L4
	mov	w0, -1
	b	.L3
	mov	w0, 0
	add	sp, sp, 32
	ret
find:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	wzr, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	b	.L6
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 20]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	b	.L8
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L9
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 28]
	b	.L6
	ldr	w0, [sp, 20]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L10
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, p
	add	x0, x0, :lo12:p
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bne	.L11
	mov	w0, 1
	b	.L8
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	adrp	x0, m
	add	x1, x0, :lo12:m
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L13
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L14
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L15
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, p
	add	x0, x0, :lo12:p
	bl	qsort
	mov	w0, 1
	str	w0, [sp, 32]
	str	wzr, [sp, 44]
	b	.L16
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 40]
	str	wzr, [sp, 36]
	b	.L17
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L18
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L18
	ldr	w0, [sp, 16]
	bl	find
	cmp	w0, 1
	bne	.L18
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L19
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L20
	str	wzr, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bne	.L22
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L23
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, m
	add	x1, x0, :lo12:m
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L24
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret