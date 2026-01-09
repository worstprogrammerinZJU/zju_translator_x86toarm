main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 24
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	xzr, [sp, 56]
	b	.L2
	add	x4, sp, 24
	adrp	x0, .LC0
	add	x3, x0, :lo12:.LC0
	mov	x2, 5
	ldr	x1, [sp, 56]
	mov	x0, x4
	add	x3, sp, 24
	ldr	x2, [sp, 56]
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x3
	str	x0, [sp, 56]
	ldr	x0, [sp, 56]
	cmn	x0, #1
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 24
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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