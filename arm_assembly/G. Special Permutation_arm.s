main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	mov	w0, 0
	mov	x1, 0
	adrp	x0, :got:_ZSt3cin
	add	x0, x0, 16
	mov	x1, 0
	adrp	x0, :got:_ZSt4cout
	add	x0, x0, 8
	add	x0, sp, 20
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 16
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 16]
	cmp	w0, 2
	beq	.L3
	ldr	w0, [sp, 16]
	cmp	w0, 3
	bne	.L4
	mov	w1, -1
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	b	.L5
	ldr	w0, [sp, 16]
	str	w0, [sp, 28]
	b	.L6
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L7
	ldr	w1, [sp, 28]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 32
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bgt	.L8
	mov	w1, 4
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 32
	mov	w1, 2
	bl	_ZNSolsEi
	mov	w1, 32
	mov	w0, 6
	str	w0, [sp, 24]
	b	.L9
	ldr	w1, [sp, 24]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w1, 32
	ldr	w0, [sp, 24]
	add	w0, w0, 2
	str	w0, [sp, 24]
	ldr	w0, [sp, 16]
	ldr	w1, [sp, 24]
	cmp	w1, w0
	ble	.L10
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 20]
	sub	w1, w0, #1
	str	w1, [sp, 20]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L11
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