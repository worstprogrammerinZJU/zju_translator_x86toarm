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
_ZSt12setprecisioni:
	sub	sp, sp, #16
	str	w0, [sp, 12]
	ldr	w0, [sp, 12]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSt8ios_baseS0_E
	mov	x19, x0
	mov	w0, 6
	bl	_ZSt12setprecisioni
	mov	w1, w0
	mov	x0, x19
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERf
	mov	x2, x0
	add	x0, sp, 44
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERf
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERf
	mov	x2, x0
	add	x0, sp, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERf
	ldr	s1, [sp, 48]
	ldr	s0, [sp, 36]
	fmul	s0, s1, s0
	str	s0, [sp, 60]
	ldr	s1, [sp, 44]
	ldr	s0, [sp, 36]
	fsub	s1, s1, s0
	ldr	s0, [sp, 40]
	fmul	s0, s1, s0
	str	s0, [sp, 56]
	ldr	s1, [sp, 44]
	ldr	s0, [sp, 36]
	fsub	s1, s1, s0
	ldr	s2, [sp, 48]
	ldr	s0, [sp, 40]
	fsub	s0, s2, s0
	fmul	s1, s1, s0
	fmov	s0, 5.0e-1
	fmul	s0, s1, s0
	str	s0, [sp, 52]
	ldr	s1, [sp, 60]
	ldr	s0, [sp, 56]
	fadd	s1, s1, s0
	ldr	s0, [sp, 52]
	fadd	s0, s1, s0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEf
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L21
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L21
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