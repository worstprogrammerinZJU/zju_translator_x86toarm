main:
	stp	x29, x30, [sp, -48]!
	mov	x29, sp
	add	x0, sp, 24
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERi
	str	wzr, [sp, 44]
	mov	w0, 1
	str	w0, [sp, 40]
	b	.L2
	mov	w0, 1
	str	w0, [sp, 36]
	b	.L3
	ldr	w0, [sp, 40]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L4
	ldr	w0, [sp, 36]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L5
	ldr	w0, [sp, 40]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 36]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L6
	ldr	w0, [sp, 44]
	add	w0, w0, 1
	str	w0, [sp, 44]
	ldr	w0, [sp, 36]
	add	w0, w0, 1
	str	w0, [sp, 36]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 36]
	cmp	w1, w0
	ble	.L7
	ldr	w0, [sp, 40]
	add	w0, w0, 1
	str	w0, [sp, 40]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 40]
	cmp	w1, w0
	ble	.L8
	ldr	w1, [sp, 44]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEi
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 1
	str	w0, [sp, 32]
	b	.L9
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L10
	ldr	w0, [sp, 32]
	and	w0, w0, 1
	cmp	w0, 0
	bne	.L11
	ldr	w0, [sp, 28]
	and	w0, w0, 1
	cmp	w0, 0
	beq	.L12
	ldr	w0, [sp, 32]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L13
	ldr	w0, [sp, 28]
	cmp	w0, 0
	and	w0, w0, 1
	csneg	w0, w0, w0, ge
	cmp	w0, 1
	bne	.L13
	mov	w1, 67
	adrp	x0, :got:_ZSt4cout
	b	.L14
	mov	w1, 46
	adrp	x0, :got:_ZSt4cout
	ldr	w0, [sp, 28]
	add	w0, w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 28]
	cmp	w1, w0
	ble	.L15
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEPFRSoS_E
	ldr	w0, [sp, 32]
	add	w0, w0, 1
	str	w0, [sp, 32]
	ldr	w0, [sp, 24]
	ldr	w1, [sp, 32]
	cmp	w1, w0
	ble	.L16
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