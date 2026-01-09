min:
m:
t:
wise:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 28]
	b	.L3
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, m
	add	x0, x0, :lo12:m
	add	x3, x1, x0
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, t
	add	x0, x0, :lo12:t
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L4
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	str	wzr, [x0]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L5
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L6
	ldr	w1, [sp, 24]
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	sxtw	x1, w1
	add	x1, x1, 301
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	b	.L7
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	sxtw	x1, w1
	add	x1, x1, 301
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	ldrsw	x1, [sp, 28]
	add	x1, x1, 301
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L8
	adrp	x0, min
	add	x0, x0, :lo12:min
	mov	w1, 51712
	movk	w1, 0x3b9a, lsl 16
	str	w1, [x0]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w5, 0
	mov	w4, 0
	mov	w3, 0
	mov	w2, 0
	mov	w1, w0
	mov	w0, 1
	bl	dp
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
dp:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	w0, [sp, 44]
	str	w1, [sp, 40]
	str	w2, [sp, 36]
	str	w3, [sp, 32]
	str	w4, [sp, 28]
	str	w5, [sp, 24]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	bge	.L16
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	ble	.L14
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w1, [sp, 32]
	str	w1, [x0]
	b	.L11
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L15
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	adrp	x0, t
	add	x0, x0, :lo12:t
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	add	w6, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	ldr	w5, [sp, 24]
	mov	w4, 0
	mov	w3, w0
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 40]
	mov	w0, w6
	bl	dp
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bgt	.L11
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 36]
	add	w1, w1, w0
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	ldrsw	x2, [sp, 40]
	add	x2, x2, 301
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 40]
	sub	w6, w0, #1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w5, w0
	mov	w4, 1
	mov	w3, w1
	ldr	w2, [sp, 60]
	mov	w1, w6
	ldr	w0, [sp, 44]
	bl	dp
	b	.L11
	adrp	x0, t
	add	x0, x0, :lo12:t
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 40]
	sub	w6, w0, #1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	ldr	w5, [sp, 24]
	mov	w4, 1
	mov	w3, w0
	ldr	w2, [sp, 60]
	mov	w1, w6
	ldr	w0, [sp, 44]
	bl	dp
	ldr	w0, [sp, 24]
	cmp	w0, 1
	bgt	.L11
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	sxtw	x1, w1
	add	x1, x1, 301
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 36]
	add	w1, w1, w0
	adrp	x0, wise
	add	x0, x0, :lo12:wise
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	add	w6, w0, 1
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 60]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	add	w1, w1, w0
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w5, w0
	mov	w4, 0
	mov	w3, w1
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 40]
	mov	w0, w6
	bl	dp
	b	.L11
	nop
	ldp	x29, x30, [sp], 64
	ret