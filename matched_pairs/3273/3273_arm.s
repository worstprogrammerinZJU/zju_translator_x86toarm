Money:
n:
m:
search:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 24]
	str	wzr, [sp, 20]
	str	wzr, [sp, 28]
	b	.L2
	adrp	x0, Money
	add	x0, x0, :lo12:Money
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L3
	adrp	x0, Money
	add	x0, x0, :lo12:Money
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L4
	adrp	x0, Money
	add	x0, x0, :lo12:Money
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	adrp	x0, m
	add	x0, x0, :lo12:m
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 24]
	str	wzr, [sp, 20]
	adrp	x0, m
	add	x2, x0, :lo12:m
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L9
	ldrsw	x0, [sp, 28]
	lsl	x1, x0, 2
	adrp	x0, Money
	add	x0, x0, :lo12:Money
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, Money
	add	x0, x0, :lo12:Money
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 20]
	adrp	x0, Money
	add	x0, x0, :lo12:Money
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L10
	adrp	x0, Money
	add	x0, x0, :lo12:Money
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 24]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L11
	b	.L12
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	bl	search
	cmp	w0, 1
	bne	.L13
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 24]
	b	.L12
	ldr	w0, [sp, 28]
	str	w0, [sp, 20]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	cmp	w1, w0
	blt	.L14
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret