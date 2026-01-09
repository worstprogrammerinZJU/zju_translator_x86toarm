_ZSt4ceilf:
	sub	sp, sp, #16
	str	s0, [sp, 12]
	ldr	s0, [sp, 12]
	frintp	s0, s0
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERf
	ldr	s0, [sp, 28]
	mov	w0, 1120403456
	fmov	s1, w0
	fdiv	s0, s0, s1
	bl	_ZSt4ceilf
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEf
	mov	w0, 0
	ldp	x29, x30, [sp], 32
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