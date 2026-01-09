_Z5printi:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	w0, [sp, 28]
	mov	w0, 1
	strb	w0, [sp, 47]
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERf
	ldr	s1, [sp, 40]
	fmov	s0, 2.0e+0
	fdiv	s1, s1, s0
	ldr	s2, [sp, 40]
	fmov	s0, 2.0e+0
	fdiv	s0, s2, s0
	fcvtzs	s0, s0
	scvtf	s0, s0
	fcmp	s1, s0
	bne	.L3
	ldr	s1, [sp, 40]
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	fcvtzs	w0, s0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L5
	ldr	s1, [sp, 40]
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	fcvt	d1, s0
	fmov	d0, 5.0e-1
	fsub	d0, d1, d0
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	strb	wzr, [sp, 47]
	b	.L2
	ldr	s1, [sp, 40]
	fmov	s0, 2.0e+0
	fdiv	s0, s1, s0
	fcvt	d1, s0
	fmov	d0, 5.0e-1
	fadd	d0, d1, d0
	fcvtzs	w0, d0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 1
	strb	w0, [sp, 47]
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	nop
	nop
	ldp	x29, x30, [sp], 48
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	bl	_Z5printi
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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