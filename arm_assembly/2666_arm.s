main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	b	.L2
	ldr	w0, [sp, 36]
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 32]
	scvtf	d0, w0
	str	d0, [sp, 56]
	ldr	d0, [sp, 56]
	adrp	x0, .LC3
	ldr	d1, [x0, #:lo12:.LC3]
	fmul	d0, d0, d1
	str	d0, [sp, 56]
	adrp	x0, .LC4
	ldr	d1, [x0, #:lo12:.LC4]
	ldr	d0, [sp, 56]
	fdiv	d0, d0, d1
	str	d0, [sp, 56]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	log
	str	d0, [sp, 48]
	ldr	d1, [sp, 48]
	ldr	d0, [sp, 56]
	fadd	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	bl	exp
	fmov	d1, d0
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	fsub	d0, d1, d0
	str	d0, [sp, 48]
	ldr	w0, [sp, 36]
	scvtf	d0, w0
	ldr	d1, [sp, 48]
	fdiv	d0, d1, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	mov	x0, 149533581377536
	movk	x0, 0x40c3, lsl 48
	fmov	d1, x0
	fcmpe	d0, d1
	bls	.L9
	b	.L10
	ldr	d1, [sp, 48]
	fmov	d0, 5.0e-1
	fadd	d0, d1, d0
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	b	.L2
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	add	x2, sp, 28
	add	x1, sp, 32
	add	x0, sp, 36
	mov	x3, x2
	mov	x2, x1
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	__isoc99_scanf
	cmp	w0, 0
	bne	.L7
	b	.L4
	nop
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret