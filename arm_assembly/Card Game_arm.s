main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	str	wzr, [sp, 44]
	add	x0, sp, 36
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 32
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 28
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L3
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bgt	.L4
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L5
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bgt	.L4
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	ble	.L6
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L6
	mov	w0, 1
	b	.L7
	mov	w0, 0
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L8
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L9
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	blt	.L10
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bgt	.L9
	ldr	w1, [sp, 36]
	ldr	w0, [sp, 24]
	cmp	w1, w0
	ble	.L11
	ldr	w1, [sp, 32]
	ldr	w0, [sp, 28]
	cmp	w1, w0
	blt	.L11
	mov	w0, 1
	b	.L12
	mov	w0, 0
	mov	w1, w0
	ldr	w0, [sp, 44]
	add	w0, w0, w1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	lsl	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 40]
	sub	w1, w0, #1
	str	w1, [sp, 40]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L13
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L17
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L17
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