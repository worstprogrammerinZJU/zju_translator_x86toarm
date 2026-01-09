main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L2
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 16]
	sub	x0, x0, #1
	str	x0, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	sdiv	x0, x1, x0
	str	x0, [sp, 64]
	ldr	x0, [sp, 16]
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 56]
	mul	x1, x1, x0
	ldr	x0, [sp, 64]
	add	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 48]
	ldr	x1, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 44]
	ldr	w1, [sp, 76]
	cmp	w1, w0
	ble	.L3
	mov	w0, 0
	ldp	x29, x30, [sp], 80
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