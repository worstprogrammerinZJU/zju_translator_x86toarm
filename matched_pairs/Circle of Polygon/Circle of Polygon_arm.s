_ZSt12setprecisioni:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	d8, [sp, 16]
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	ldr	d1, [sp, 40]
	fmov	d0, 2.0e+0
	fdiv	d8, d1, d0
	ldr	d0, [sp, 48]
	fmov	d1, 1.0e+0
	fdiv	d0, d1, d0
	adrp	x0, .LC0
	ldr	d1, [x0, #:lo12:.LC0]
	fmul	d0, d0, d1
	bl	sin
	fdiv	d0, d8, d0
	str	d0, [sp, 56]
	mov	w0, 11
	bl	_ZSt12setprecisioni
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	d0, [sp, 56]
	adrp	x1, .LC0
	ldr	d1, [x1, #:lo12:.LC0]
	fmul	d1, d0, d1
	ldr	d0, [sp, 56]
	fmul	d0, d1, d0
	bl	_ZNSolsEd
	mov	w0, 0
	ldr	d8, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L7
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L7
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