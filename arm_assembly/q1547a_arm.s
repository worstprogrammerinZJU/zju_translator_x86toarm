main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 48
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	bne	.L3
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bne	.L3
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L4
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	blt	.L5
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bge	.L6
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bge	.L6
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	bl	abs
	add	w0, w0, 2
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	nop
	b	.L8
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	bl	abs
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L8
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L9
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bne	.L9
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bge	.L10
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	blt	.L11
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bge	.L12
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bge	.L12
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	bl	abs
	add	w0, w0, 2
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	nop
	b	.L8
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	bl	abs
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L8
	ldr	w1, [sp, 52]
	ldr	w0, [sp, 44]
	sub	w0, w1, w0
	bl	abs
	mov	w19, w0
	ldr	w1, [sp, 48]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	bl	abs
	add	w0, w19, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 56]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L14
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
	bne	.L18
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L18
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