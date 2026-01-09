main:
	stp	x29, x30, [sp, -464]!
	mov	x29, sp
	str	wzr, [sp, 460]
	str	wzr, [sp, 456]
	str	wzr, [sp, 452]
	str	wzr, [sp, 448]
	add	x0, sp, 436
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	w0, 1
	str	w0, [sp, 444]
	b	.L2
	add	x1, sp, 16
	ldrsw	x0, [sp, 444]
	lsl	x0, x0, 2
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 444]
	add	w0, w0, 1
	str	w0, [sp, 444]
	ldr	w0, [sp, 436]
	ldr	w1, [sp, 444]
	cmp	w1, w0
	ble	.L3
	mov	w0, 1
	str	w0, [sp, 440]
	b	.L4
	ldrsw	x0, [sp, 440]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L5
	ldr	w0, [sp, 456]
	add	w0, w0, 1
	str	w0, [sp, 456]
	ldr	w0, [sp, 440]
	str	w0, [sp, 448]
	b	.L6
	ldr	w0, [sp, 460]
	add	w0, w0, 1
	str	w0, [sp, 460]
	ldr	w0, [sp, 440]
	str	w0, [sp, 452]
	ldr	w0, [sp, 440]
	add	w0, w0, 1
	str	w0, [sp, 440]
	ldr	w0, [sp, 436]
	ldr	w1, [sp, 440]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 456]
	cmp	w0, 1
	bne	.L8
	ldr	w1, [sp, 448]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L9
	ldr	w1, [sp, 452]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 464
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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