P:
Pi:
queue:
m:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	adrp	x0, P
	add	x0, x0, :lo12:P
	bl	strlen
	mov	w1, w0
	adrp	x0, m
	add	x0, x0, :lo12:m
	str	w1, [x0]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, P
	add	x0, x0, :lo12:P
	bl	Compute_PREFIX
	str	wzr, [sp, 24]
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L3
	adrp	x0, Pi
	add	x0, x0, :lo12:Pi
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	str	w2, [sp, 24]
	add	w2, w1, 1
	adrp	x1, queue
	add	x1, x1, :lo12:queue
	sxtw	x0, w0
	str	w2, [x1, x0, lsl 2]
	adrp	x0, Pi
	add	x0, x0, :lo12:Pi
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, Pi
	add	x0, x0, :lo12:Pi
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bge	.L4
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L5
	adrp	x0, queue
	add	x0, x0, :lo12:queue
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L6
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	adrp	x0, P
	add	x1, x0, :lo12:P
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
Compute_PREFIX:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	w1, [sp, 4]
	mov	w0, -1
	str	w0, [sp, 24]
	adrp	x0, Pi
	add	x0, x0, :lo12:Pi
	mov	w1, -1
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L10
	adrp	x0, Pi
	add	x0, x0, :lo12:Pi
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	blt	.L12
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 28]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L13
	ldrsw	x0, [sp, 24]
	add	x0, x0, 1
	ldr	x1, [sp, 8]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldrsw	x0, [sp, 28]
	ldr	x2, [sp, 8]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L14
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, Pi
	add	x0, x0, :lo12:Pi
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 4]
	cmp	w1, w0
	blt	.L11
	nop
	nop
	add	sp, sp, 32
	ret