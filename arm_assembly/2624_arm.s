main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	b	.L2
	mov	w0, 1
	str	w0, [sp, 92]
	b	.L3
	add	x1, sp, 24
	ldrsw	x0, [sp, 92]
	lsl	x0, x0, 3
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 92]
	cmp	w0, 7
	ble	.L4
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 40]
	fcmp	d1, d0
	bne	.L5
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 48]
	fcmp	d1, d0
	bne	.L5
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 80]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 56]
	fadd	d1, d0, d0
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 64]
	fadd	d1, d0, d0
	ldr	d0, [sp, 48]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 40]
	ldr	d1, [sp, 48]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	ldr	d1, [sp, 56]
	ldr	d0, [sp, 24]
	fcmp	d1, d0
	bne	.L6
	ldr	d1, [sp, 64]
	ldr	d0, [sp, 32]
	fcmp	d1, d0
	bne	.L6
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 72]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 80]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 64]
	ldr	d0, [sp, 56]
	fadd	d1, d0, d0
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 64]
	fadd	d1, d0, d0
	ldr	d0, [sp, 32]
	fsub	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 32]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	ldr	d1, [sp, 72]
	ldr	d0, [sp, 24]
	fcmp	d1, d0
	bne	.L7
	ldr	d1, [sp, 80]
	ldr	d0, [sp, 32]
	fcmp	d1, d0
	bne	.L7
	ldr	d1, [sp, 40]
	ldr	d0, [sp, 56]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 64]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	ldr	d0, [sp, 72]
	fadd	d1, d0, d0
	ldr	d0, [sp, 24]
	fsub	d0, d1, d0
	str	d0, [sp, 24]
	ldr	d0, [sp, 80]
	fadd	d1, d0, d0
	ldr	d0, [sp, 32]
	fsub	d0, d1, d0
	str	d0, [sp, 32]
	ldr	d0, [sp, 24]
	ldr	d1, [sp, 32]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	b	.L2
	ldr	d1, [sp, 24]
	ldr	d0, [sp, 56]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 72]
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 64]
	fadd	d1, d1, d0
	fmov	d0, 2.0e+0
	fdiv	d0, d1, d0
	str	d0, [sp, 80]
	ldr	d0, [sp, 72]
	fadd	d1, d0, d0
	ldr	d0, [sp, 40]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 80]
	fadd	d1, d0, d0
	ldr	d0, [sp, 48]
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 40]
	ldr	d1, [sp, 48]
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 96
	ret