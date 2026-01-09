main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERd
	ldr	d1, [sp, 32]
	ldr	d0, [sp, 24]
	fmul	d1, d1, d0
	ldr	d0, [sp, 16]
	fdiv	d0, d1, d0
	str	d0, [sp, 56]
	ldr	d0, [sp, 56]
	fcvtzs	d0, d0
	str	d0, [sp, 48]
	ldr	d0, [sp, 48]
	scvtf	d0, d0
	ldr	d1, [sp, 56]
	fsub	d0, d1, d0
	str	d0, [sp, 40]
	ldr	d0, [sp, 40]
	fcmp	d0, #0.0
	beq	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	x1, [sp, 48]
	mov	w0, 2147483649
	cmp	x1, x0
	ble	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L3
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
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