main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	str	wzr, [sp, 40]
	ldr	w0, [sp, 28]
	str	w0, [sp, 32]
	ldr	w0, [sp, 28]
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 44]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 32]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L4
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L5
	str	wzr, [sp, 40]
	mov	w0, 3
	str	w0, [sp, 36]
	b	.L6
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	sdiv	w0, w1, w0
	ldr	w1, [sp, 44]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 36]
	sdiv	w0, w1, w0
	str	w0, [sp, 32]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 36]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 36]
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	beq	.L8
	ldr	w0, [sp, 36]
	add	w0, w0, 2
	str	w0, [sp, 36]
	ldr	w0, [sp, 32]
	cmp	w0, 1
	bgt	.L9
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 28]
	cmp	w0, 1
	beq	.L10
	ldr	w0, [sp, 44]
	sub	w0, w0, #1
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L11
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret