weight:
strength:
d:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 44]
	b	.L2
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	add	x3, x1, x0
	ldrsw	x0, [sp, 44]
	lsl	x1, x0, 2
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	ldrsw	x2, [sp, 44]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, d
	add	x0, x0, :lo12:d
	ldrsw	x1, [sp, 44]
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L3
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	mov	w1, w0
	mov	w0, 0
	bl	_Z5quickii
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	ldr	w0, [x0]
	neg	w0, w0
	str	w0, [sp, 36]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldr	w0, [x0]
	str	w0, [sp, 40]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L4
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	sub	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	ble	.L5
	ldr	w0, [sp, 32]
	str	w0, [sp, 36]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 44]
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L6
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
_Z5quickii:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L17
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
	ble	.L13
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bne	.L11
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
	bge	.L12
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L13
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bge	.L18
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 44]
	bl	_Z4swapii
	b	.L11
	nop
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	bl	_Z4swapii
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	ldr	w0, [sp, 28]
	bl	_Z5quickii
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	ldr	w1, [sp, 24]
	bl	_Z5quickii
	nop
	ldp	x29, x30, [sp], 48
	ret
_Z4swapii:
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
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 8]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, weight
	add	x0, x0, :lo12:weight
	ldrsw	x1, [sp, 8]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	ldrsw	x1, [sp, 8]
	ldr	w2, [x0, x1, lsl 2]
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	ldrsw	x1, [sp, 12]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, strength
	add	x0, x0, :lo12:strength
	ldrsw	x1, [sp, 8]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	nop
	add	sp, sp, 32
	ret