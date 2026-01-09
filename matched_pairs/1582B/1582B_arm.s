_ZL3INF:
_Z4powdxx:
	sub	sp, sp, #32
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp]
	cmp	x0, 0
	bne	.L2
	mov	x0, 1
	b	.L3
	mov	x0, 1
	str	x0, [sp, 24]
	b	.L4
	ldr	x0, [sp, 8]
	lsl	x0, x0, 1
	str	x0, [sp, 8]
	ldr	x0, [sp, 24]
	add	x0, x0, 1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp]
	cmp	x1, x0
	blt	.L5
	ldr	x0, [sp, 8]
	add	sp, sp, 32
	ret
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L7
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	str	xzr, [sp, 56]
	str	xzr, [sp, 48]
	str	xzr, [sp, 40]
	b	.L8
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x0, [sp, 16]
	cmp	x0, 1
	bne	.L9
	ldr	x0, [sp, 56]
	add	x0, x0, 1
	str	x0, [sp, 56]
	b	.L10
	ldr	x0, [sp, 16]
	cmp	x0, 0
	bne	.L10
	ldr	x0, [sp, 48]
	add	x0, x0, 1
	str	x0, [sp, 48]
	nop
	ldr	x0, [sp, 40]
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x0, [sp, 24]
	ldr	x1, [sp, 40]
	cmp	x1, x0
	blt	.L11
	ldr	x1, [sp, 48]
	mov	x0, 2
	bl	_Z4powdxx
	mov	x1, x0
	ldr	x0, [sp, 56]
	mul	x0, x1, x0
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	ldr	w0, [sp, 36]
	sub	w1, w0, #1
	str	w1, [sp, 36]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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