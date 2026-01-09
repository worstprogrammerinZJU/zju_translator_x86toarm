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
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 36
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w1, w1, w0
	ldr	w0, [sp, 32]
	add	w0, w1, w0
	str	w0, [sp, 28]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	mul	w1, w1, w0
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 32]
	add	w1, w1, w0
	ldr	w0, [sp, 40]
	mul	w0, w1, w0
	str	w0, [sp, 20]
	ldr	w1, [sp, 40]
	ldr	w0, [sp, 36]
	add	w1, w1, w0
	ldr	w0, [sp, 32]
	mul	w0, w1, w0
	str	w0, [sp, 16]
	add	x1, sp, 16
	add	x0, sp, 20
	bl	_ZSt3maxIiERKT_S2_S2_
	mov	x1, x0
	add	x0, sp, 24
	bl	_ZSt3maxIiERKT_S2_S2_
	mov	x1, x0
	add	x0, sp, 28
	bl	_ZSt3maxIiERKT_S2_S2_
	ldr	w0, [x0]
	str	w0, [sp, 44]
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L8
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L8
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