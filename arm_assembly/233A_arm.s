_ZL3INF:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 24]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L2
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L3
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	mov	x2, x0
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w1, [sp, 28]
	bl	_ZNSolsEi
	ldr	w0, [sp, 28]
	add	w0, w0, 2
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	blt	.L5
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
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