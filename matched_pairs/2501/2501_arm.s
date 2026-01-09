main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	xzr, [sp, 72]
	str	xzr, [sp, 40]
	str	xzr, [sp, 64]
	b	.L2
	bl	getchar
	strb	w0, [sp, 63]
	ldrb	w0, [sp, 24]
	sub	w0, w0, #48
	scvtf	d1, w0
	fmov	d0, 1.0e+1
	fmul	d1, d1, d0
	ldrb	w0, [sp, 25]
	sub	w0, w0, #48
	scvtf	d0, w0
	fadd	d1, d1, d0
	ldrb	w0, [sp, 27]
	sub	w1, w0, #48
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldrb	w0, [sp, 28]
	sub	w0, w0, #48
	add	w0, w1, w0
	scvtf	d0, w0
	mov	x0, 4633641066610819072
	fmov	d2, x0
	fdiv	d0, d0, d2
	fadd	d1, d1, d0
	ldrb	w0, [sp, 30]
	sub	w1, w0, #48
	mov	w0, w1
	lsl	w0, w0, 2
	add	w0, w0, w1
	lsl	w0, w0, 1
	mov	w1, w0
	ldrb	w0, [sp, 31]
	sub	w0, w0, #48
	add	w0, w1, w0
	scvtf	d0, w0
	mov	x0, 35184372088832
	movk	x0, 0x40ac, lsl 48
	fmov	d2, x0
	fdiv	d0, d0, d2
	fadd	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 64]
	fsub	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d0, d1, d0
	ldr	d1, [sp, 72]
	fadd	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d0, [sp, 48]
	str	d0, [sp, 64]
	ldrb	w0, [sp, 63]
	cmp	w0, 10
	bne	.L3
	add	x0, sp, 24
	ldr	d0, [sp, 72]
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	ldrb	w0, [sp, 63]
	cmp	w0, 32
	bne	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L4
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret