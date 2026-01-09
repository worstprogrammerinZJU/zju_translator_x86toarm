main:
	stp	x29, x30, [sp, -224]!
	mov	x29, sp
	add	x0, sp, 16
	bl	gets
	b	.L2
	add	x0, sp, 16
	bl	gets
	b	.L3
	str	wzr, [sp, 220]
	b	.L4
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 69
	bls	.L5
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 90
	bhi	.L5
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	sub	w0, w0, #5
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L6
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 64
	bls	.L7
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 69
	bhi	.L7
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	add	w0, w0, 21
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L6
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldr	w0, [sp, 220]
	add	w0, w0, 1
	str	w0, [sp, 220]
	ldrsw	x0, [sp, 220]
	add	x1, sp, 16
	ldrb	w0, [x1, x0]
	cmp	w0, 0
	bne	.L8
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 16
	bl	gets
	add	x2, sp, 16
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 16
	bl	gets
	add	x2, sp, 16
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	bl	strcmp
	cmp	w0, 0
	beq	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 224
	ret