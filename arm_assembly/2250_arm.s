words:
wordt:
c:
m:
n:
main:
	stp	x29, x30, [sp, -432]!
	mov	x29, sp
	b	.L2
	adrp	x0, m
	add	x0, x0, :lo12:m
	mov	w1, 1
	str	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, words
	add	x1, x1, :lo12:words
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L3
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, words
	add	x1, x1, :lo12:words
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, words
	add	x1, x1, :lo12:words
	add	x2, x0, x1
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L4
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	wzr, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, wordt
	add	x1, x1, :lo12:wordt
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L5
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	add	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, wordt
	add	x1, x1, :lo12:wordt
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, wordt
	add	x1, x1, :lo12:wordt
	add	x2, x0, x1
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L6
	bl	LCS
	str	w0, [sp, 428]
	ldr	w0, [sp, 428]
	str	w0, [sp, 424]
	b	.L7
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 101
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w3, w0, #1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w2, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x2, w2
	sxtw	x4, w3
	mov	x3, 101
	mul	x3, x4, x3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L8
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	b	.L7
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 101
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w3, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w2, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x2, w2
	sxtw	x4, w3
	mov	x3, 101
	mul	x3, x4, x3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bne	.L9
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	b	.L7
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	sub	w1, w0, #1
	adrp	x0, n
	add	x0, x0, :lo12:n
	str	w1, [x0]
	ldr	w0, [sp, 428]
	sub	w0, w0, #1
	str	w0, [sp, 428]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w2, [x0]
	ldrsw	x0, [sp, 428]
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 101
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bne	.L10
	str	wzr, [sp, 428]
	b	.L11
	ldrsw	x0, [sp, 428]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, words
	add	x1, x1, :lo12:words
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 428]
	add	w0, w0, 1
	str	w0, [sp, 428]
	ldr	w1, [sp, 428]
	ldr	w0, [sp, 424]
	cmp	w1, w0
	blt	.L12
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x0, words
	add	x1, x0, :lo12:words
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 432
	ret
LCS:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	x2, 40804
	mov	w1, 0
	adrp	x0, c
	add	x0, x0, :lo12:c
	bl	memset
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L16
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L17
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, words
	add	x1, x1, :lo12:words
	add	x2, x0, x1
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	sxtw	x1, w0
	mov	x0, x1
	lsl	x0, x0, 4
	sub	x0, x0, x1
	lsl	x0, x0, 1
	adrp	x1, wordt
	add	x1, x1, :lo12:wordt
	add	x0, x0, x1
	mov	x1, x0
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L18
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 101
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	add	w2, w0, 1
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 24]
	ldrsw	x4, [sp, 28]
	mov	x3, 101
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	b	.L19
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	ldrsw	x3, [sp, 28]
	mov	x2, 101
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	sub	w3, w0, #1
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x2, [sp, 24]
	sxtw	x4, w3
	mov	x3, 101
	mul	x3, x4, x3
	add	x2, x3, x2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	csel	w2, w1, w0, ge
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 24]
	ldrsw	x4, [sp, 28]
	mov	x3, 101
	mul	x3, x4, x3
	add	x1, x3, x1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L20
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L21
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w2, [x0]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w1, [x0]
	adrp	x0, c
	add	x0, x0, :lo12:c
	sxtw	x1, w1
	sxtw	x3, w2
	mov	x2, 101
	mul	x2, x3, x2
	add	x1, x2, x1
	ldr	w0, [x0, x1, lsl 2]
	ldp	x29, x30, [sp], 32
	ret