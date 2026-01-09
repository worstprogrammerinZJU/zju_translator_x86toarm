_ZSt4ceilf:
	sub	sp, sp, #16
	str	s0, [sp, 12]
	ldr	s0, [sp, 12]
	frintp	s0, s0
	add	sp, sp, 16
	ret
_ZSt5floorf:
	sub	sp, sp, #16
	str	s0, [sp, 12]
	ldr	s0, [sp, 12]
	frintm	s0, s0
	add	sp, sp, 16
	ret
_ZSt7llroundf:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	s0, [sp, 28]
	ldr	s0, [sp, 28]
	bl	llroundf
	ldp	x29, x30, [sp], 32
	ret
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERf
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERf
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	s0, [sp, 44]
	bl	_ZNSolsEf
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	s0, [sp, 40]
	bl	_ZNSolsEf
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	mov	x19, x0
	ldr	s1, [sp, 44]
	ldr	s0, [sp, 40]
	fdiv	s0, s1, s0
	bl	_ZSt5floorf
	mov	x0, x19
	bl	_ZNSolsEf
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	ldr	s0, [sp, 44]
	bl	_ZNSolsEf
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	s0, [sp, 40]
	bl	_ZNSolsEf
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	mov	x19, x0
	ldr	s1, [sp, 44]
	ldr	s0, [sp, 40]
	fdiv	s0, s1, s0
	bl	_ZSt4ceilf
	mov	x0, x19
	bl	_ZNSolsEf
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	ldr	s0, [sp, 44]
	bl	_ZNSolsEf
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	s0, [sp, 40]
	bl	_ZNSolsEf
	mov	x2, x0
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	mov	x0, x2
	mov	x19, x0
	ldr	s1, [sp, 44]
	ldr	s0, [sp, 40]
	fdiv	s0, s1, s0
	bl	_ZSt7llroundf
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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