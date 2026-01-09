main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	str	x19, [sp, 16]
	add	x0, sp, 80
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	b	.L2
	add	x0, sp, 76
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	add	x0, sp, 40
	add	x0, sp, 40
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	str	wzr, [sp, 92]
	ldr	w0, [sp, 76]
	sub	w0, w0, #1
	str	w0, [sp, 88]
	b	.L3
	ldr	w0, [sp, 92]
	add	w0, w0, 1
	str	w0, [sp, 92]
	ldr	w0, [sp, 88]
	sub	w0, w0, #1
	str	w0, [sp, 88]
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 92]
	cmp	w1, w0
	ble	.L4
	ldrsw	x1, [sp, 92]
	add	x0, sp, 40
	ldrb	w19, [x0]
	ldrsw	x1, [sp, 88]
	add	x0, sp, 40
	ldrb	w0, [x0]
	cmp	w19, w0
	beq	.L4
	mov	w0, 1
	b	.L5
	mov	w0, 0
	cmp	w0, 0
	bne	.L6
	ldr	w1, [sp, 88]
	ldr	w0, [sp, 92]
	sub	w0, w1, w0
	add	w0, w0, 1
	str	w0, [sp, 84]
	ldr	w1, [sp, 84]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	add	x0, sp, 40
	ldr	w0, [sp, 80]
	sub	w1, w0, #1
	str	w1, [sp, 80]
	cmp	w0, 0
	cset	w0, ne
	and	w0, w0, 255
	cmp	w0, 0
	bne	.L7
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
	bne	.L11
	ldr	w1, [sp, 24]
	mov	w0, 65535
	cmp	w1, w0
	bne	.L11
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