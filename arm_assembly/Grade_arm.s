main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	cmp	w0, 94
	ble	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 94
	bgt	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 84
	ble	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 84
	bgt	.L5
	ldr	w0, [sp, 28]
	cmp	w0, 79
	ble	.L5
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 79
	bgt	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 74
	ble	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 74
	bgt	.L7
	ldr	w0, [sp, 28]
	cmp	w0, 69
	ble	.L7
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 69
	bgt	.L8
	ldr	w0, [sp, 28]
	cmp	w0, 64
	ble	.L8
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 64
	bgt	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 59
	ble	.L9
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 59
	bgt	.L10
	ldr	w0, [sp, 28]
	cmp	w0, 44
	ble	.L10
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, :got:_ZSt4cout
	b	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 44
	bgt	.L3
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, :got:_ZSt4cout
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L14
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L14
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