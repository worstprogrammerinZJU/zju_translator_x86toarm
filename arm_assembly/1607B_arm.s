_ZL3INF:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	b	.L2
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 32]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L3
	ldr	x0, [sp, 24]
	and	x0, x0, 3
	cmp	x0, 0
	bne	.L4
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 3
	and	x1, x1, 3
	csneg	x0, x0, x1, mi
	cmp	x0, 1
	bne	.L6
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 3
	and	x1, x1, 3
	csneg	x0, x0, x1, mi
	cmp	x0, 2
	bne	.L7
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	sub	x1, x1, x0
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 3
	and	x1, x1, 3
	csneg	x0, x0, x1, mi
	cmp	x0, 3
	bne	.L2
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	sub	x0, x0, #2
	sub	x1, x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	ldr	x0, [sp, 24]
	and	x0, x0, 3
	cmp	x0, 0
	bne	.L9
	ldr	x0, [sp, 32]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 3
	and	x1, x1, 3
	csneg	x0, x0, x1, mi
	cmp	x0, 1
	bne	.L10
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	add	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 3
	and	x1, x1, 3
	csneg	x0, x0, x1, mi
	cmp	x0, 2
	bne	.L11
	ldr	x0, [sp, 24]
	sub	x1, x0, #1
	ldr	x0, [sp, 32]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	b	.L2
	ldr	x0, [sp, 24]
	negs	x1, x0
	and	x0, x0, 3
	and	x1, x1, 3
	csneg	x0, x0, x1, mi
	cmp	x0, 3
	bne	.L2
	ldr	x0, [sp, 24]
	sub	x1, x0, #2
	ldr	x0, [sp, 32]
	add	x1, x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	sub	x1, x1, x0
	ldr	x0, [sp, 24]
	sub	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	ldr	x0, [sp, 40]
	sub	x1, x0, #1
	str	x1, [sp, 40]
	cmp	x0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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