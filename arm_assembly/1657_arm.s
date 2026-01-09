main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	str	wzr, [sp, 48]
	b	.L2
	add	x1, sp, 16
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	ldrb	w1, [sp, 24]
	ldrb	w0, [sp, 16]
	cmp	w1, w0
	bls	.L3
	ldrb	w0, [sp, 24]
	mov	w1, w0
	ldrb	w0, [sp, 16]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	b	.L4
	ldrb	w0, [sp, 16]
	mov	w1, w0
	ldrb	w0, [sp, 24]
	sub	w0, w1, w0
	str	w0, [sp, 44]
	ldrb	w1, [sp, 25]
	ldrb	w0, [sp, 17]
	cmp	w1, w0
	bls	.L5
	ldrb	w0, [sp, 25]
	mov	w1, w0
	ldrb	w0, [sp, 17]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	b	.L6
	ldrb	w0, [sp, 17]
	mov	w1, w0
	ldrb	w0, [sp, 25]
	sub	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 44]
	ldr	w2, [sp, 40]
	ldr	w1, [sp, 40]
	cmp	w2, w0
	csel	w0, w1, w0, ge
	str	w0, [sp, 36]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L7
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L7
	str	wzr, [sp, 60]
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	b	.L8
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	add	w0, w1, w0
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L9
	mov	w0, -1
	str	w0, [sp, 52]
	mov	w0, 2
	str	w0, [sp, 60]
	b	.L10
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L11
	mov	w0, 1
	str	w0, [sp, 52]
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L10
	mov	w0, 2
	str	w0, [sp, 52]
	mov	w0, 2
	str	w0, [sp, 60]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	beq	.L12
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L13
	mov	w0, 1
	str	w0, [sp, 56]
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L8
	mov	w0, 2
	str	w0, [sp, 56]
	ldr	w3, [sp, 56]
	ldr	w2, [sp, 60]
	ldr	w1, [sp, 36]
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	ldr	w0, [sp, 52]
	cmn	w0, #1
	bne	.L14
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	b	.L15
	ldr	w1, [sp, 52]
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	ldr	w0, [sp, 48]
	add	w0, w0, 1
	str	w0, [sp, 48]
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 48]
	cmp	w1, w0
	blt	.L16
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret