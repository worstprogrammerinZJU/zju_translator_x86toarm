	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	ldr	x1, [x0]
	ldr	x0, [sp, 8]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L2
	ldr	x0, [sp]
	b	.L3
	ldr	x0, [sp, 8]
	add	sp, sp, 16
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	str	xzr, [sp, 32]
	str	xzr, [sp, 24]
	str	xzr, [sp, 16]
	str	xzr, [sp, 56]
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	add	x1, sp, 24
	add	x0, sp, 32
	bl	_ZSt3minIxERKT_S2_S2_
	mov	x2, x0
	add	x0, sp, 16
	mov	x1, x0
	mov	x0, x2
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 48]
	sub	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 48]
	sub	x0, x1, x0
	str	x0, [sp, 24]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 48]
	sub	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x0, [sp, 32]
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 40]
	add	x1, sp, 16
	add	x0, sp, 40
	bl	_ZSt3minIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 48]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	add	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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