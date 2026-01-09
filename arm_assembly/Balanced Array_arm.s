main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	str	wzr, [sp, 44]
	str	wzr, [sp, 40]
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 24]
	lsr	w1, w0, 31
	add	w0, w1, w0
	asr	w0, w0, 1
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L3
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w0, 2
	str	w0, [sp, 36]
	b	.L4
	ldr	w1, [sp, 36]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 36]
	add	w0, w1, w0
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	add	w0, w0, 2
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L5
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L6
	ldr	w1, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 40]
	ldr	w0, [sp, 32]
	add	w0, w0, 2
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	sub	w0, w0, #2
	ldr	w1, [sp, 32]
	cmp	w1, w0
	blt	.L7
	ldr	w1, [sp, 44]
	ldr	w0, [sp, 40]
	sub	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	b	.L2
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 28]
	sub	w1, w0, #1
	str	w1, [sp, 28]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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