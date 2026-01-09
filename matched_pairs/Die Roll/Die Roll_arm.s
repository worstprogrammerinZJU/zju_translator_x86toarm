	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	w1, [x0]
	ldr	x0, [sp]
	ldr	w0, [x0]
	cmp	w1, w0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 20
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x1, sp, 20
	add	x0, sp, 24
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	mov	w1, 7
	sub	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L5
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L7
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L8
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 4
	bne	.L9
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 5
	bne	.L10
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 6
	bne	.L6
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
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
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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