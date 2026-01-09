card:
n:
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
main:
	sub	sp, sp, #4048
	stp	x29, x30, [sp]
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 4040]
	b	.L6
	str	wzr, [sp, 4044]
	b	.L7
	ldrsw	x0, [sp, 4044]
	lsl	x1, x0, 2
	adrp	x0, card
	add	x0, x0, :lo12:card
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L8
	mov	w0, 1
	str	w0, [sp, 4044]
	b	.L9
	ldrsw	x0, [sp, 4044]
	lsl	x0, x0, 2
	add	x1, sp, 24
	str	wzr, [x1, x0]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	mul	w0, w1, w0
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	ble	.L10
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	adrp	x0, cmp
	add	x3, x0, :lo12:cmp
	mov	x2, 4
	adrp	x0, card
	add	x0, x0, :lo12:card
	bl	qsort
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	mul	w0, w1, w0
	str	w0, [sp, 4036]
	str	wzr, [sp, 4032]
	str	wzr, [sp, 4044]
	b	.L11
	ldr	w0, [sp, 4036]
	sub	w0, w0, #1
	str	w0, [sp, 4036]
	ldrsw	x0, [sp, 4036]
	lsl	x0, x0, 2
	add	x1, sp, 24
	ldr	w0, [x1, x0]
	cmp	w0, 1
	beq	.L13
	adrp	x0, card
	add	x0, x0, :lo12:card
	ldrsw	x1, [sp, 4044]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 4036]
	cmp	w1, w0
	bne	.L14
	ldr	w0, [sp, 4032]
	add	w0, w0, 1
	str	w0, [sp, 4032]
	ldrsw	x0, [sp, 4036]
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	adrp	x0, card
	add	x0, x0, :lo12:card
	ldrsw	x1, [sp, 4044]
	ldr	w0, [x0, x1, lsl 2]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 24
	mov	w2, 1
	str	w2, [x1, x0]
	ldr	w0, [sp, 4044]
	add	w0, w0, 1
	str	w0, [sp, 4044]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 4044]
	cmp	w1, w0
	blt	.L12
	ldr	w0, [sp, 4040]
	add	w1, w0, 1
	str	w1, [sp, 4040]
	ldr	w2, [sp, 4032]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, n
	add	x2, x0, :lo12:n
	adrp	x0, m
	add	x1, x0, :lo12:m
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L16
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L17
	mov	w0, 1
	b	.L18
	mov	w0, 0
	cmp	w0, 0
	bne	.L19
	mov	w0, 0
	ldp	x29, x30, [sp]
	add	sp, sp, 4048
	ret