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
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L3
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L4
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L5
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 40]
	add	w1, w0, 1
	ldr	w0, [sp, 28]
	cmp	w1, w0
	bge	.L7
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bgt	.L23
	ldr	w0, [sp, 40]
	cmp	w0, 2
	ble	.L8
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 40]
	cmp	w0, 2
	ble	.L9
	ldr	w0, [sp, 36]
	cmp	w0, 1
	bgt	.L23
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L10
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 36]
	add	w1, w0, 1
	ldr	w0, [sp, 24]
	cmp	w1, w0
	bge	.L11
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bgt	.L23
	ldr	w0, [sp, 36]
	cmp	w0, 2
	ble	.L12
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	blt	.L23
	ldr	w0, [sp, 36]
	cmp	w0, 2
	ble	.L13
	ldr	w0, [sp, 40]
	cmp	w0, 1
	bgt	.L23
	ldr	w1, [sp, 40]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w1, [sp, 36]
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	mov	w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L24
	b	.L14
	nop
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L16
	b	.L15
	nop
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L25
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L19
	b	.L18
	nop
	ldr	w0, [sp, 44]
	cmp	w0, 0
	bne	.L2
	mov	w1, 1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	mov	w1, 1
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	mov	x0, x2
	ldr	w0, [sp, 32]
	sub	w1, w0, #1
	str	w1, [sp, 32]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L21
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L28
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L28
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