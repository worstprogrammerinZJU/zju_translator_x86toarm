d:
e:
main:
	stp	x29, x30, [sp, -112]!
	mov	x29, sp
	mov	w0, 1
	str	w0, [sp, 108]
	b	.L2
	ldr	w0, [sp, 108]
	bl	cal
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 108]
	cmp	w0, 9
	ble	.L3
	add	x1, sp, 100
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L4
	ldr	w1, [sp, 100]
	ldr	w0, [sp, 104]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 104]
	str	w0, [sp, 108]
	ldr	w0, [sp, 100]
	str	w0, [sp, 104]
	ldr	w0, [sp, 108]
	str	w0, [sp, 100]
	ldr	w0, [sp, 104]
	sub	w0, w0, #1
	add	x1, sp, 56
	bl	count
	ldr	w0, [sp, 100]
	add	x1, sp, 16
	bl	count
	str	wzr, [sp, 108]
	b	.L6
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w1, [x1, x0]
	ldrsw	x0, [sp, 108]
	lsl	x0, x0, 2
	add	x2, sp, 56
	ldr	w0, [x2, x0]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldr	w0, [sp, 108]
	add	w0, w0, 1
	str	w0, [sp, 108]
	ldr	w0, [sp, 108]
	cmp	w0, 8
	ble	.L7
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 92]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x1, sp, 100
	add	x0, sp, 104
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 104]
	cmp	w0, 0
	bne	.L8
	ldr	w0, [sp, 100]
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 112
	ret
count:
	sub	sp, sp, #48
	str	w0, [sp, 12]
	str	x1, [sp]
	mov	w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 12]
	cmp	w0, 0
	bne	.L11
	ldr	x0, [sp]
	mov	w1, 1
	str	w1, [x0]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L12
	ldrsw	x0, [sp, 44]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	str	wzr, [x0]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 9
	ble	.L13
	b	.L10
	str	wzr, [sp, 44]
	b	.L15
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	cmp	w1, w0
	bge	.L16
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	str	wzr, [sp, 40]
	b	.L17
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x2, x1, x0
	adrp	x0, d
	add	x3, x0, :lo12:d
	ldrsw	x4, [sp, 40]
	ldrsw	x1, [sp, 44]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	str	w0, [x2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 9
	ble	.L18
	b	.L19
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	sdiv	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	b	.L20
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w2, [x0]
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x3, [sp]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	blt	.L21
	str	wzr, [sp, 40]
	b	.L22
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 28]
	mul	w1, w1, w0
	ldr	w0, [sp, 44]
	sub	w3, w0, #1
	adrp	x0, e
	add	x0, x0, :lo12:e
	sxtw	x3, w3
	ldr	w0, [x0, x3, lsl 2]
	mul	w1, w1, w0
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x3, [sp]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 9
	ble	.L23
	adrp	x0, e
	add	x0, x0, :lo12:e
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w0, [sp, 12]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 12]
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w2, [x0]
	ldr	w0, [sp, 12]
	add	w1, w0, 1
	ldrsw	x0, [sp, 32]
	lsl	x0, x0, 2
	ldr	x3, [sp]
	add	x0, x3, x0
	add	w1, w2, w1
	str	w1, [x0]
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	str	wzr, [sp, 36]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bgt	.L24
	str	wzr, [sp, 40]
	b	.L25
	ldrsw	x0, [sp, 40]
	lsl	x0, x0, 2
	ldr	x1, [sp]
	add	x0, x1, x0
	ldr	w1, [x0]
	add	w1, w1, 1
	str	w1, [x0]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	ble	.L26
	add	sp, sp, 48
	ret
cal:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L28
	str	wzr, [sp, 28]
	b	.L29
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 28]
	add	x1, x1, 10
	mov	w2, 1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L30
	b	.L36
	str	wzr, [sp, 28]
	b	.L32
	adrp	x0, d
	add	x2, x0, :lo12:d
	ldrsw	x3, [sp, 28]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	sub	w1, w0, #1
	adrp	x0, d
	add	x3, x0, :lo12:d
	ldrsw	x4, [sp, 28]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	add	w3, w2, w0
	adrp	x0, d
	add	x2, x0, :lo12:d
	ldrsw	x4, [sp, 28]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L33
	adrp	x0, d
	add	x2, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x2, x0
	ldr	w1, [x0]
	ldr	w0, [sp, 12]
	sub	w2, w0, #1
	ldr	w0, [sp, 12]
	sub	w3, w0, #1
	adrp	x0, e
	add	x0, x0, :lo12:e
	sxtw	x3, w3
	ldr	w3, [x0, x3, lsl 2]
	ldr	w0, [sp, 12]
	sub	w4, w0, #2
	adrp	x0, e
	add	x0, x0, :lo12:e
	sxtw	x4, w4
	ldr	w0, [x0, x4, lsl 2]
	sub	w0, w3, w0
	mul	w0, w2, w0
	add	w2, w1, w0
	adrp	x0, d
	add	x3, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x3, x0
	str	w2, [x0]
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L34
	adrp	x0, d
	add	x2, x0, :lo12:d
	ldrsw	x3, [sp, 28]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x3
	ldr	w1, [x2, x0, lsl 2]
	ldr	w0, [sp, 12]
	sub	w2, w0, #1
	adrp	x0, e
	add	x0, x0, :lo12:e
	sxtw	x2, w2
	ldr	w2, [x0, x2, lsl 2]
	ldr	w0, [sp, 12]
	sub	w3, w0, #1
	ldr	w0, [sp, 12]
	sub	w4, w0, #1
	adrp	x0, e
	add	x0, x0, :lo12:e
	sxtw	x4, w4
	ldr	w4, [x0, x4, lsl 2]
	ldr	w0, [sp, 12]
	sub	w5, w0, #2
	adrp	x0, e
	add	x0, x0, :lo12:e
	sxtw	x5, w5
	ldr	w0, [x0, x5, lsl 2]
	sub	w0, w4, w0
	mul	w0, w3, w0
	add	w0, w2, w0
	add	w3, w1, w0
	adrp	x0, d
	add	x2, x0, :lo12:d
	ldrsw	x4, [sp, 28]
	ldrsw	x1, [sp, 12]
	mov	x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 9
	ble	.L35
	nop
	add	sp, sp, 32
	ret