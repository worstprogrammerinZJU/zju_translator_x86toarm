main:
	stp	x29, x30, [sp, -80]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 32
	add	x0, sp, 68
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 1
	str	w0, [sp, 76]
	b	.L3
	add	x0, sp, 32
	mov	x1, 1
	ldrb	w0, [x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 76]
	cmp	w1, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L4
	add	x0, sp, 32
	mov	x1, 0
	ldrb	w0, [x0]
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	ldr	w1, [sp, 76]
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldr	w0, [sp, 76]
	cmp	w0, 8
	ble	.L5
	mov	w0, 97
	str	w0, [sp, 72]
	b	.L6
	ldr	w0, [sp, 72]
	and	w19, w0, 255
	add	x0, sp, 32
	mov	x1, 0
	ldrb	w0, [x0]
	cmp	w19, w0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L7
	ldr	w0, [sp, 72]
	and	w0, w0, 255
	mov	w1, w0
	adrp	x0, :got:_ZSt4cout
	mov	x19, x0
	add	x0, sp, 32
	mov	x1, 1
	ldrb	w0, [x0]
	mov	w1, w0
	mov	x0, x19
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 72]
	add	w0, w0, 1
	str	w0, [sp, 72]
	ldr	w0, [sp, 72]
	cmp	w0, 104
	ble	.L8
	ldr	w0, [sp, 68]
	sub	w1, w0, #1
	str	w1, [sp, 68]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L9
	add	x0, sp, 32
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 80
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