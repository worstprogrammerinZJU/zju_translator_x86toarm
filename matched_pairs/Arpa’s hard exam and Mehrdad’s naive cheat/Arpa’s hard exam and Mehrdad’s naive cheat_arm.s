main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L2
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L3
	ldr	w0, [sp, 28]
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bne	.L4
	mov	w1, 6
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L5
	mov	w1, 2
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L6
	mov	w1, 4
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L3
	mov	w1, 8
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 32
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