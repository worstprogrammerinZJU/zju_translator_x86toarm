main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 24
	add	x0, sp, 60
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	mov	x2, x0
	add	x0, sp, 56
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	add	x2, sp, 24
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L2
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	ble	.L3
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L4
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L4
	add	x2, sp, 24
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bge	.L6
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L4
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L4
	add	x2, sp, 24
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	mov	x0, x2
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	beq	.L7
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w1, [sp, 60]
	ldr	w0, [sp, 56]
	cmp	w1, w0
	bne	.L4
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 24
	mov	w0, 0
	ldp	x29, x30, [sp], 64
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	x0, [sp, 24]
	str	x1, [sp, 16]
	ldr	x1, [sp, 16]
	ldr	x0, [sp, 24]
	cmp	w0, 0
	cset	w0, eq
	and	w0, w0, 255
	ldp	x29, x30, [sp], 32
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L13
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L13
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