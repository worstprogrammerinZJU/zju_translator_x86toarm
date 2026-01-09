main:
	stp	x29, x30, [sp, -464]!
	mov	x29, sp
	add	x0, sp, 452
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 460]
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	sxtw	x0, w0
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w2, [sp, 460]
	str	w2, [x1, x0]
	ldr	w0, [sp, 460]
	add	w0, w0, 1
	str	w0, [sp, 460]
	ldr	w0, [sp, 452]
	ldr	w1, [sp, 460]
	cmp	w1, w0
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 456]
	b	.L4
	ldrsw	x0, [sp, 456]
	lsl	x0, x0, 2
	add	x1, sp, 32
	ldr	w0, [x1, x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 456]
	ldr	w0, [sp, 452]
	ldr	w1, [sp, 456]
	cmp	w1, w0
	ble	.L5
	mov	w0, 0
	ldp	x29, x30, [sp], 464
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