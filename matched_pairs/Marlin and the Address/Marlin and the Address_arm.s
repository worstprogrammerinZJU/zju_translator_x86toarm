main:
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	add	x0, sp, 28
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	ldr	w0, [sp, 28]
	cmp	w0, 0
	ble	.L2
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 28]
	cmp	w0, 100
	bne	.L3
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 90
	bne	.L5
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 80
	bne	.L6
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 70
	bne	.L7
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 60
	bne	.L8
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 50
	bne	.L9
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 40
	bne	.L10
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 30
	bne	.L11
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 20
	bne	.L12
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 10
	bne	.L4
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 0
	bge	.L13
	adrp	x0, .LC11
	add	x1, x0, :lo12:.LC11
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 28]
	neg	w0, w0
	str	w0, [sp, 28]
	ldr	w0, [sp, 28]
	cmp	w0, 100
	bne	.L14
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 90
	bne	.L15
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 80
	bne	.L16
	adrp	x0, .LC3
	add	x1, x0, :lo12:.LC3
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 70
	bne	.L17
	adrp	x0, .LC4
	add	x1, x0, :lo12:.LC4
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 60
	bne	.L18
	adrp	x0, .LC5
	add	x1, x0, :lo12:.LC5
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 50
	bne	.L19
	adrp	x0, .LC6
	add	x1, x0, :lo12:.LC6
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 40
	bne	.L20
	adrp	x0, .LC7
	add	x1, x0, :lo12:.LC7
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 30
	bne	.L21
	adrp	x0, .LC8
	add	x1, x0, :lo12:.LC8
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 20
	bne	.L22
	adrp	x0, .LC9
	add	x1, x0, :lo12:.LC9
	adrp	x0, :got:_ZSt4cout
	b	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 10
	bne	.L4
	adrp	x0, .LC10
	add	x1, x0, :lo12:.LC10
	adrp	x0, :got:_ZSt4cout
	b	.L4
	adrp	x0, .LC12
	add	x1, x0, :lo12:.LC12
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
	bne	.L26
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L26
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