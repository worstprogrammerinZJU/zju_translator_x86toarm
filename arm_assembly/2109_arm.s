main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	b	.L2
	ldr	d2, [sp, 16]
	ldr	d0, [sp, 24]
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	fmov	d1, d0
	fmov	d0, d2
	bl	pow
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	add	x1, sp, 16
	add	x0, sp, 24
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	__isoc99_scanf
	cmn	w0, #1
	bne	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret