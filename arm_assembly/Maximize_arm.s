main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 2
	str	w0, [sp, 36]
	b	.L3
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	bl	_ZSt5__gcdIiET_S0_S0_
	mov	w1, w0
	ldr	w0, [sp, 36]
	add	w0, w0, w1
	str	w0, [sp, 32]
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 44]
	cmp	w1, w0
	ble	.L4
	ldr	w0, [sp, 32]
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	str	w0, [sp, 40]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L5
	ldr	w1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #32
	str	w0, [sp, 12]
	str	w1, [sp, 8]
	b	.L9
	ldr	w0, [sp, 12]
	ldr	w1, [sp, 8]
	sdiv	w2, w0, w1
	ldr	w1, [sp, 8]
	mul	w1, w2, w1
	sub	w0, w0, w1
	str	w0, [sp, 28]
	ldr	w0, [sp, 8]
	str	w0, [sp, 12]
	ldr	w0, [sp, 28]
	str	w0, [sp, 8]
	ldr	w0, [sp, 8]
	cmp	w0, 0
	bne	.L10
	ldr	w0, [sp, 12]
	add	sp, sp, 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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