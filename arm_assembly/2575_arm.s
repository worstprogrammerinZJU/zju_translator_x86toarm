flag:
_Z3fabii:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	cmp	w1, w0
	ble	.L2
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	sub	w0, w1, w0
	b	.L3
	ldr	w1, [sp, 8]
	ldr	w0, [sp, 12]
	sub	w0, w1, w0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L5
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	mov	x2, 3000
	mov	w1, 0
	adrp	x0, flag
	add	x0, x0, :lo12:flag
	bl	memset
	mov	w0, 1
	strb	w0, [sp, 43]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L6
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 24]
	bl	_Z3fabii
	str	w0, [sp, 36]
	ldr	w0, [sp, 36]
	cmp	w0, 0
	ble	.L7
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	bge	.L7
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 36]
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L7
	adrp	x0, flag
	add	x1, x0, :lo12:flag
	ldrsw	x0, [sp, 36]
	mov	w2, 1
	strb	w2, [x1, x0]
	b	.L8
	strb	wzr, [sp, 43]
	ldr	w0, [sp, 24]
	str	w0, [sp, 28]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	blt	.L9
	ldrb	w0, [sp, 43]
	cmp	w0, 1
	bne	.L10
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L5
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret