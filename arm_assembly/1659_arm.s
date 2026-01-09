neighbor:
place:
lake:
n:
sort:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L2
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L3
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L4
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 20]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 20]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L6
	nop
	nop
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L8
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 24]
	b	.L9
	ldrsw	x0, [sp, 24]
	lsl	x1, x0, 2
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 24]
	b	.L11
	ldr	w0, [sp, 24]
	bl	sort
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 20]
	b	.L12
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L13
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 20]
	ldr	w0, [x0, x1, lsl 2]
	sub	w2, w0, #1
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 20]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w4, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 20]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, lake
	add	x2, x0, :lo12:lake
	sxtw	x3, w1
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 20]
	ldr	w4, [x0, x1, lsl 2]
	adrp	x0, place
	add	x0, x0, :lo12:place
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, lake
	add	x2, x0, :lo12:lake
	sxtw	x3, w1
	sxtw	x1, w4
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	mov	w1, 1
	str	w1, [x2, x0, lsl 2]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	ble	.L14
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L15
	adrp	x0, neighbor
	add	x0, x0, :lo12:neighbor
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L27
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L18
	b	.L17
	nop
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bne	.L19
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	str	wzr, [sp, 24]
	b	.L20
	str	wzr, [sp, 20]
	b	.L21
	adrp	x0, lake
	add	x2, x0, :lo12:lake
	ldrsw	x3, [sp, 20]
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	blt	.L22
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L23
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L24
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	mov	x2, 400
	mov	w1, 0
	adrp	x0, lake
	add	x0, x0, :lo12:lake
	bl	memset
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L25
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret