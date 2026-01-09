main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 60]
	b	.L2
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 40
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 28
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	str	wzr, [sp, 56]
	str	wzr, [sp, 52]
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	cmp	w0, 0
	bge	.L3
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	bl	abs
	str	w0, [sp, 56]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	cmp	w0, 0
	bge	.L4
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 28]
	sub	w0, w1, w0
	bl	abs
	str	w0, [sp, 52]
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 52]
	add	w1, w1, w0
	ldr	w0, [sp, 36]
	cmp	w1, w0
	bgt	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L6
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 60]
	add	w0, w0, 1
	str	w0, [sp, 60]
	ldr	w0, [sp, 48]
	ldr	w1, [sp, 60]
	cmp	w1, w0
	ble	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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