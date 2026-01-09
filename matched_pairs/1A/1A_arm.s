_ZL3INF:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x0, [sp, 32]
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	bne	.L2
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	sdiv	x0, x1, x0
	b	.L3
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	sdiv	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 24]
	sdiv	x2, x0, x1
	mul	x1, x2, x1
	sub	x0, x0, x1
	cmp	x0, 0
	bne	.L4
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	sdiv	x0, x1, x0
	b	.L5
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 24]
	sdiv	x0, x1, x0
	add	x0, x0, 1
	str	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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