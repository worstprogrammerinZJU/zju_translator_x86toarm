r:
c:
p:
q:
dp:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	mov	w0, -1
	str	w0, [sp, 44]
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L12
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, p
	add	x2, x0, :lo12:p
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	bl	dp
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L4
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 28]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, p
	add	x2, x0, :lo12:p
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L6
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	dp
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 28]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	sxtw	x1, w1
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L8
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, p
	add	x2, x0, :lo12:p
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L8
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L9
	ldr	w0, [sp, 24]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dp
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [sp, 24]
	sub	w1, w0, #1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	sub	w0, w0, #1
	ldr	w1, [sp, 24]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, p
	add	x2, x0, :lo12:p
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w2, [x2, x0, lsl 2]
	adrp	x0, p
	add	x3, x0, :lo12:p
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	ldr	w0, [x3, x0, lsl 2]
	cmp	w2, w0
	ble	.L10
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	dp
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 24]
	add	w1, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	sxtw	x3, w1
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	add	w3, w0, 1
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x4, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x4
	str	w3, [x2, x0, lsl 2]
	b	.L1
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	wzr, [sp, 20]
	adrp	x0, c
	add	x2, x0, :lo12:c
	adrp	x0, r
	add	x1, x0, :lo12:r
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 28]
	b	.L14
	str	wzr, [sp, 24]
	b	.L15
	ldrsw	x2, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x2, x0
	lsl	x1, x0, 2
	adrp	x0, p
	add	x0, x0, :lo12:p
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L16
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L17
	str	wzr, [sp, 28]
	b	.L18
	str	wzr, [sp, 24]
	b	.L19
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	dp
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	ldr	w1, [sp, 20]
	cmp	w1, w0
	bge	.L20
	adrp	x0, q
	add	x2, x0, :lo12:q
	ldrsw	x3, [sp, 24]
	ldrsw	x1, [sp, 28]
	mov	x0, x1
	lsl	x0, x0, 1
	add	x0, x0, x1
	lsl	x0, x0, 3
	add	x0, x0, x1
	lsl	x0, x0, 2
	add	x0, x0, x3
	ldr	w0, [x2, x0, lsl 2]
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldr	w0, [x0]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	blt	.L21
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	adrp	x0, r
	add	x0, x0, :lo12:r
	ldr	w0, [x0]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L22
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret