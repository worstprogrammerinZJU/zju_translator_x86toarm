main:
	stp	x29, x30, [sp, -192]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 64
	add	x0, sp, 32
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	add	x0, sp, 64
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEm
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x19
	bl	_ZNSolsEm
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x1, sp, 32
	add	x0, sp, 64
	add	x2, sp, 96
	mov	x8, x2
	add	x0, sp, 96
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 96
	add	x0, sp, 32
	mov	x1, 0
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	mov	x19, x0
	add	x0, sp, 64
	add	x1, sp, 128
	mov	x8, x1
	mov	x2, -1
	mov	x1, 1
	add	x0, sp, 128
	mov	x1, x0
	mov	x0, x19
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x19, x0
	add	x0, sp, 64
	mov	x1, 0
	ldrb	w0, [x0]
	mov	w1, w0
	mov	x0, x19
	mov	x19, x0
	add	x0, sp, 32
	add	x1, sp, 160
	mov	x8, x1
	mov	x2, -1
	mov	x1, 1
	add	x0, sp, 160
	mov	x1, x0
	mov	x0, x19
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 160
	add	x0, sp, 128
	add	x0, sp, 32
	add	x0, sp, 64
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 192
	ret
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	str	x19, [sp, 16]
	mov	x19, x8
	str	x0, [sp, 40]
	str	x1, [sp, 32]
	ldr	x1, [sp, 40]
	mov	x0, x19
	ldr	x1, [sp, 32]
	mov	x0, x19
	nop
	mov	x0, x19
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 48
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