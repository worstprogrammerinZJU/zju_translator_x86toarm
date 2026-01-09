main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	mov	x0, 2
	str	x0, [sp, 56]
	mov	x0, 1
	str	x0, [sp, 48]
	str	xzr, [sp, 32]
	str	xzr, [sp, 40]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	b	.L2
	ldr	x0, [sp, 56]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L3
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 56]
	add	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x0, [sp, 56]
	str	x0, [sp, 48]
	ldr	x0, [sp, 32]
	str	x0, [sp, 56]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 56]
	cmp	x1, x0
	ble	.L4
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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