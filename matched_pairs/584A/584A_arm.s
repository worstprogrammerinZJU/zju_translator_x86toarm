_ZL3INF:
main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
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
	cmp	x0, 1
	bne	.L2
	ldr	x0, [sp, 24]
	cmp	x0, 10
	bne	.L2
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 10
	mov	w0, 0
	b	.L8
	ldr	x0, [sp, 32]
	cmp	x0, 1
	bne	.L4
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	mov	w0, 0
	b	.L8
	ldr	x0, [sp, 24]
	cmp	x0, 10
	bne	.L5
	mov	x0, 1
	str	x0, [sp, 24]
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	str	wzr, [sp, 44]
	b	.L6
	mov	w1, 0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldrsw	x1, [sp, 44]
	ldr	x0, [sp, 32]
	sub	x0, x0, #1
	cmp	x1, x0
	blt	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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