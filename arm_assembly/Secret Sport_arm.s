main:
	stp	x29, x30, [sp, -64]!
	mov	x29, sp
	add	x0, sp, 60
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 56
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 24
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	add	x0, sp, 24
	sub	x1, x0, #1
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 65
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L3
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	adrp	x0, :got:_ZSt4cout
	b	.L4
	add	x0, sp, 24
	sub	x1, x0, #1
	add	x0, sp, 24
	ldrb	w0, [x0]
	cmp	w0, 66
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	adrp	x0, .LC1
	add	x1, x0, :lo12:.LC1
	adrp	x0, :got:_ZSt4cout
	b	.L4
	adrp	x0, .LC2
	add	x1, x0, :lo12:.LC2
	adrp	x0, :got:_ZSt4cout
	add	x0, sp, 24
	ldr	w0, [sp, 60]
	sub	w1, w0, #1
	str	w1, [sp, 60]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L6
	mov	w0, 0
	ldp	x29, x30, [sp], 64
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