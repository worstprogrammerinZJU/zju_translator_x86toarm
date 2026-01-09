	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	and	w0, w1, w0
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	ldr	w1, [sp, 12]
	ldr	w0, [sp, 8]
	orr	w0, w1, w0
	add	sp, sp, 16
	ret
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	mvn	w0, w0
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	bl	_ZStorSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	ldr	x0, [sp, 24]
	ldr	w0, [x0]
	ldr	w1, [sp, 20]
	bl	_ZStanSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [sp, 24]
	str	w1, [x0]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	w1, [sp, 20]
	str	w2, [sp, 16]
	ldr	x0, [sp, 24]
	ldr	w0, [x0, 24]
	str	w0, [sp, 44]
	ldr	w0, [sp, 16]
	bl	_ZStcoSt13_Ios_Fmtflags
	mov	w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	bl	_ZStaNRSt13_Ios_FmtflagsS_
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 20]
	bl	_ZStanSt13_Ios_FmtflagsS_
	mov	w1, w0
	ldr	x0, [sp, 24]
	add	x0, x0, 24
	bl	_ZStoRRSt13_Ios_FmtflagsS_
	ldr	w0, [sp, 44]
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	mov	w2, 260
	mov	w1, 4
	ldr	x0, [sp, 24]
	ldr	x0, [sp, 24]
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERf
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERf
	mov	x2, x0
	add	x0, sp, 20
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERf
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 24]
	fadd	s1, s1, s0
	ldr	s0, [sp, 20]
	fcmpe	s1, s0
	bgt	.L22
	b	.L16
	ldr	s1, [sp, 24]
	ldr	s0, [sp, 20]
	fadd	s1, s1, s0
	ldr	s0, [sp, 28]
	fcmpe	s1, s0
	bgt	.L23
	b	.L16
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 20]
	fadd	s1, s1, s0
	ldr	s0, [sp, 24]
	fcmpe	s1, s0
	bgt	.L24
	b	.L16
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	s1, [sp, 28]
	ldr	s0, [sp, 24]
	fadd	s1, s1, s0
	ldr	s0, [sp, 20]
	fadd	s1, s1, s0
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	fcvt	d0, s0
	str	d0, [sp, 40]
	ldr	s0, [sp, 28]
	fcvt	d0, s0
	ldr	d1, [sp, 40]
	fsub	d1, d1, d0
	ldr	d0, [sp, 40]
	fmul	d1, d1, d0
	ldr	s0, [sp, 24]
	fcvt	d0, s0
	ldr	d2, [sp, 40]
	fsub	d0, d2, d0
	fmul	d1, d1, d0
	ldr	s0, [sp, 20]
	fcvt	d0, s0
	ldr	d2, [sp, 40]
	fsub	d0, d2, d0
	fmul	d0, d1, d0
	bl	sqrt
	str	d0, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSt8ios_baseS0_E
	ldr	d0, [sp, 32]
	bl	_ZNSolsEd
	b	.L20
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L27
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L27
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