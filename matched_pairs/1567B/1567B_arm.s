_ZL3INF:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 28
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w0, [sp, 32]
	sub	w0, w0, #1
	str	w0, [sp, 40]
	ldr	w0, [sp, 40]
	and	w0, w0, 3
	cmp	w0, 0
	bne	.L3
	ldr	w0, [sp, 40]
	str	w0, [sp, 44]
	b	.L4
	ldr	w0, [sp, 40]
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	cmp	w0, 1
	bne	.L5
	mov	w0, 1
	str	w0, [sp, 44]
	b	.L4
	ldr	w0, [sp, 40]
	negs	w1, w0
	and	w0, w0, 3
	and	w1, w1, 3
	csneg	w0, w0, w1, mi
	cmp	w0, 2
	bne	.L6
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 44]
	b	.L4
	str	wzr, [sp, 44]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 44]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 32]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 44]
	eor	w1, w1, w0
	ldr	w0, [sp, 32]
	cmp	w1, w0
	beq	.L9
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L2
	ldr	w0, [sp, 32]
	add	w0, w0, 2
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L10
	mov	w0, 0
	ldp	x29, x30, [sp], 48
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