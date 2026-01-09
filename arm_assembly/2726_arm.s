d:
c:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 44]
	b	.L3
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, d
	add	x0, x0, :lo12:d
	add	x3, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, c
	add	x0, x0, :lo12:c
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L4
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, 0
	bl	quick
	str	wzr, [sp, 36]
	mov	w0, 10001
	str	w0, [sp, 32]
	str	wzr, [sp, 44]
	b	.L5
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 40]
	b	.L6
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L7
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 40]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bge	.L8
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	beq	.L9
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L10
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 32]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
quick:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L23
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	ble	.L19
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L17
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x2, [sp, 40]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L18
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L19
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L24
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	swap
	b	.L17
	nop
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	bl	swap
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	quick
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	quick
	nop
	ldp	x29, x30, [sp], 48
	ret
swap:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 8]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 8]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, c
	add	x0, x0, :lo12:c
	ldrsw	x1, [sp, 8]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	nop
	add	sp, sp, 32
	ret