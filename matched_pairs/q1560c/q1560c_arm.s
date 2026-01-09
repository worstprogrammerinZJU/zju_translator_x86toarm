main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L2
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 24]
	bl	floor
	fcvtzs	w0, d0
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	bl	ceil
	fcvtzs	w0, d0
	str	w0, [sp, 40]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 32]
	mul	w0, w0, w0
	sub	w0, w1, w0
	str	w0, [sp, 36]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	cmp	w1, w0
	bne	.L3
	ldr	w1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w1, 1
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L4
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	cmp	w1, w0
	bne	.L5
	ldr	w1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 40]
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L4
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	cmp	w0, 0
	bge	.L6
	ldr	w0, [sp, 36]
	cmp	w0, 0
	bne	.L7
	mov	w0, 1
	str	w0, [sp, 36]
	ldr	w1, [sp, 36]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 40]
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L4
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	cmp	w0, 0
	bge	.L4
	ldr	w0, [sp, 40]
	cmp	w0, 0
	bne	.L8
	mov	w0, 1
	str	w0, [sp, 40]
	ldr	w1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w0, [sp, 40]
	lsl	w1, w0, 1
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	ble	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	scvtf	d0, w0
	bl	sqrt
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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