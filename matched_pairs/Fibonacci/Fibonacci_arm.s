main:
	stp	x29, x30, [sp, -464]!
	mov	x29, sp
	add	x0, sp, 456
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	xzr, [sp, 24]
	mov	x0, 1
	str	x0, [sp, 32]
	mov	w0, 3
	str	w0, [sp, 460]
	b	.L2
	ldr	w0, [sp, 460]
	sub	w0, w0, #1
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 16
	ldr	x1, [x1, x0]
	ldr	w0, [sp, 460]
	sub	w0, w0, #2
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x2, sp, 16
	ldr	x0, [x2, x0]
	add	x2, x1, x0
	ldrsw	x0, [sp, 460]
	lsl	x0, x0, 3
	add	x1, sp, 16
	str	x2, [x1, x0]
	ldr	w0, [sp, 460]
	add	w0, w0, 1
	str	w0, [sp, 460]
	ldr	w0, [sp, 456]
	ldr	w1, [sp, 460]
	cmp	w1, w0
	ble	.L3
	ldr	w0, [sp, 456]
	sxtw	x0, w0
	lsl	x0, x0, 3
	add	x1, sp, 16
	ldr	x0, [x1, x0]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp], 464
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