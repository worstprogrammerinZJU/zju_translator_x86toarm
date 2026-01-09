main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	xzr, [sp, 72]
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 40]
	str	x0, [sp, 64]
	str	xzr, [sp, 56]
	b	.L2
	add	x0, sp, 39
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldrb	w0, [sp, 39]
	cmp	w0, 43
	bne	.L3
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 64]
	add	x0, x1, x0
	str	x0, [sp, 64]
	b	.L4
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 64]
	cmp	x1, x0
	bge	.L5
	ldr	x0, [sp, 72]
	add	x0, x0, 1
	str	x0, [sp, 72]
	b	.L4
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 64]
	sub	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 48]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	blt	.L6
	ldr	x1, [sp, 64]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	x1, [sp, 72]
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L10
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L10
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