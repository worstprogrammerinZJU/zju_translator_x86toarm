_ZL3INF:
main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	add	x0, sp, 52
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x0, -1
	str	x0, [sp, 72]
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x0, 1
	str	x0, [sp, 64]
	b	.L3
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	mul	x0, x1, x0
	str	x0, [sp, 56]
	ldr	x1, [sp, 56]
	ldr	x0, [sp, 72]
	cmp	x1, x0
	ble	.L4
	ldr	x0, [sp, 56]
	b	.L5
	ldr	x0, [sp, 72]
	str	x0, [sp, 72]
	ldr	x0, [sp, 24]
	str	x0, [sp, 32]
	ldr	x0, [sp, 64]
	add	x0, x0, 1
	str	x0, [sp, 64]
	ldr	x0, [sp, 40]
	ldr	x1, [sp, 64]
	cmp	x1, x0
	blt	.L6
	ldr	x1, [sp, 72]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	w1, 10
	ldr	w0, [sp, 52]
	sub	w1, w0, #1
	str	w1, [sp, 52]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	mov	w0, 0
	ldp	x29, x30, [sp], 80
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