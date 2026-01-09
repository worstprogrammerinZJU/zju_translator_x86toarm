n:
m:
t:
dfs:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	mov	w1, 42
	strb	w1, [x0]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L2
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L3
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L3
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	dfs
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L2
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L5
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L5
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dfs
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L6
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dfs
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L8
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L8
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L9
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	dfs
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, t
	add	x3, x0, :lo12:t
	sxtw	x2, w2
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L10
	ldr	w0, [sp, 28]
	add	w2, w0, 1
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	mov	w0, w2
	bl	dfs
	nop
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L12
	str	wzr, [sp, 20]
	str	wzr, [sp, 28]
	b	.L13
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, t
	add	x1, x1, :lo12:t
	add	x0, x0, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L14
	str	wzr, [sp, 28]
	b	.L15
	str	wzr, [sp, 24]
	b	.L16
	adrp	x0, t
	add	x3, x0, :lo12:t
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	add	x0, x0, x2
	ldrb	w0, [x0]
	cmp	w0, 64
	bne	.L17
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	dfs
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L18
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L19
	ldr	w1, [sp, 20]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L20
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	cmp	w0, 0
	bne	.L20
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret