f:
d:
max:
min:
n:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	adrp	x0, n
	add	x1, x0, :lo12:n
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L2
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, f
	add	x1, x1, :lo12:f
	add	x4, x0, x1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, f
	add	x1, x1, :lo12:f
	add	x0, x0, x1
	add	x2, x0, 4
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	adrp	x1, f
	add	x1, x1, :lo12:f
	add	x0, x0, x1
	add	x0, x0, 8
	mov	x3, x0
	mov	x1, x4
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w0, [x0, 4]
	add	w2, w0, 1
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	str	w2, [x0, 4]
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L3
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, min
	add	x0, x0, :lo12:min
	str	w1, [x0]
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	cmp	w1, w0
	ble	.L4
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	adrp	x0, max
	add	x0, x0, :lo12:max
	str	w1, [x0]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	bl	bellman_ford
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
bellman_ford:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	str	w0, [sp, 28]
	b	.L8
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 28]
	mov	w2, 31073
	movk	w2, 0xfffe, lsl 16
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L9
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	str	wzr, [x0, x1, lsl 2]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	str	w0, [sp, 28]
	b	.L10
	str	wzr, [sp, 20]
	str	wzr, [sp, 24]
	b	.L11
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 31073
	movk	w0, 0xfffe, lsl 16
	cmp	w1, w0
	beq	.L25
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0, 4]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, f
	add	x3, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x3, x0
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w3, [x0, x1, lsl 2]
	adrp	x0, f
	add	x4, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w0, [x0, 8]
	add	w0, w3, w0
	cmp	w2, w0
	bge	.L13
	mov	w0, 1
	str	w0, [sp, 20]
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w3, [x0, x1, lsl 2]
	adrp	x0, f
	add	x2, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	ldr	w2, [x0, 8]
	adrp	x0, f
	add	x4, x0, :lo12:f
	ldrsw	x1, [sp, 24]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x4, x0
	ldr	w1, [x0, 4]
	add	w2, w3, w2
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	b	.L13
	nop
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, n
	add	x0, x0, :lo12:n
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L14
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	str	w0, [sp, 24]
	b	.L15
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 31073
	movk	w0, 0xfffe, lsl 16
	cmp	w1, w0
	beq	.L16
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 24]
	add	w2, w0, 1
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L16
	ldr	w0, [sp, 24]
	add	w3, w0, 1
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w3
	str	w2, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L17
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	str	w0, [sp, 24]
	b	.L18
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	mov	w0, 31073
	movk	w0, 0xfffe, lsl 16
	cmp	w1, w0
	beq	.L19
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	sub	w1, w0, #1
	ldr	w0, [sp, 24]
	sub	w2, w0, #1
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L19
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 24]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	sub	w1, w1, #1
	sub	w2, w0, #1
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	mov	w0, 1
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	str	w0, [sp, 24]
	adrp	x0, min
	add	x0, x0, :lo12:min
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bgt	.L20
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L26
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L23
	b	.L22
	nop
	adrp	x0, max
	add	x0, x0, :lo12:max
	ldr	w1, [x0]
	adrp	x0, d
	add	x0, x0, :lo12:d
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	add	sp, sp, 32
	ret