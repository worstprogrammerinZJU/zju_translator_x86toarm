main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 28
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L3
	ldr	w0, [sp, 32]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L4
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 20]
	b	.L5
	ldr	w0, [sp, 32]
	ldr	w1, [sp, 20]
	sdiv	w2, w0, w1
	mul	w1, w2, w1
	sub	w0, w0, w1
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 20]
	sdiv	w1, w1, w0
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L7
	add	x1, sp, 20
	add	x0, sp, 24
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L6
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 20]
	sdiv	w0, w1, w0
	str	w0, [sp, 40]
	add	x1, sp, 40
	add	x0, sp, 24
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 24]
	ldr	w0, [sp, 20]
	add	w0, w0, 1
	str	w0, [sp, 20]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 20]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	cmp	w1, w0
	ble	.L8
	ldr	w0, [sp, 24]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L12
	ldr	x0, [sp]
	b	.L13
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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