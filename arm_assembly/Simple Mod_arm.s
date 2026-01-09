main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	str	xzr, [sp, 40]
	b	.L2
	str	xzr, [sp, 32]
	b	.L3
	ldr	x0, [sp, 40]
	mul	x1, x0, x0
	ldr	x0, [sp, 32]
	mul	x0, x0, x0
	add	x0, x1, x0
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	bne	.L4
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	x1, [sp, 32]
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	b	.L5
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	d0, [sp, 32]
	scvtf	d0, d0
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fcmpe	d0, d1
	bls	.L6
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	d0, [sp, 40]
	scvtf	d0, d0
	adrp	x0, .LC2
	ldr	d1, [x0, #:lo12:.LC2]
	fcmpe	d0, d1
	bls	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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