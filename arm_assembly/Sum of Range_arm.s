main:
	stp	x29, x30, [sp, -96]!
	mov	x29, sp
	add	x0, sp, 32
	mov	x1, x0
	adrp	x0, :got:_ZSt3cin
	bl	_ZNSirsERx
	mov	x2, x0
	add	x0, sp, 24
	mov	x1, x0
	mov	x0, x2
	bl	_ZNSirsERx
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	cmp	x1, x0
	ble	.L2
	ldr	x0, [sp, 24]
	str	x0, [sp, 72]
	ldr	x0, [sp, 32]
	str	x0, [sp, 24]
	ldr	x0, [sp, 72]
	str	x0, [sp, 32]
	str	xzr, [sp, 64]
	str	xzr, [sp, 56]
	str	xzr, [sp, 48]
	str	xzr, [sp, 40]
	str	xzr, [sp, 88]
	str	xzr, [sp, 80]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	add	x1, x0, 1
	ldr	x2, [sp, 32]
	ldr	x0, [sp, 24]
	add	x0, x2, x0
	mul	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 64]
	ldr	x0, [sp, 32]
	str	x0, [sp, 88]
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	ldr	x0, [sp, 32]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L3
	ldr	x0, [sp, 32]
	str	x0, [sp, 88]
	ldr	x0, [sp, 88]
	add	x0, x0, 1
	str	x0, [sp, 88]
	ldr	x0, [sp, 24]
	and	x0, x0, 1
	cmp	x0, 0
	beq	.L4
	ldr	x0, [sp, 24]
	str	x0, [sp, 80]
	ldr	x0, [sp, 80]
	sub	x0, x0, #1
	str	x0, [sp, 80]
	ldr	x1, [sp, 80]
	ldr	x0, [sp, 88]
	sub	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	add	x1, x0, 1
	ldr	x2, [sp, 88]
	ldr	x0, [sp, 80]
	add	x0, x2, x0
	mul	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 56]
	ldr	x0, [sp, 32]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L5
	ldr	x0, [sp, 32]
	add	x0, x0, 1
	str	x0, [sp, 32]
	ldr	x0, [sp, 24]
	and	x0, x0, 1
	cmp	x0, 0
	bne	.L6
	ldr	x0, [sp, 24]
	sub	x0, x0, #1
	str	x0, [sp, 24]
	ldr	x1, [sp, 24]
	ldr	x0, [sp, 32]
	sub	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	add	x0, x0, 1
	str	x0, [sp, 40]
	ldr	x1, [sp, 32]
	ldr	x0, [sp, 24]
	add	x1, x1, x0
	ldr	x0, [sp, 40]
	mul	x0, x1, x0
	lsr	x1, x0, 63
	add	x0, x1, x0
	asr	x0, x0, 1
	str	x0, [sp, 48]
	ldr	x1, [sp, 64]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	x1, [sp, 56]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	ldr	x1, [sp, 48]
	adrp	x0, :got:_ZSt4cout
	bl	_ZNSolsEx
	mov	x2, x0
	mov	x0, x2
	bl	_ZNSolsEPFRSoS_E
	mov	w0, 0
	ldp	x29, x30, [sp], 96
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