s:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	wzr, [sp, 36]
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 32]
	str	w0, [sp, 40]
	b	.L3
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 40]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bgt	.L4
	str	wzr, [sp, 40]
	b	.L5
	add	x1, sp, 20
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 20]
	bl	merge
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L6
	mov	w0, 1
	str	w0, [sp, 40]
	str	wzr, [sp, 44]
	b	.L7
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 40]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bge	.L8
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L9
	ldr	w2, [sp, 44]
	ldr	w1, [sp, 36]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x1, sp, 28
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 32]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
root:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L13
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L14
	b	.L15
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, s
	add	x0, x0, :lo12:s
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
merge:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	bl	root
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	bl	root
	str	w0, [sp, 24]
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	beq	.L22
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L21
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L18
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L18
	nop
	ldp	x29, x30, [sp], 32
	ret