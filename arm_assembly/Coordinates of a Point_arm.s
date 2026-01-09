main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L2
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	beq	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	bne	.L4
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	beq	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	d0, [sp, 24]
	fcmp	d0, #0.0
	bne	.L5
	ldr	d0, [sp, 16]
	fcmp	d0, #0.0
	bne	.L5
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bgt	.L16
	b	.L6
	ldr	d0, [sp, 16]
	fcmpe	d0, #0.0
	bgt	.L17
	b	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bmi	.L18
	b	.L9
	ldr	d0, [sp, 16]
	fcmpe	d0, #0.0
	bgt	.L19
	b	.L9
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	d0, [sp, 24]
	fcmpe	d0, #0.0
	bmi	.L20
	b	.L12
	ldr	d0, [sp, 16]
	fcmpe	d0, #0.0
	bmi	.L21
	b	.L12
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	b	.L3
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L24
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L24
	adrp	x0, _ZStL8__ioinit
	bl	_ZNSt8ios_base4InitC1Ev
	adrp	x0, _ZStL8__ioinit
	bl	__cxa_atexit
	nop
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -16]!
	mov	x29, sp
	mov	w1, 65535
	mov	w0, 1
	ldp	x29, x30, [sp], 16
	ret