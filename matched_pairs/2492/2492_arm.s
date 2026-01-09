p:
s:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	wzr, [sp, 48]
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 56]
	b	.L2
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	str	wzr, [sp, 60]
	ldr	w0, [sp, 36]
	str	w0, [sp, 52]
	b	.L3
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 52]
	mov	w2, -1
	str	w2, [x0, x1, lsl 2]
	adrp	x0, s
	add	x0, x0, :lo12:s
	ldrsw	x1, [sp, 52]
	str	wzr, [x0, x1, lsl 2]
	ldr	w0, [sp, 52]
	sub	w0, w0, #1
	str	w0, [sp, 52]
	ldr	w0, [sp, 52]
	cmp	w0, 0
	bgt	.L4
	str	wzr, [sp, 52]
	b	.L5
	add	x1, sp, 24
	add	x0, sp, 28
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L6
	ldr	w0, [sp, 28]
	bl	root
	str	w0, [sp, 44]
	ldr	w0, [sp, 24]
	bl	root
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 60]
	ldr	w1, [sp, 28]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L8
	ldr	w1, [sp, 28]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	ldr	w1, [sp, 40]
	bl	merge
	b	.L9
	ldr	w1, [sp, 28]
	ldr	w2, [sp, 24]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 24]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	beq	.L10
	ldr	w1, [sp, 24]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	ldr	w0, [x0, x1, lsl 2]
	mov	w1, w0
	ldr	w0, [sp, 44]
	bl	merge
	b	.L6
	ldr	w1, [sp, 24]
	ldr	w2, [sp, 28]
	adrp	x0, s
	add	x0, x0, :lo12:s
	sxtw	x1, w1
	str	w2, [x0, x1, lsl 2]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 48]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bne	.L12
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L13
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 56]
	add	w0, w0, 1
	str	w0, [sp, 56]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 56]
	cmp	w1, w0
	blt	.L14
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
root:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	str	w0, [sp, 28]
	b	.L17
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 28]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w0, [x0, x1, lsl 2]
	cmp	w0, 0
	bgt	.L18
	b	.L19
	ldr	w0, [sp, 12]
	str	w0, [sp, 24]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 12]
	ldr	w0, [x0, x1, lsl 2]
	str	w0, [sp, 12]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bne	.L20
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
	beq	.L26
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	cmp	w1, w0
	bge	.L25
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x2, [sp, 24]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w2, [sp, 28]
	str	w2, [x0, x1, lsl 2]
	b	.L22
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	ldr	w1, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x2, [sp, 28]
	ldr	w0, [x0, x2, lsl 2]
	add	w2, w1, w0
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	adrp	x0, p
	add	x0, x0, :lo12:p
	ldrsw	x1, [sp, 28]
	ldr	w2, [sp, 24]
	str	w2, [x0, x1, lsl 2]
	b	.L22
	nop
	ldp	x29, x30, [sp], 32
	ret