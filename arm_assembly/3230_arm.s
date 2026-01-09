income:
expense:
dp:
m:
n:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	str	wzr, [sp, 44]
	b	.L3
	str	wzr, [sp, 40]
	b	.L4
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, expense
	add	x0, x0, :lo12:expense
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L6
	str	wzr, [sp, 44]
	b	.L7
	str	wzr, [sp, 40]
	b	.L8
	ldrsw	x2, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, income
	add	x0, x0, :lo12:income
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L9
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L10
	str	wzr, [sp, 44]
	b	.L11
	adrp	x0, income
	add	x0, x0, :lo12:income
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, expense
	add	x0, x0, :lo12:expense
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	sub	w2, w1, w0
	adrp	x0, dp
	add	x0, x0, :lo12:dp
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L12
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L13
	str	wzr, [sp, 40]
	b	.L14
	str	wzr, [sp, 32]
	str	wzr, [sp, 36]
	b	.L15
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, income
	add	x3, x0, :lo12:income
	ldrsw	x4, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w2, w2, w0
	adrp	x0, expense
	add	x3, x0, :lo12:expense
	ldrsw	x4, [sp, 40]
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w2, w0
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L16
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldrsw	x3, [sp, 36]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, income
	add	x3, x0, :lo12:income
	ldrsw	x4, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w2, w2, w0
	adrp	x0, expense
	add	x3, x0, :lo12:expense
	ldrsw	x4, [sp, 40]
	ldrsw	x1, [sp, 36]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	sub	w0, w2, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L17
	mov	w1, 1
	ldr	w0, [sp, 28]
	sub	w1, w1, w0
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldrsw	x3, [sp, 40]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w1, [sp, 32]
	str	w1, [x2, x0, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L18
	mov	w1, 1
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L19
	str	wzr, [sp, 32]
	str	wzr, [sp, 44]
	b	.L20
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L21
	adrp	x0, dp
	add	x2, x0, :lo12:dp
	ldrsw	x3, [sp, 44]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L22
	ldr	w1, [sp, 32]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L23
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	beq	.L24
	mov	w0, 1
	b	.L25
	mov	w0, 0
	cmp	w0, 0
	bne	.L26
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret