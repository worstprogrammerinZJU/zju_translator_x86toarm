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
main:
	sub	sp, sp, #4048
	stp	x29, x30, [sp]
	mov	x29, sp
	add	x0, sp, 4028
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L6
	add	x1, sp, 4032
	add	x0, sp, 4024
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	str	wzr, [sp, 4040]
	b	.L7
	add	x1, sp, 24
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L8
	ldr	w0, [sp, 4032]
	sxtw	x1, w0
	add	x4, sp, 24
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	mov	x0, x4
	bl	qsort
	str	wzr, [sp, 4040]
	str	wzr, [sp, 4036]
	b	.L9
	ldrsw	x0, [sp, 4040]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 4036]
	add	w0, w1, w0
	str	w0, [sp, 4036]
	ldr	w0, [sp, 4024]
	ldr	w1, [sp, 4036]
	cmp	w1, w0
	bge	.L17
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	str	w0, [sp, 4040]
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	blt	.L12
	b	.L11
	nop
	ldr	w1, [sp, 4044]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 4032]
	ldr	w1, [sp, 4040]
	cmp	w1, w0
	bne	.L13
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L14
	ldr	w0, [sp, 4040]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	ldr	w0, [sp, 4028]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	ble	.L15
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	ret