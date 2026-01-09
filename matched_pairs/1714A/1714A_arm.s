_ZL3INF:
main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 44
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	w0, 24
	str	w0, [sp, 52]
	mov	w0, 60
	str	w0, [sp, 48]
	b	.L3
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 36]
	sub	w0, w1, w0
	str	w0, [sp, 60]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 32]
	sub	w0, w1, w0
	str	w0, [sp, 56]
	ldr	w0, [sp, 56]
	cmp	w0, 0
	bge	.L4
	ldr	w0, [sp, 56]
	add	w0, w0, 60
	str	w0, [sp, 56]
	ldr	w0, [sp, 60]
	sub	w0, w0, #1
	str	w0, [sp, 60]
	ldr	w0, [sp, 60]
	cmp	w0, 0
	bge	.L5
	ldr	w0, [sp, 60]
	add	w0, w0, 24
	str	w0, [sp, 60]
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bge	.L6
	ldr	w0, [sp, 60]
	str	w0, [sp, 52]
	ldr	w0, [sp, 56]
	str	w0, [sp, 48]
	b	.L3
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 52]
	cmp	w1, w0
	bne	.L3
	ldr	w1, [sp, 56]
	ldr	w0, [sp, 48]
	cmp	w1, w0
	bge	.L3
	ldr	w0, [sp, 56]
	str	w0, [sp, 48]
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	str	w1, [sp, 40]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldr	w1, [sp, 52]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 48]
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	w0, [sp, 44]
	sub	w1, w0, #1
	str	w1, [sp, 44]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L8
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L12
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L12
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