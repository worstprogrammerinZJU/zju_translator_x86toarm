main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 16]
	bl	_ZSt5__gcdIxET_S0_S0_
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 16]
	mul	x1, x1, x0
	ldr	x0, [sp, 40]
	sdiv	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	b	.L4
	ldr	x0, [sp, 8]
	ldr	x1, [sp]
	sdiv	x2, x0, x1
	ldr	x1, [sp]
	mul	x1, x2, x1
	sub	x0, x0, x1
	str	x0, [sp, 24]
	ldr	x0, [sp]
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	str	x0, [sp]
	ldr	x0, [sp]
	cmp	x0, 0
	bne	.L5
	ldr	x0, [sp, 8]
	add	sp, sp, 32
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