main:
	stp	x29, x30, [sp, -128]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 80
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 72
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 64
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	str	x0, [sp, 40]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 48]
	mul	x1, x1, x0
	ldr	x0, [sp, 40]
	add	x0, x1, x0
	str	x0, [sp, 32]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	mul	x1, x1, x0
	ldr	x0, [sp, 32]
	add	x0, x1, x0
	str	x0, [sp, 24]
	mov	w0, 1
	str	w0, [sp, 124]
	b	.L2
	add	x0, sp, 48
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x1, [sp, 72]
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	str	x0, [sp, 16]
	ldr	x1, [sp, 64]
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	str	x0, [sp, 112]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 48]
	mul	x0, x1, x0
	str	x0, [sp, 104]
	add	x1, sp, 16
	add	x0, sp, 40
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 40]
	ldr	x1, [sp, 40]
	ldr	x0, [sp, 112]
	add	x0, x1, x0
	str	x0, [sp, 88]
	add	x1, sp, 88
	add	x0, sp, 32
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 32]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 104]
	add	x0, x1, x0
	str	x0, [sp, 96]
	add	x1, sp, 96
	add	x0, sp, 24
	bl	_ZSt3maxIxERKT_S2_S2_
	ldr	x0, [x0]
	str	x0, [sp, 24]
	ldr	w0, [sp, 124]
	add	w0, w0, 1
	str	w0, [sp, 124]
	ldrsw	x1, [sp, 124]
	ldr	x0, [sp, 80]
	cmp	x1, x0
	blt	.L3
	ldr	x0, [sp, 24]
	mov	x1, x0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w0, 0
	ldp	x29, x30, [sp], 128
	ret
	sub	sp, sp, #16
	str	x0, [sp, 8]
	str	x1, [sp]
	ldr	x0, [sp, 8]
	ldr	x1, [x0]
	ldr	x0, [sp]
	ldr	x0, [x0]
	cmp	x1, x0
	bge	.L6
	ldr	x0, [sp]
	b	.L7
	ldr	x0, [sp, 8]
	add	sp, sp, 16
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