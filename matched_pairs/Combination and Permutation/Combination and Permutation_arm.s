main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x0, 1
	str	x0, [sp, 72]
	mov	x0, 1
	str	x0, [sp, 64]
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 64]
	mul	x0, x1, x0
	str	x0, [sp, 64]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bgt	.L3
	ldrsw	x0, [sp, 44]
	ldr	x1, [sp, 72]
	mul	x0, x1, x0
	str	x0, [sp, 72]
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 20]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L4
	ldr	x0, [sp, 72]
	str	x0, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 48]
	mov	w0, 2
	str	w0, [sp, 40]
	b	.L5
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 56]
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldrsw	x0, [sp, 40]
	ldr	x1, [sp, 48]
	mul	x0, x1, x0
	str	x0, [sp, 48]
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 16]
	sub	w0, w1, w0
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L6
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 56]
	sdiv	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 48]
	sdiv	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	x1, [sp, 24]
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 80
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L10
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L10
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