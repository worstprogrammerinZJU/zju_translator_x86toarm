main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	str	wzr, [sp, 92]
	add	x0, sp, 72
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	mov	x2, x0
	add	x0, sp, 68
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 32
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	mov	w0, 1
	strb	w0, [sp, 91]
	str	wzr, [sp, 84]
	b	.L3
	strb	wzr, [sp, 83]
	str	wzr, [sp, 76]
	b	.L4
	ldrsw	x1, [sp, 76]
	add	x0, sp, 32
	ldrb	w0, [x0]
	sub	w0, w0, #48
	ldr	w1, [sp, 84]
	cmp	w1, w0
	cset	w0, eq
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L5
	mov	w0, 1
	strb	w0, [sp, 83]
	b	.L6
	ldr	w0, [sp, 76]
	add	w0, w0, 1
	str	w0, [sp, 76]
	ldrsw	x19, [sp, 76]
	add	x0, sp, 32
	cmp	x19, x0
	cset	w0, cc
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
	ldrb	w0, [sp, 83]
	eor	w0, w0, 1
	and	w0, w0, 255
	cmp	w0, 0
	beq	.L8
	strb	wzr, [sp, 91]
	b	.L9
	ldr	w0, [sp, 84]
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w0, [sp, 68]
	ldr	w1, [sp, 84]
	cmp	w1, w0
	ble	.L10
	ldrb	w0, [sp, 91]
	cmp	w0, 0
	beq	.L11
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	add	x0, sp, 32
	ldr	w0, [sp, 72]
	sub	w1, w0, #1
	str	w1, [sp, 72]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L12
	ldr	w1, [sp, 92]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	w0, 0
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 96
	ret
	stp	x29, x30, [sp, -32]!
	mov	x29, sp
	str	w0, [sp, 28]
	str	w1, [sp, 24]
	ldr	w0, [sp, 28]
	cmp	w0, 1
	bne	.L16
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L16
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