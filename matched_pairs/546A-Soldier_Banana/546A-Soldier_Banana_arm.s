main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	xzr, [sp, 56]
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 52]
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 52]
	mul	w0, w1, w0
	sxtw	x0, w0
	ldr	x1, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	w0, [sp, 52]
	add	w0, w0, 1
	str	w0, [sp, 52]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 52]
	cmp	w1, w0
	ble	.L3
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	ble	.L4
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 56]
	sub	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	b	.L5
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L9
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L9
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