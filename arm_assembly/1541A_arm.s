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
	strb	wzr, [sp, 47]
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L3
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L4
	ldrb	w0, [sp, 47]
	eor	w0, w0, 1
	strb	w0, [sp, 47]
	ldr	w0, [sp, 28]
	sub	w0, w0, #2
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L5
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L6
	ldr	w0, [sp, 28]
	sub	w0, w0, #1
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L7
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L6
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	bne	.L8
	ldr	w0, [sp, 40]
	sub	w0, w0, #2
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L6
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L9
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L6
	ldr	w0, [sp, 40]
	sub	w0, w0, #1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L10
	b	.L11
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L12
	ldrb	w0, [sp, 47]
	eor	w0, w0, 1
	strb	w0, [sp, 47]
	ldrb	w0, [sp, 47]
	cmp	w0, 0
	beq	.L13
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	b	.L14
	ldr	w0, [sp, 36]
	sub	w0, w0, #1
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x2
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 28]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L15
	mov	w1, 10
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 32]
	sub	w1, w0, #1
	str	w1, [sp, 32]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L16
	mov	w0, 0
	ldp	x29, x30, [sp], 48
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L20
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L20
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