parent:
_Z4rooti:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L2
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bge	.L3
	b	.L4
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L5
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
	bne	.L8
	mov	w0, 1
	b	.L9
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L10
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	mov	w0, 0
	b	.L9
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L12
	mov	x2, 54464
	movk	x2, 0x1, lsl 16
	mov	w1, -1
	adrp	x0, parent
	add	x0, x0, :lo12:parent
	bl	memset
	str	wzr, [sp, 44]
	b	.L13
	add	x1, sp, 36
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	bl	_Z4rooti
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L14
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 32]
	bl	_Z5mergeii
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L15
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L16
	mov	w0, 0
	bl	_Z4rooti
	str	w0, [sp, 36]
	mov	w0, 1
	str	w0, [sp, 32]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L17
	ldr	w0, [sp, 44]
	bl	_Z4rooti
	mov	w1, w0
	ldr	w0, [sp, 36]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L18
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L19
	ldr	w0, [sp, 32]
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	cmp	w0, 0
	bne	.L20
	ldr	w0, [sp, 20]
	cmp	w0, 0
	beq	.L21
	mov	w0, 1
	b	.L22
	mov	w0, 0
	cmp	w0, 0
	bne	.L23
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret