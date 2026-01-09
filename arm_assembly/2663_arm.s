tri:
	sub	sp, sp, #32
	str	w0, [sp, 12]
	mov	w0, 1
	str	w0, [sp, 28]
	mov	w0, 3
	str	w0, [sp, 20]
	ldr	w0, [sp, 12]
	cmp	w0, 1
	bne	.L2
	mov	w0, 3
	b	.L3
	mov	w0, 1
	str	w0, [sp, 24]
	b	.L4
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 20]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 20]
	mov	w0, w1
	lsl	w0, w0, 1
	add	w1, w0, w1
	ldr	w2, [sp, 28]
	ldr	w0, [sp, 20]
	sub	w0, w2, w0
	lsl	w0, w0, 1
	add	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 12]
	cmp	w1, w0
	blt	.L5
	ldr	w0, [sp, 20]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L7
	ldr	w0, [sp, 28]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L8
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L10
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	b	.L9
	ldr	w0, [sp, 28]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	bl	tri
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmn	w0, #1
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret