main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERf
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L2
	ldr	s1, [sp, 24]
	ldr	s0, [sp, 28]
	scvtf	s0, s0
	fdiv	s1, s1, s0
	ldr	s2, [sp, 24]
	ldr	s0, [sp, 28]
	scvtf	s0, s0
	fdiv	s0, s2, s0
	fcvtzs	s0, s0
	scvtf	s0, s0
	fcmp	s1, s0
	bne	.L3
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	s0, [sp, 28]
	scvtf	s1, s0
	ldr	s0, [sp, 24]
	fcmpe	s1, s0
	bls	.L4
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L8
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L8
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