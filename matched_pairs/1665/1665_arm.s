main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	wzr, [sp, 60]
	add	x2, sp, 16
	add	x1, sp, 36
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	b	.L2
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	d0, [sp, 24]
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fmul	d1, d0, d1
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	fmul	d0, d1, d0
	mov	x0, 263882790666240
	movk	x0, 0x40ee, lsl 48
	fmov	d1, x0
	fdiv	d0, d0, d1
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	mov	x0, 35184372088832
	movk	x0, 0x40ac, lsl 48
	fmov	d1, x0
	fmul	d1, d0, d1
	ldr	d0, [sp, 16]
	fdiv	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 48]
	ldr	w1, [sp, 60]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x2, sp, 16
	add	x1, sp, 36
	add	x0, sp, 24
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L3
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	bne	.L4
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret