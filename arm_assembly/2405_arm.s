main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	b	.L2
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d0, [sp, 32]
	fmul	d1, d1, d0
	ldr	d2, [sp, 24]
	fmov	d0, 6.0e+0
	fmul	d0, d2, d0
	adrp	x0, .LC2
	ldr	d2, [x0, #:lo12:.LC2]
	fdiv	d0, d0, d2
	fsub	d0, d1, d0
	mov	x0, 6148914691236517205
	movk	x0, 0x3fd5, lsl 48
	fmov	d1, x0
	bl	pow
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x1, sp, 24
	add	x0, sp, 32
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmp	w0, 0
	beq	.L3
	ldr	d0, [sp, 32]
	fcmp	d0, #0.0
	bne	.L4
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L4
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret