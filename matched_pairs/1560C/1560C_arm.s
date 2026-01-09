_ZL3INF:
main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 28]
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	ldr	w0, [sp, 28]
	mul	w0, w2, w0
	add	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L3
	mov	w0, 1
	b	.L4
	mov	w0, -1
	ldr	w1, [sp, 24]
	mul	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L12
	b	.L7
	nop
	ldr	w1, [sp, 16]
	ldr	w0, [sp, 28]
	sub	w2, w0, #1
	ldr	w0, [sp, 28]
	mul	w0, w2, w0
	add	w0, w0, 1
	sub	w0, w1, w0
	str	w0, [sp, 24]
	ldr	w0, [sp, 24]
	cmp	w0, 0
	ble	.L8
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	x2, x0
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	sub	w0, w1, w0
	mov	w1, w0
	mov	x0, x2
	bl	_ZNSolsEi
	mov	w1, 10
	b	.L2
	ldr	w1, [sp, 28]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 28]
	bl	_ZNSolsEi
	mov	w1, 10
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	str	w1, [sp, 20]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L15
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L15
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