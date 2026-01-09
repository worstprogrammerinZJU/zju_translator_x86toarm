Parent:
x:
y:
flag:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x1, sp, 48
	add	x0, sp, 44
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 60]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 60]
	strb	wzr, [x1, x0]
	ldrsw	x0, [sp, 60]
	lsl	x1, x0, 2
	adrp	x0, x
	add	x0, x0, :lo12:x
	add	x3, x1, x0
	ldrsw	x0, [sp, 60]
	lsl	x1, x0, 2
	adrp	x0, y
	add	x0, x0, :lo12:y
	add	x0, x1, x0
	mov	x2, x0
	mov	x1, x3
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L3
	b	.L4
	ldrb	w0, [sp, 32]
	cmp	w0, 79
	bne	.L5
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w2, [sp, 52]
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	sxtw	x0, w2
	mov	w2, 1
	strb	w2, [x1, x0]
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L6
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 60]
	ldrb	w0, [x1, x0]
	cmp	w0, 1
	bne	.L7
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x1, [sp, 60]
	ldr	w1, [x0, x1, lsl 2]
	ldr	w2, [sp, 52]
	adrp	x0, x
	add	x0, x0, :lo12:x
	sxtw	x2, w2
	ldr	w0, [x0, x2, lsl 2]
	sub	w1, w1, w0
	adrp	x0, x
	add	x0, x0, :lo12:x
	ldrsw	x2, [sp, 60]
	ldr	w2, [x0, x2, lsl 2]
	ldr	w3, [sp, 52]
	adrp	x0, x
	add	x0, x0, :lo12:x
	sxtw	x3, w3
	ldr	w0, [x0, x3, lsl 2]
	sub	w0, w2, w0
	mul	w1, w1, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x2, [sp, 60]
	ldr	w2, [x0, x2, lsl 2]
	ldr	w3, [sp, 52]
	adrp	x0, y
	add	x0, x0, :lo12:y
	sxtw	x3, w3
	ldr	w0, [x0, x3, lsl 2]
	sub	w2, w2, w0
	adrp	x0, y
	add	x0, x0, :lo12:y
	ldrsw	x3, [sp, 60]
	ldr	w3, [x0, x3, lsl 2]
	ldr	w4, [sp, 52]
	adrp	x0, y
	add	x0, x0, :lo12:y
	sxtw	x4, w4
	ldr	w0, [x0, x4, lsl 2]
	sub	w0, w3, w0
	mul	w0, w2, w0
	add	w1, w1, w0
	ldr	w2, [sp, 48]
	ldr	w0, [sp, 48]
	mul	w0, w2, w0
	cmp	w1, w0
	bgt	.L7
	ldr	w0, [sp, 52]
	mov	w1, w0
	ldr	w0, [sp, 60]
	bl	_Z5mergeii
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L8
	b	.L4
	add	x1, sp, 52
	add	x0, sp, 56
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 56]
	bl	_Z4rooti
	mov	w19, w0
	ldr	w0, [sp, 52]
	bl	_Z4rooti
	cmp	w19, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L9
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L4
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	__isoc99_scanf
	cmn	w0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
_Z4rooti:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L13
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L14
	b	.L15
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L16
	ldr	w0, [sp, 28]
	add	sp, sp, 32
	ret
_Z5mergeii:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	_Z4rooti
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	bl	_Z4rooti
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	beq	.L22
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L21
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L18
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, Parent
	add	x0, x0, :lo12:Parent
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L18
	nop
	ldp	x29, x30, [sp], 32
	ret